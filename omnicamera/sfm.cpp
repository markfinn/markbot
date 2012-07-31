#include <sstream>
#include <iostream>
#include <opencv.hpp>
#include <highgui/highgui.hpp>
#include <stdlib.h>

using namespace std;
using namespace cv;


/*
minimize(int poses, int pixels, asdf)
{

   int i, ret = 0;
    lbfgsfloatval_t fx;
    lbfgsfloatval_t *x = lbfgs_malloc(N);
    lbfgs_parameter_t param;

    if (x == NULL) {
        printf("ERROR: Failed to allocate a memory block for variables.\n");
        return 1;
    }


    // Initialize the variables. 
    for (i = 0;i < poses*(pixels+6);i ++)
        x[i] = 10.0/(float)RAND_MAX*(float)rand();
	x[0]=x[1]=x[2]=0;
	x[3]=x[4]=x[5]=0;
	x[pixels+6+0]=1;
	x[pixels+6+1]=0;
	x[pixels+6+2]=0;


    // Initialize the parameters for the L-BFGS optimization. 
    lbfgs_parameter_init(&param);
    //param.linesearch = LBFGS_LINESEARCH_BACKTRACKING;

    //        Start the L-BFGS optimization; this will invoke the callback functions
    //    evaluate() and progress() when necessary.
     
    ret = lbfgs(N, x, &fx, evaluate, progress, NULL, &param);

    // Report the result. 
    printf("L-BFGS optimization terminated with status code = %d\n", ret);
    printf("  fx = %f, x[0] = %f, x[1] = %f\n", fx, x[0], x[1]);

    lbfgs_free(x);
    return 0;

}
*/


// ---------------------------------------
int main(int argc, char *argv[])
{

	Mat mask=imread("mask.pgm",0);
	Mat mask2;
	erode(mask,mask2,Mat());
	erode(mask2,mask,Mat());
	erode(mask,mask2,Mat());

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

    for(int stop=0;!stop;)
    {
        Mat frame;
        cap >> frame; // get a new frame from camera
        cvtColor(frame, dst, CV_BGR2GRAY);

        imshow	("orig", dst);


//	GaussianBlur(dst, dst, Size(3,3), 1.5, 1.5);
//	Canny( dst, dst, -0, 5);

	int scale=1;
	Mat out; resize(dst,out,dst.size()*scale);
		if(kp2) delete kp2;
		kp2=kp1;
		kp1 = new vector <KeyPoint>;
		if(desc2) delete desc2;
		desc2=desc1;	
		desc1 = new Mat;

	resize(mask2,mask,dst.size());
	orb(dst, mask, *kp1, *desc1); 
	if(d2){
		vector< vector< DMatch > >  matches;
		matcher.knnMatch(*desc1, *desc2, matches, 4);

		for( int i = 0; i < matches.size(); i++ ) {
			line(out, (*kp2)[matches[i][0].trainIdx].pt*scale, (*kp1)[matches[i][0].queryIdx].pt*scale,255);//*matches[i][1].distance/matches[i][0].distance/3.);
			circle(out, (*kp2)[matches[i][0].trainIdx].pt*scale,1,255);
			cout << (*kp2)[matches[i][0].trainIdx].pt << "moved to" << (*kp1)[matches[i][0].queryIdx].pt << "dist" << matches[i][0].distance << "color" << 255*(matches[i][0].distance+matches[i][1].distance+matches[i][2].distance+matches[i][3].distance)/matches[i][0].distance << endl;
		}
/*


		Mat flow;
		calcOpticalFlowFarneback(*d2, dst, flow, .5, 5, 10, 30, 7, 1.5, OPTFLOW_FARNEBACK_GAUSSIAN);
		for (int i=0;i<flow.rows;i+=2)
		for (int j=0;j<flow.cols;j+=2){
			line(out, Point(j,i)*4, Point(j+flow.at<float[2]>(i,j)[0],i+flow.at<float[2]>(i,j)[1])*4,255);
			circle(out, Point(j+flow.at<float[2]>(i,j)[0],i+flow.at<float[2]>(i,j)[1])*4,1,255);
		}
*/

	}

		if (d2) delete d2;
		d2=new Mat();
		dst.copyTo(*d2);
		imshow	("out", out);
        switch(int k = waitKey(2000)){
			case -1: break;
			case 27: stop=1; break;
			default: cout<<"key: "<<k<<endl; break;
		}
    }

    // the camera will be deinitialized automatically in VideoCapture destructor
    return 0;

}


