#include <sstream>
#include <iostream>
#include <opencv.hpp>
#include <highgui/highgui.hpp>
using namespace std;
using namespace cv;

const double PI = 3.1415926535897932384626;


int bsearch_preceding(float key, float* base, int num)
{
/*return the matching entry, or the preceding one.  only -1 return would be if the search key is before first entry*/
   int top, bottom, middle;
   top = num;
   bottom = 0;

	while (top > bottom + 1)
	{
		middle = (top + bottom)/2;
	
		if (key > base[middle])
		{
			bottom = middle;
		}
		else if (key == base[middle])
		{
	      return(middle);
		}
		else
		{
			top = middle;
		}
	}

    if (key < base[bottom])
       return(-1);
     return(bottom);
}

float cylh(float ca, float r, float d, float cd)
{
        float ia = asin((r+d)/r*sin(ca))-PI/2;
        float va = 2*ia+PI/2-ca;
		float ra = PI/2-ia-ca;
        float vpx = r*sin(ra);
        float vpy = -r*cos(ra);
		return vpy+tan(va)*(cd-vpy);
}

float va(float ca, float r, float d)
{
        float ia = asin((r+d)/r*sin(ca))-PI/2;
        float va = 2*ia+PI/2-ca;
		return va;
}

void makeremap(Mat& map_x, Mat& map_y, int hsz)
{
	bool cyl=false;


	float center1 = 302, center2=230;
	float ao=.122*2*PI;
	float f=560;
	float r=44;
	float d=44;
	float cmin=.13;
	float cmax=.48;
	float outs2=va(cmin,r,d);
	float outs1=va(cmax,r,d);
	float cd=1000;
	float ch=fabs(cylh(cmax, r, d, cd)-cylh(cmin, r, d, cd));
	float co=cylh(cmax, r, d, cd);

	int oversample=30;


  map_x.create((int)(fabs(outs1-outs2)/2/PI*hsz), hsz, CV_32FC1 );
  map_y.create( map_x.size(), CV_32FC1 );


	float vabyca[oversample*map_x.rows];
	for (int j=0;j<oversample*map_x.rows;j++){
        float ca = j*PI/2/oversample/map_x.rows;
        float ia = asin((r+d)/r*sin(ca))-PI/2;
        float va = 2*ia+PI/2-ca;

		if (cyl)
			vabyca[j] = cylh(ca, r, d, cd);
		else
			vabyca[j] = va;
	}

	for (int j=0;j<map_x.rows;j++){
	for (int i=0;i<map_x.cols;i++){
	float va;
	if(cyl) va=co-ch*((float)j/map_x.rows);
	else va=(outs2-outs1)*j/map_x.rows+outs1;
	int caj = bsearch_preceding(va, vabyca, oversample*map_x.rows);
	float ca = (va-vabyca[caj])/(vabyca[caj+1]-vabyca[caj])+caj;
	ca = ca*PI/2/oversample/map_x.rows;

     map_x.at<float>(j,i) = center1+sin(i*2*PI/map_x.cols+ao)*tan(ca)*f ;
     map_y.at<float>(j,i) = center2+cos(i*2*PI/map_x.cols+ao)*tan(ca)*f ;
}}}

int posx=0;
int posy=0;
int posw=100;
int posh=100;
Mat mask;

void cb( int id ){
Mat c=mask.clone();
rectangle(c, Rect(posx,posy,posw,posh),255);
    imshow	("mask", c);
}


// ---------------------------------------
int main(int argc, char *argv[])
{
	Mat mask=imread("mask.pgm",0);
	Mat mask2;
	erode(mask,mask2,Mat());
	erode(mask2,mask,Mat());
	erode(mask,mask2,Mat());
	erode(mask2,mask,Mat());
	erode(mask,mask2,Mat());
	erode(mask2,mask,Mat());
	erode(mask,mask2,Mat());
	erode(mask2,mask,Mat());
	erode(mask,mask2,Mat());
	erode(mask2,mask,Mat());
	erode(mask,mask2,Mat());



	Mat map_x, map_y;
	makeremap(map_x, map_y, 1000);
	remap(mask2, mask, map_x, map_y, CV_INTER_LINEAR, BORDER_CONSTANT, Scalar(0,0, 0) );

	cout<<"opening... "<<flush;
	VideoCapture cap(1);
    if(!cap.isOpened()){  // check if we succeeded
		cout<<"fail."<<flush;
        return -1;
	}
	VideoWriter vidout;
	Mat gray;
    namedWindow("orig",1);
    namedWindow("out",1);
	Mat dst;
	Mat *d2=NULL;

	vidout.open("remapped.avi", CV_FOURCC('M','P','4','3') , 30, map_x.size(), true);
	 if (!vidout.isOpened())
	{
		cout  << "Could not open the output video for write " << endl;
		return -1;
	}

    for(int stop=0;!stop;)
    {
        Mat frame;
        cap >> frame; // get a new frame from camera

        cvtColor(frame, gray, CV_BGR2GRAY);
        imshow	("orig", frame);

		remap(gray, dst, map_x, map_y, CV_INTER_LINEAR, BORDER_CONSTANT, Scalar(0,0, 0) );
		equalizeHist(dst, dst);
Mat t; cvtColor(dst, t, CV_GRAY2BGR);
		vidout << t;

//	GaussianBlur(dst, dst, Size(7,7), 1.5, 1.5);


	Mat out; resize(dst,out,dst.size()*1);


		if (d2) delete d2;
		d2=new Mat();
		dst.copyTo(*d2);
		imshow	("out", out);
        switch(int k = waitKey(1)){
			case -1: break;
			case 27: stop=1; break;
			default: cout<<"key: "<<k<<endl; break;
		}
    }

    // the camera will be deinitialized automatically in VideoCapture destructor
    return 0;

}

