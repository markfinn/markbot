#include <sstream>
#include <iostream>
#include <opencv.hpp>
#include <highgui/highgui.hpp>
using namespace std;
using namespace cv;

const double PI = 3.1415926535897932384626;



// ---------------------------------------
int main(int argc, char *argv[])
{
	cout<<"opening... "<<flush;
	VideoCapture cap("remapped.avi");
    if(!cap.isOpened()){  // check if we succeeded
		cout<<"fail."<<flush;
        return -1;
	}
    namedWindow("orig",1);
    namedWindow("out",1);
	Mat dst;
	Mat *d2=NULL;
	ORB orb;
	BruteForceMatcher<Hamming> matcher;
	vector <KeyPoint> *kp1=NULL, *kp2=NULL;
	Mat *desc1=NULL, *desc2=NULL;
	vector< vector< DMatch > > *matches=NULL;

    for(int stop=0;!stop;)
    {
        Mat frame;
        cap >> frame; // get a new frame from camera
        cvtColor(frame, dst, CV_BGR2GRAY);

        imshow	("orig", dst);


//	GaussianBlur(dst, dst, Size(3,3), 1.5, 1.5);
//	Canny( dst, dst, -0, 5);


	Mat out; resize(dst,out,dst.size()*4);
		if(kp2) delete kp2;
		kp2=kp1;
		kp1 = new vector <KeyPoint>;
		if(desc2) delete desc2;
		desc2=desc1;	
		desc1 = new Mat;
		if(matches)
			delete matches;
		matches=new vector< vector< DMatch > >;

//	orb(dst, Mat(), *kp1, *desc1); 
	if(d2){
//		matcher.knnMatch(*desc2, *desc1, *matches, 4);
		Mat flow;
		calcOpticalFlowFarneback(*d2, dst, flow, .5, 1, 10, 10, 5, 1.1, 0);
		for (int i=0;i<flow.rows;i+=5)
		for (int j=0;j<flow.cols;j+=5){
			line(out, Point(j,i)*4, Point(j+flow.at<float[2]>(i,j)[0],i+flow.at<float[2]>(i,j)[1])*4,255);
			circle(out, Point(j+flow.at<float[2]>(i,j)[0],i+flow.at<float[2]>(i,j)[1])*4,1,255);
		}

	}

		if (d2) delete d2;
		d2=new Mat();
		dst.copyTo(*d2);
		imshow	("out", out);
        switch(int k = waitKey(200)){
			case -1: break;
			case 27: stop=1; break;
			default: cout<<"key: "<<k<<endl; break;
		}
    }

    // the camera will be deinitialized automatically in VideoCapture destructor
    return 0;

}

