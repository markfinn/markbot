


run: sfm
	./sfm

t: t.cpp
	gcc t.cpp -o t -I /usr/include/opencv2 -L /usr/local/lib -lm -lopencv_core -l opencv_imgproc -lopencv_highgui -lopencv_features2d -lopencv_video -lopencv_flann -g
	
sfm: sfm.cpp opt-l2.cpp
	gcc sfm.cpp opt-l2.cpp -o sfm -I /usr/include/opencv2 -L /usr/local/lib -lm -lopencv_core -l opencv_imgproc -lopencv_highgui -lopencv_features2d -lopencv_video -lopencv_flann -g -l lbfgs

sfm2: sfm2.cpp opt-l2.cpp
	gcc sfm2.cpp opt-l2.cpp -o sfm2 -I /usr/include/opencv2 -L /usr/local/lib -lm -lopencv_core -l opencv_imgproc -lopencv_highgui -lopencv_features2d -lopencv_video -lopencv_flann -g -l lbfgs

record: record.cpp
	gcc record.cpp -o record -I /usr/include/opencv2 -L /usr/local/lib -lm -lopencv_core -l opencv_imgproc -lopencv_highgui -lopencv_features2d -lopencv_video -lopencv_flann -g
	
