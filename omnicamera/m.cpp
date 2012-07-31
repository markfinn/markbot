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
	VideoCapture cap(1);
    if(!cap.isOpened()){  // check if we succeeded
		cout<<"fail."<<flush;
        return -1;
	}
 Mat edges;
    namedWindow("edges",1);
	float n=0;
	Mat mean(480,640,CV_64FC1, Scalar(0)), var(480,640,CV_64FC1, Scalar(0)), delta;
    for(;;)
    {
        Mat frame;
        cap >> frame; // get a new frame from camera
        cvtColor(frame, edges, CV_BGR2GRAY);

//        GaussianBlur(edges, edges, Size(7,7), 1.5, 1.5);
  //      Canny(edges, edges, 0, 30, 3);
 
		Mat delta, t;
        n = n + 1;
        subtract(edges,mean,delta, noArray(), CV_64FC1);
        mean += delta/n;
        subtract(edges,mean,t, noArray(), CV_64FC1);
        var += delta.mul(t)	;
 

        imshow	("edges", edges);


        if(waitKey(30) >= 0) break;
    }

    var = var/(n - 1);
        imshow	("variance", var/256);
		cout<<"writing fn.pgm"<<flush;
imwrite("fn.pgm",var);


       while(waitKey(30) <= 0);
    // the camera will be deinitialized automatically in VideoCapture destructor
    return 0;

}

