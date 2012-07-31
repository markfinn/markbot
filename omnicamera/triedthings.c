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
	makeremap(map_x, map_y, 300);
	remap(mask2, mask, map_x, map_y, CV_INTER_LINEAR, BORDER_CONSTANT, Scalar(0,0, 0) );

	cout<<"opening... "<<flush;
	VideoCapture cap(1);
    if(!cap.isOpened()){  // check if we succeeded
		cout<<"fail."<<flush;
        return -1;
	}

 Mat gray;
    namedWindow("orig",1);
    namedWindow("out",1);
Mat dst;
 Mat *d2=NULL;
  dst.create( mask.size(),CV_32FC1 );
 SurfDescriptorExtractor extractor;
int n=0;
    for(int stop=0;!stop;)
    {
        Mat frame;
        cap >> frame; // get a new frame from camera

        cvtColor(frame, gray, CV_BGR2GRAY);
        imshow	("orig", frame);

		equalizeHist(gray, gray);
		remap(gray, dst, map_x, map_y, CV_INTER_LINEAR, BORDER_CONSTANT, Scalar(0,0, 0) );

		Rect bb[]={Rect(0,32,255,311),
		Rect(255,32,254,294),
		Rect(509,2,243,294),
		Rect(752,8,248,329)};

		//GaussianBlur(dst, dst, Size(7,7), 1.5, 1.5);
// inpaint(dst, 255-mask, d2, 4,0);
		if(kp2) delete kp2;
		kp2=kp1;
		kp1 = new vector <KeyPoint>;
//		kp1 = new vector <Point2f>;
		if(desc2) delete desc2;
		desc2=desc1;	
		desc1 = new Mat;
//		desc1 = new vector<float>;
		if(matches)
			delete matches;
		matches=new vector< DMatch >;

vector <KeyPoint> tkp;
		orb(dst, mask, tkp, *desc1); 
//FAST(dst, tkp, 15);

/*		surf(dst, mask, *kp1); 
	  extractor.compute( dst, *kp1, *desc1 );
*/
/*for (int j=0;j<desc1->size().height;j++){
for (int i=0;i<64;i++)
cout<<desc1->at<float>(j,i)<<" ";
cout<<endl;
}*/

	//	for (vector<cv::KeyPoint>::iterator iter = tkp.begin(); iter != tkp.end(); ++iter) kp1->push_back(iter->pt);
//		for (vector<cv::KeyPoint>::iterator iter = tkp.begin(); iter != tkp.end(); ++iter) circle(dst, iter->pt,iter->size+2,255);

//goodFeaturesToTrack(dst, *kp1, 500, .01, 5, mask); 
/*
		for (vector<cv::KeyPoint>::iterator iter = kp1->begin(); iter != kp1->end(); ++iter) {
			//cout << "good feature at" << iter->pt.x << ", " <<iter->pt.y << ", " << iter->response << endl;
			circle(dst, iter->pt,iter->size+2,255);
		}
*/
Mat out; resize(dst,out,dst.size()*4);

	if(d2){
		Mat flow;
		calcOpticalFlowFarneback(*d2, dst, flow, .5, 1, 10, 10, 5, 1.1, 0);
		for (int i=0;i<flow.rows;i+=10)
		for (int j=0;j<flow.cols;j+=10)
		line(out, Point(j,i)*4, Point(j+flow.at<float[2]>(i,j)[0],i+flow.at<float[2]>(i,j)[1])*4,255);
	}


}
		if (d2) delete d2;
		d2=new Mat();
		dst.copyTo(*d2);
		imshow	("out", out);
        switch(int k = waitKey(1)){
			case -1: break;
			case 27: stop=1; break;
			{
			case '1':
			case '2':
			case '3':
			case '4':
				k=k-'1';
				stringstream ss;
				ss << "output-"<<k<<"-"<<n<<".png";
				imwrite( ss.str(), Mat(dst, bb[k]));
				cout<<"wrote "<<ss.str()<<endl<<flush;
				n++;
				break;
			}
			default: cout<<"key: "<<k<<endl; break;
		}
    }

    // the camera will be deinitialized automatically in VideoCapture destructor
    return 0;

}

