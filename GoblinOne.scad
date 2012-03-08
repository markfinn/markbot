//font from "more fontz" http://www.thingiverse.com/thing:13677

module GoblinOne_contour00x21_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 19], [7, 20], [6.5, 22.0], 
		[6, 24], [6.0, 26.5], [6, 29], 
		[5.5, 31.5], [5, 34], [5.0, 36.5], 
		[5, 39], [4.5, 42.0], [4, 45], 
		[4, 48], [11.5, 48.0], [19, 48], 
		[19, 45], [18.5, 42.0], [18, 39], 
		[18.0, 36.5], [18, 34], [17.5, 31.5], 
		[17, 29], [17.0, 26.5], [17, 24], 
		[16.5, 22.0], [16, 20], [16, 19], 
		[11.5, 19.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 19], [7, 20], [6.5, 22.0], 
		[6, 24], [6.0, 26.5], [6, 29], 
		[5.5, 31.5], [5, 34], [5.0, 36.5], 
		[5, 39], [4.5, 42.0], [4, 45], 
		[4, 48], [11.5, 48.0], [19, 48], 
		[19, 45], [18.5, 42.0], [18, 39], 
		[18.0, 36.5], [18, 34], [17.5, 31.5], 
		[17, 29], [17.0, 26.5], [17, 24], 
		[16.5, 22.0], [16, 20], [16, 19], 
		[11.5, 19.0], ]);
}}}

module GoblinOne_contour00x21_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 19], [7, 20], [6.5, 22.0],steps,height);
	BezConic([6.0, 26.5], [6, 29], [5.5, 31.5],steps,height);
	BezConic([5.0, 36.5], [5, 39], [4.5, 42.0],steps,height);
	BezConic([18.5, 42.0], [18, 39], [18.0, 36.5],steps,height);
	BezConic([17.5, 31.5], [17, 29], [17.0, 26.5],steps,height);
	BezConic([16.5, 22.0], [16, 20], [16, 19],steps,height);
}
}

module GoblinOne_contour00x21_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6.5, 22.0], [6, 24], [6.0, 26.5],steps,height);
	BezConic([5.5, 31.5], [5, 34], [5.0, 36.5],steps,height);
	BezConic([4.5, 42.0], [4, 45], [4, 48],steps,height);
	BezConic([19, 48], [19, 45], [18.5, 42.0],steps,height);
	BezConic([18.0, 36.5], [18, 34], [17.5, 31.5],steps,height);
	BezConic([17.0, 26.5], [17, 24], [16.5, 22.0],steps,height);
}
}

module GoblinOne_contour00x21(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x21_skeleton(height);
			GoblinOne_contour00x21_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x21_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x21_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 7], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [18.5, 9.5], 
		[19, 8], [19, 7], [19, 5], 
		[18.5, 3.5], [18, 2], [17.0, 1.0], 
		[16, 0], [14.5, -0.5], [13, -1], 
		[12, -1], [10, -1], [8.5, -0.5], 
		[7, 0], [6.0, 1.0], [5, 2], 
		[4.5, 3.5],[4, 5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 7], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [18.5, 9.5], 
		[19, 8], [19, 7], [19, 5], 
		[18.5, 3.5], [18, 2], [17.0, 1.0], 
		[16, 0], [14.5, -0.5], [13, -1], 
		[12, -1], [10, -1], [8.5, -0.5], 
		[7, 0], [6.0, 1.0], [5, 2], 
		[4.5, 3.5],[4, 5], ]);
}}}

module GoblinOne_contour10x21_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x21_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 7], [4, 8], [4.5, 9.5],steps,height);
	BezConic([4.5, 9.5], [5, 11], [6.0, 12.0],steps,height);
	BezConic([6.0, 12.0], [7, 13], [8.5, 13.5],steps,height);
	BezConic([8.5, 13.5], [10, 14], [12, 14],steps,height);
	BezConic([12, 14], [13, 14], [14.5, 13.5],steps,height);
	BezConic([14.5, 13.5], [16, 13], [17.0, 12.0],steps,height);
	BezConic([17.0, 12.0], [18, 11], [18.5, 9.5],steps,height);
	BezConic([18.5, 9.5], [19, 8], [19, 7],steps,height);
	BezConic([19, 7], [19, 5], [18.5, 3.5],steps,height);
	BezConic([18.5, 3.5], [18, 2], [17.0, 1.0],steps,height);
	BezConic([17.0, 1.0], [16, 0], [14.5, -0.5],steps,height);
	BezConic([14.5, -0.5], [13, -1], [12, -1],steps,height);
	BezConic([12, -1], [10, -1], [8.5, -0.5],steps,height);
	BezConic([8.5, -0.5], [7, 0], [6.0, 1.0],steps,height);
	BezConic([6.0, 1.0], [5, 2], [4.5, 3.5],steps,height);
	BezConic([4.5, 3.5], [4, 5], [4, 7],steps,height);
}
}

module GoblinOne_contour10x21(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x21_skeleton(height);
			GoblinOne_contour10x21_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x21_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x21(steps=2, height) {
	difference() {
		GoblinOne_contour00x21(steps, height);
		
	}
}

module GoblinOne_chunk20x21(steps=2, height) {
	difference() {
		GoblinOne_contour10x21(steps, height);
		
	}
}

GoblinOne_bbox0x21=[[4, -1], [19, 48]];

module GoblinOne_letter0x21(steps=2, height) {
	GoblinOne_chunk10x21(steps, height);
	GoblinOne_chunk20x21(steps, height);
} //end skeleton

module GoblinOne_contour00x22_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 35], [23, 35], [22.5, 36.5], 
		[22, 38], [21.5, 39.5], [21, 41], 
		[21.0, 42.5], [21, 44], [20.5, 45.5], 
		[20, 47], [19.5, 48.0], [19, 49], 
		[19, 50], [19, 51], [19.5, 52.0], 
		[20, 53], [21.0, 54.0], [22, 55], 
		[23.0, 55.0], [24, 55], [25, 55], 
		[26, 55], [27.0, 55.0], [28, 55], 
		[29.0, 54.0], [30, 53], [30.5, 52.0], 
		[31, 51], [31, 50], [31, 49], 
		[30.5, 48.0], [30, 47], [30.0, 45.5], 
		[30, 44], [29.5, 42.5], [29, 41], 
		[28.5, 39.5], [28, 38], [27.5, 36.5], 
		[27, 35], [27, 35], [25.5, 35.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 35], [23, 35], [22.5, 36.5], 
		[22, 38], [21.5, 39.5], [21, 41], 
		[21.0, 42.5], [21, 44], [20.5, 45.5], 
		[20, 47], [19.5, 48.0], [19, 49], 
		[19, 50], [19, 51], [19.5, 52.0], 
		[20, 53], [21.0, 54.0], [22, 55], 
		[23.0, 55.0], [24, 55], [25, 55], 
		[26, 55], [27.0, 55.0], [28, 55], 
		[29.0, 54.0], [30, 53], [30.5, 52.0], 
		[31, 51], [31, 50], [31, 49], 
		[30.5, 48.0], [30, 47], [30.0, 45.5], 
		[30, 44], [29.5, 42.5], [29, 41], 
		[28.5, 39.5], [28, 38], [27.5, 36.5], 
		[27, 35], [27, 35], [25.5, 35.0], 
		 ]);
}}}

module GoblinOne_contour00x22_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22.5, 36.5], [22, 38], [21.5, 39.5],steps,height);
	BezConic([21.0, 42.5], [21, 44], [20.5, 45.5],steps,height);
	BezConic([20.5, 45.5], [20, 47], [19.5, 48.0],steps,height);
	BezConic([23.0, 55.0], [24, 55], [25, 55],steps,height);
	BezConic([25, 55], [26, 55], [27.0, 55.0],steps,height);
	BezConic([30.5, 48.0], [30, 47], [30.0, 45.5],steps,height);
	BezConic([28.5, 39.5], [28, 38], [27.5, 36.5],steps,height);
	BezConic([27.5, 36.5], [27, 35], [27, 35],steps,height);
}
}

module GoblinOne_contour00x22_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 35], [23, 35], [22.5, 36.5],steps,height);
	BezConic([21.5, 39.5], [21, 41], [21.0, 42.5],steps,height);
	BezConic([19.5, 48.0], [19, 49], [19, 50],steps,height);
	BezConic([19, 50], [19, 51], [19.5, 52.0],steps,height);
	BezConic([19.5, 52.0], [20, 53], [21.0, 54.0],steps,height);
	BezConic([21.0, 54.0], [22, 55], [23.0, 55.0],steps,height);
	BezConic([27.0, 55.0], [28, 55], [29.0, 54.0],steps,height);
	BezConic([29.0, 54.0], [30, 53], [30.5, 52.0],steps,height);
	BezConic([30.5, 52.0], [31, 51], [31, 50],steps,height);
	BezConic([31, 50], [31, 49], [30.5, 48.0],steps,height);
	BezConic([30.0, 45.5], [30, 44], [29.5, 42.5],steps,height);
	BezConic([29.5, 42.5], [29, 41], [28.5, 39.5],steps,height);
}
}

module GoblinOne_contour00x22(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x22_skeleton(height);
			GoblinOne_contour00x22_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x22_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x22_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[8, 35], [8, 35], [7.5, 36.5], 
		[7, 38], [6.5, 39.5], [6, 41], 
		[5.5, 42.5], [5, 44], [5.0, 45.5], 
		[5, 47], [4.5, 48.0], [4, 49], 
		[4, 50], [4, 51], [4.5, 52.0], 
		[5, 53], [6.0, 54.0], [7, 55], 
		[8.0, 55.0], [9, 55], [10, 55], 
		[11, 55], [12.0, 55.0], [13, 55], 
		[14.0, 54.0], [15, 53], [15.5, 52.0], 
		[16, 51], [16, 50], [16, 49], 
		[15.5, 48.0], [15, 47], [14.5, 45.5], 
		[14, 44], [14.0, 42.5], [14, 41], 
		[13.5, 39.5], [13, 38], [12.5, 36.5], 
		[12, 35], [11, 35], [9.5, 35.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[8, 35], [8, 35], [7.5, 36.5], 
		[7, 38], [6.5, 39.5], [6, 41], 
		[5.5, 42.5], [5, 44], [5.0, 45.5], 
		[5, 47], [4.5, 48.0], [4, 49], 
		[4, 50], [4, 51], [4.5, 52.0], 
		[5, 53], [6.0, 54.0], [7, 55], 
		[8.0, 55.0], [9, 55], [10, 55], 
		[11, 55], [12.0, 55.0], [13, 55], 
		[14.0, 54.0], [15, 53], [15.5, 52.0], 
		[16, 51], [16, 50], [16, 49], 
		[15.5, 48.0], [15, 47], [14.5, 45.5], 
		[14, 44], [14.0, 42.5], [14, 41], 
		[13.5, 39.5], [13, 38], [12.5, 36.5], 
		[12, 35], [11, 35], [9.5, 35.0], 
		 ]);
}}}

module GoblinOne_contour10x22_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8, 35], [8, 35], [7.5, 36.5],steps,height);
	BezConic([6.5, 39.5], [6, 41], [5.5, 42.5],steps,height);
	BezConic([5.0, 45.5], [5, 47], [4.5, 48.0],steps,height);
	BezConic([8.0, 55.0], [9, 55], [10, 55],steps,height);
	BezConic([10, 55], [11, 55], [12.0, 55.0],steps,height);
	BezConic([15.5, 48.0], [15, 47], [14.5, 45.5],steps,height);
	BezConic([14.5, 45.5], [14, 44], [14.0, 42.5],steps,height);
}
}

module GoblinOne_contour10x22_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7.5, 36.5], [7, 38], [6.5, 39.5],steps,height);
	BezConic([5.5, 42.5], [5, 44], [5.0, 45.5],steps,height);
	BezConic([4.5, 48.0], [4, 49], [4, 50],steps,height);
	BezConic([4, 50], [4, 51], [4.5, 52.0],steps,height);
	BezConic([4.5, 52.0], [5, 53], [6.0, 54.0],steps,height);
	BezConic([6.0, 54.0], [7, 55], [8.0, 55.0],steps,height);
	BezConic([12.0, 55.0], [13, 55], [14.0, 54.0],steps,height);
	BezConic([14.0, 54.0], [15, 53], [15.5, 52.0],steps,height);
	BezConic([15.5, 52.0], [16, 51], [16, 50],steps,height);
	BezConic([16, 50], [16, 49], [15.5, 48.0],steps,height);
	BezConic([14.0, 42.5], [14, 41], [13.5, 39.5],steps,height);
	BezConic([13.5, 39.5], [13, 38], [12.5, 36.5],steps,height);
	BezConic([12.5, 36.5], [12, 35], [11, 35],steps,height);
}
}

module GoblinOne_contour10x22(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x22_skeleton(height);
			GoblinOne_contour10x22_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x22_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x22(steps=2, height) {
	difference() {
		GoblinOne_contour00x22(steps, height);
		
	}
}

module GoblinOne_chunk20x22(steps=2, height) {
	difference() {
		GoblinOne_contour10x22(steps, height);
		
	}
}

GoblinOne_bbox0x22=[[4, 35], [31, 55]];

module GoblinOne_letter0x22(steps=2, height) {
	GoblinOne_chunk10x22(steps, height);
	GoblinOne_chunk20x22(steps, height);
} //end skeleton

module GoblinOne_contour00x23_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[14, 12], [9.0, 12.0], [4, 12], 
		[4.0, 15.0], [4, 18], [10.0, 18.0], 
		[16, 18], [17.0, 22.5], [18, 27], 
		[12.5, 27.0], [7, 27], [7.0, 30.0], 
		[7, 33], [13.5, 33.0], [20, 33], 
		[22.0, 39.0], [24, 45], [27.0, 45.0], 
		[30, 45], [28.5, 39.0], [27, 33], 
		[32.0, 33.0], [37, 33], [39.0, 39.0], 
		[41, 45], [44.5, 45.0], [48, 45], 
		[46.0, 39.0], [44, 33], [49.5, 33.0], 
		[55, 33], [55.0, 30.0], [55, 27], 
		[49.0, 27.0], [43, 27], [41.5, 22.5], 
		[40, 18], [46.0, 18.0], [52, 18], 
		[52.0, 15.0], [52, 12], [45.0, 12.0], 
		[38, 12], [36.5, 6.0], [35, 0], 
		[31.5, 0.0], [28, 0], [29.5, 6.0], 
		[31, 12], [26.0, 12.0], [21, 12], 
		[19.5, 6.0], [18, 0], [14.5, 0.0], 
		[11, 0],[12.5, 6.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[14, 12], [9.0, 12.0], [4, 12], 
		[4.0, 15.0], [4, 18], [10.0, 18.0], 
		[16, 18], [17.0, 22.5], [18, 27], 
		[12.5, 27.0], [7, 27], [7.0, 30.0], 
		[7, 33], [13.5, 33.0], [20, 33], 
		[22.0, 39.0], [24, 45], [27.0, 45.0], 
		[30, 45], [28.5, 39.0], [27, 33], 
		[32.0, 33.0], [37, 33], [39.0, 39.0], 
		[41, 45], [44.5, 45.0], [48, 45], 
		[46.0, 39.0], [44, 33], [49.5, 33.0], 
		[55, 33], [55.0, 30.0], [55, 27], 
		[49.0, 27.0], [43, 27], [41.5, 22.5], 
		[40, 18], [46.0, 18.0], [52, 18], 
		[52.0, 15.0], [52, 12], [45.0, 12.0], 
		[38, 12], [36.5, 6.0], [35, 0], 
		[31.5, 0.0], [28, 0], [29.5, 6.0], 
		[31, 12], [26.0, 12.0], [21, 12], 
		[19.5, 6.0], [18, 0], [14.5, 0.0], 
		[11, 0],[12.5, 6.0], ]);
}}}

module GoblinOne_contour00x23_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x23_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x23(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x23_skeleton(height);
			GoblinOne_contour00x23_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x23_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x23_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[33, 18], [34.5, 22.5], [36, 27], 
		[30.5, 27.0], [25, 27], [24.0, 22.5], 
		[23, 18],[28.0, 18.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[33, 18], [34.5, 22.5], [36, 27], 
		[30.5, 27.0], [25, 27], [24.0, 22.5], 
		[23, 18],[28.0, 18.0], ]);
}}}

module GoblinOne_contour10x23_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x23_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x23(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x23_skeleton(height);
			GoblinOne_contour10x23_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x23_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x23(steps=2, height) {
	difference() {
		GoblinOne_contour00x23(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x23(steps, height);
	}
}

GoblinOne_bbox0x23=[[4, 0], [55, 45]];

module GoblinOne_letter0x23(steps=2, height) {
	GoblinOne_chunk10x23(steps, height);
} //end skeleton

module GoblinOne_contour00x24_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 15], [8, 13], [11.5, 11.5], 
		[15, 10], [18.5, 8.5], [22, 7], 
		[26.0, 6.5], [30, 6], [33, 6], 
		[35, 6], [36.5, 6.0], [38, 6], 
		[39.0, 6.5], [40, 7], [40.5, 7.5], 
		[41, 8], [41, 9], [41, 10], 
		[40.5, 11.0], [40, 12], [38.5, 13.0], 
		[37, 14], [34.5, 14.5], [32, 15], 
		[27, 16], [21, 17], [17.0, 18.0], 
		[13, 19], [10.0, 21.0], [7, 23], 
		[6.0, 25.5], [5, 28], [5, 31], 
		[5, 35], [6.5, 37.5], [8, 40], 
		[10.5, 42.0], [13, 44], [17.5, 45.0], 
		[22, 46], [27, 46], [27, 46], 
		[28.0, 46.0], [29, 46], [29, 46], 
		[29.5, 49.5], [30, 53], [33.5, 53.0], 
		[37, 53], [36.5, 49.0], [36, 45], 
		[38, 45], [40.0, 44.5], [42, 44], 
		[44, 43], [47.0, 44.5], [50, 46], 
		[52.0, 46.0], [54, 46], [54.0, 38.5], 
		[54, 31], [51, 33], [47.5, 34.5], 
		[44, 36], [40.5, 37.0], [37, 38], 
		[34.0, 38.5], [31, 39], [28, 39], 
		[26, 39], [24.5, 39.0], [23, 39], 
		[22.0, 38.5], [21, 38], [20.5, 37.5], 
		[20, 37], [20, 36], [20, 35], 
		[20.5, 34.0], [21, 33], [22.5, 32.5], 
		[24, 32], [27.0, 31.0], [30, 30], 
		[35, 30], [38, 29], [41.0, 28.5], 
		[44, 28], [46.5, 27.0], [49, 26], 
		[51.0, 25.0], [53, 24], [54.0, 22.5], 
		[55, 21], [56.0, 18.5], [57, 16], 
		[57, 13], [57, 10], [55.0, 7.0], 
		[53, 4], [50.0, 2.0], [47, 0], 
		[42.5, -0.5], [38, -1], [34, -1], 
		[33, -1], [32.5, -1.0], [32, -1], 
		[32, -1], [31.5, -5.0], [31, -9], 
		[27.5, -9.0], [24, -9], [24.5, -4.5], 
		[25, 0], [23, 0], [20.5, 1.0], 
		[18, 2], [16, 3], [13.5, 1.5], 
		[11, 0], [8.0, 0.0], [5, 0], 
		[5.0, 7.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 15], [8, 13], [11.5, 11.5], 
		[15, 10], [18.5, 8.5], [22, 7], 
		[26.0, 6.5], [30, 6], [33, 6], 
		[35, 6], [36.5, 6.0], [38, 6], 
		[39.0, 6.5], [40, 7], [40.5, 7.5], 
		[41, 8], [41, 9], [41, 10], 
		[40.5, 11.0], [40, 12], [38.5, 13.0], 
		[37, 14], [34.5, 14.5], [32, 15], 
		[27, 16], [21, 17], [17.0, 18.0], 
		[13, 19], [10.0, 21.0], [7, 23], 
		[6.0, 25.5], [5, 28], [5, 31], 
		[5, 35], [6.5, 37.5], [8, 40], 
		[10.5, 42.0], [13, 44], [17.5, 45.0], 
		[22, 46], [27, 46], [27, 46], 
		[28.0, 46.0], [29, 46], [29, 46], 
		[29.5, 49.5], [30, 53], [33.5, 53.0], 
		[37, 53], [36.5, 49.0], [36, 45], 
		[38, 45], [40.0, 44.5], [42, 44], 
		[44, 43], [47.0, 44.5], [50, 46], 
		[52.0, 46.0], [54, 46], [54.0, 38.5], 
		[54, 31], [51, 33], [47.5, 34.5], 
		[44, 36], [40.5, 37.0], [37, 38], 
		[34.0, 38.5], [31, 39], [28, 39], 
		[26, 39], [24.5, 39.0], [23, 39], 
		[22.0, 38.5], [21, 38], [20.5, 37.5], 
		[20, 37], [20, 36], [20, 35], 
		[20.5, 34.0], [21, 33], [22.5, 32.5], 
		[24, 32], [27.0, 31.0], [30, 30], 
		[35, 30], [38, 29], [41.0, 28.5], 
		[44, 28], [46.5, 27.0], [49, 26], 
		[51.0, 25.0], [53, 24], [54.0, 22.5], 
		[55, 21], [56.0, 18.5], [57, 16], 
		[57, 13], [57, 10], [55.0, 7.0], 
		[53, 4], [50.0, 2.0], [47, 0], 
		[42.5, -0.5], [38, -1], [34, -1], 
		[33, -1], [32.5, -1.0], [32, -1], 
		[32, -1], [31.5, -5.0], [31, -9], 
		[27.5, -9.0], [24, -9], [24.5, -4.5], 
		[25, 0], [23, 0], [20.5, 1.0], 
		[18, 2], [16, 3], [13.5, 1.5], 
		[11, 0], [8.0, 0.0], [5, 0], 
		[5.0, 7.5], ]);
}}}

module GoblinOne_contour00x24_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 15], [8, 13], [11.5, 11.5],steps,height);
	BezConic([11.5, 11.5], [15, 10], [18.5, 8.5],steps,height);
	BezConic([18.5, 8.5], [22, 7], [26.0, 6.5],steps,height);
	BezConic([26.0, 6.5], [30, 6], [33, 6],steps,height);
	BezConic([33, 6], [35, 6], [36.5, 6.0],steps,height);
	BezConic([36.5, 6.0], [38, 6], [39.0, 6.5],steps,height);
	BezConic([39.0, 6.5], [40, 7], [40.5, 7.5],steps,height);
	BezConic([40.5, 7.5], [41, 8], [41, 9],steps,height);
	BezConic([41, 9], [41, 10], [40.5, 11.0],steps,height);
	BezConic([40.5, 11.0], [40, 12], [38.5, 13.0],steps,height);
	BezConic([38.5, 13.0], [37, 14], [34.5, 14.5],steps,height);
	BezConic([34.5, 14.5], [32, 15], [27, 16],steps,height);
	BezConic([27, 46], [27, 46], [28.0, 46.0],steps,height);
	BezConic([28.0, 46.0], [29, 46], [29, 46],steps,height);
	BezConic([54, 31], [51, 33], [47.5, 34.5],steps,height);
	BezConic([47.5, 34.5], [44, 36], [40.5, 37.0],steps,height);
	BezConic([40.5, 37.0], [37, 38], [34.0, 38.5],steps,height);
	BezConic([34.0, 38.5], [31, 39], [28, 39],steps,height);
	BezConic([28, 39], [26, 39], [24.5, 39.0],steps,height);
	BezConic([24.5, 39.0], [23, 39], [22.0, 38.5],steps,height);
	BezConic([22.0, 38.5], [21, 38], [20.5, 37.5],steps,height);
	BezConic([20.5, 37.5], [20, 37], [20, 36],steps,height);
	BezConic([20, 36], [20, 35], [20.5, 34.0],steps,height);
	BezConic([20.5, 34.0], [21, 33], [22.5, 32.5],steps,height);
	BezConic([22.5, 32.5], [24, 32], [27.0, 31.0],steps,height);
	BezConic([27.0, 31.0], [30, 30], [35, 30],steps,height);
	BezConic([35, 30], [38, 29], [41.0, 28.5],steps,height);
	BezConic([34, -1], [33, -1], [32.5, -1.0],steps,height);
	BezConic([32.5, -1.0], [32, -1], [32, -1],steps,height);
}
}

module GoblinOne_contour00x24_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([27, 16], [21, 17], [17.0, 18.0],steps,height);
	BezConic([17.0, 18.0], [13, 19], [10.0, 21.0],steps,height);
	BezConic([10.0, 21.0], [7, 23], [6.0, 25.5],steps,height);
	BezConic([6.0, 25.5], [5, 28], [5, 31],steps,height);
	BezConic([5, 31], [5, 35], [6.5, 37.5],steps,height);
	BezConic([6.5, 37.5], [8, 40], [10.5, 42.0],steps,height);
	BezConic([10.5, 42.0], [13, 44], [17.5, 45.0],steps,height);
	BezConic([17.5, 45.0], [22, 46], [27, 46],steps,height);
	BezConic([36, 45], [38, 45], [40.0, 44.5],steps,height);
	BezConic([40.0, 44.5], [42, 44], [44, 43],steps,height);
	BezConic([41.0, 28.5], [44, 28], [46.5, 27.0],steps,height);
	BezConic([46.5, 27.0], [49, 26], [51.0, 25.0],steps,height);
	BezConic([51.0, 25.0], [53, 24], [54.0, 22.5],steps,height);
	BezConic([54.0, 22.5], [55, 21], [56.0, 18.5],steps,height);
	BezConic([56.0, 18.5], [57, 16], [57, 13],steps,height);
	BezConic([57, 13], [57, 10], [55.0, 7.0],steps,height);
	BezConic([55.0, 7.0], [53, 4], [50.0, 2.0],steps,height);
	BezConic([50.0, 2.0], [47, 0], [42.5, -0.5],steps,height);
	BezConic([42.5, -0.5], [38, -1], [34, -1],steps,height);
	BezConic([25, 0], [23, 0], [20.5, 1.0],steps,height);
	BezConic([20.5, 1.0], [18, 2], [16, 3],steps,height);
}
}

module GoblinOne_contour00x24(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x24_skeleton(height);
			GoblinOne_contour00x24_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x24_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x24(steps=2, height) {
	difference() {
		GoblinOne_contour00x24(steps, height);
		
	}
}

GoblinOne_bbox0x24=[[5, -9], [57, 53]];

module GoblinOne_letter0x24(steps=2, height) {
	GoblinOne_chunk10x24(steps, height);
} //end skeleton

module GoblinOne_contour00x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, 24], [14, 24], [12.0, 24.5], 
		[10, 25], [8.0, 26.5], [6, 28], 
		[5.0, 30.0], [4, 32], [4, 35], 
		[4, 38], [5.0, 40.0], [6, 42], 
		[8.0, 43.5], [10, 45], [12.0, 45.5], 
		[14, 46], [16, 46], [19, 46], 
		[21.0, 45.5], [23, 45], [25.0, 43.5], 
		[27, 42], [28.0, 40.0], [29, 38], 
		[29, 35], [29, 32], [28.0, 30.0], 
		[27, 28], [25.0, 26.5], [23, 25], 
		[21.0, 24.5],[19, 24], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, 24], [14, 24], [12.0, 24.5], 
		[10, 25], [8.0, 26.5], [6, 28], 
		[5.0, 30.0], [4, 32], [4, 35], 
		[4, 38], [5.0, 40.0], [6, 42], 
		[8.0, 43.5], [10, 45], [12.0, 45.5], 
		[14, 46], [16, 46], [19, 46], 
		[21.0, 45.5], [23, 45], [25.0, 43.5], 
		[27, 42], [28.0, 40.0], [29, 38], 
		[29, 35], [29, 32], [28.0, 30.0], 
		[27, 28], [25.0, 26.5], [23, 25], 
		[21.0, 24.5],[19, 24], ]);
}}}

module GoblinOne_contour00x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, 24], [14, 24], [12.0, 24.5],steps,height);
	BezConic([12.0, 24.5], [10, 25], [8.0, 26.5],steps,height);
	BezConic([8.0, 26.5], [6, 28], [5.0, 30.0],steps,height);
	BezConic([5.0, 30.0], [4, 32], [4, 35],steps,height);
	BezConic([4, 35], [4, 38], [5.0, 40.0],steps,height);
	BezConic([5.0, 40.0], [6, 42], [8.0, 43.5],steps,height);
	BezConic([8.0, 43.5], [10, 45], [12.0, 45.5],steps,height);
	BezConic([12.0, 45.5], [14, 46], [16, 46],steps,height);
	BezConic([16, 46], [19, 46], [21.0, 45.5],steps,height);
	BezConic([21.0, 45.5], [23, 45], [25.0, 43.5],steps,height);
	BezConic([25.0, 43.5], [27, 42], [28.0, 40.0],steps,height);
	BezConic([28.0, 40.0], [29, 38], [29, 35],steps,height);
	BezConic([29, 35], [29, 32], [28.0, 30.0],steps,height);
	BezConic([28.0, 30.0], [27, 28], [25.0, 26.5],steps,height);
	BezConic([25.0, 26.5], [23, 25], [21.0, 24.5],steps,height);
	BezConic([21.0, 24.5], [19, 24], [16, 24],steps,height);
}
}

module GoblinOne_contour00x25(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x25_skeleton(height);
			GoblinOne_contour00x25_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x25_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[44, 45], [49.0, 45.0], [54, 45], 
		[36.5, 22.5], [19, 0], [14.5, 0.0], 
		[10, 0],[27.0, 22.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[44, 45], [49.0, 45.0], [54, 45], 
		[36.5, 22.5], [19, 0], [14.5, 0.0], 
		[10, 0],[27.0, 22.5], ]);
}}}

module GoblinOne_contour10x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x25(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x25_skeleton(height);
			GoblinOne_contour10x25_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x25_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour20x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, 28], [19, 28], [20.0, 30.0], 
		[21, 32], [21, 35], [21, 38], 
		[20.0, 40.0], [19, 42], [16, 42], 
		[14, 42], [13.0, 40.0], [12, 38], 
		[12, 35], [12, 32], [13.0, 30.0], 
		[14, 28], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, 28], [19, 28], [20.0, 30.0], 
		[21, 32], [21, 35], [21, 38], 
		[20.0, 40.0], [19, 42], [16, 42], 
		[14, 42], [13.0, 40.0], [12, 38], 
		[12, 35], [12, 32], [13.0, 30.0], 
		[14, 28], ]);
}}}

module GoblinOne_contour20x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, 28], [19, 28], [20.0, 30.0],steps,height);
	BezConic([20.0, 30.0], [21, 32], [21, 35],steps,height);
	BezConic([21, 35], [21, 38], [20.0, 40.0],steps,height);
	BezConic([20.0, 40.0], [19, 42], [16, 42],steps,height);
	BezConic([16, 42], [14, 42], [13.0, 40.0],steps,height);
	BezConic([13.0, 40.0], [12, 38], [12, 35],steps,height);
	BezConic([12, 35], [12, 32], [13.0, 30.0],steps,height);
	BezConic([13.0, 30.0], [14, 28], [16, 28],steps,height);
}
}

module GoblinOne_contour20x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour20x25(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour20x25_skeleton(height);
			GoblinOne_contour20x25_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x25_additive_curves(steps, height);
	}
}

module GoblinOne_contour30x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[34, 10], [34, 13], [35.5, 15.0], 
		[37, 17], [38.5, 18.0], [40, 19], 
		[42.5, 20.0], [45, 21], [47, 21], 
		[49, 21], [51.5, 20.0], [54, 19], 
		[55.5, 18.0], [57, 17], [58.5, 15.0], 
		[60, 13], [60, 10], [60, 7], 
		[58.5, 5.0], [57, 3], [55.5, 1.5], 
		[54, 0], [51.5, -0.5], [49, -1], 
		[47, -1], [45, -1], [42.5, -0.5], 
		[40, 0], [38.5, 1.5], [37, 3], 
		[35.5, 5.0],[34, 7], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[34, 10], [34, 13], [35.5, 15.0], 
		[37, 17], [38.5, 18.0], [40, 19], 
		[42.5, 20.0], [45, 21], [47, 21], 
		[49, 21], [51.5, 20.0], [54, 19], 
		[55.5, 18.0], [57, 17], [58.5, 15.0], 
		[60, 13], [60, 10], [60, 7], 
		[58.5, 5.0], [57, 3], [55.5, 1.5], 
		[54, 0], [51.5, -0.5], [49, -1], 
		[47, -1], [45, -1], [42.5, -0.5], 
		[40, 0], [38.5, 1.5], [37, 3], 
		[35.5, 5.0],[34, 7], ]);
}}}

module GoblinOne_contour30x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour30x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34, 10], [34, 13], [35.5, 15.0],steps,height);
	BezConic([35.5, 15.0], [37, 17], [38.5, 18.0],steps,height);
	BezConic([38.5, 18.0], [40, 19], [42.5, 20.0],steps,height);
	BezConic([42.5, 20.0], [45, 21], [47, 21],steps,height);
	BezConic([47, 21], [49, 21], [51.5, 20.0],steps,height);
	BezConic([51.5, 20.0], [54, 19], [55.5, 18.0],steps,height);
	BezConic([55.5, 18.0], [57, 17], [58.5, 15.0],steps,height);
	BezConic([58.5, 15.0], [60, 13], [60, 10],steps,height);
	BezConic([60, 10], [60, 7], [58.5, 5.0],steps,height);
	BezConic([58.5, 5.0], [57, 3], [55.5, 1.5],steps,height);
	BezConic([55.5, 1.5], [54, 0], [51.5, -0.5],steps,height);
	BezConic([51.5, -0.5], [49, -1], [47, -1],steps,height);
	BezConic([47, -1], [45, -1], [42.5, -0.5],steps,height);
	BezConic([42.5, -0.5], [40, 0], [38.5, 1.5],steps,height);
	BezConic([38.5, 1.5], [37, 3], [35.5, 5.0],steps,height);
	BezConic([35.5, 5.0], [34, 7], [34, 10],steps,height);
}
}

module GoblinOne_contour30x25(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour30x25_skeleton(height);
			GoblinOne_contour30x25_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour30x25_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour40x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[43, 10], [43, 6], [44.0, 4.5], 
		[45, 3], [47, 3], [49, 3], 
		[50.0, 4.5], [51, 6], [51, 10], 
		[51, 13], [50.0, 15.0], [49, 17], 
		[47, 17], [45, 17], [44.0, 15.0], 
		[43, 13], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[43, 10], [43, 6], [44.0, 4.5], 
		[45, 3], [47, 3], [49, 3], 
		[50.0, 4.5], [51, 6], [51, 10], 
		[51, 13], [50.0, 15.0], [49, 17], 
		[47, 17], [45, 17], [44.0, 15.0], 
		[43, 13], ]);
}}}

module GoblinOne_contour40x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([43, 10], [43, 6], [44.0, 4.5],steps,height);
	BezConic([44.0, 4.5], [45, 3], [47, 3],steps,height);
	BezConic([47, 3], [49, 3], [50.0, 4.5],steps,height);
	BezConic([50.0, 4.5], [51, 6], [51, 10],steps,height);
	BezConic([51, 10], [51, 13], [50.0, 15.0],steps,height);
	BezConic([50.0, 15.0], [49, 17], [47, 17],steps,height);
	BezConic([47, 17], [45, 17], [44.0, 15.0],steps,height);
	BezConic([44.0, 15.0], [43, 13], [43, 10],steps,height);
}
}

module GoblinOne_contour40x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour40x25(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour40x25_skeleton(height);
			GoblinOne_contour40x25_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour40x25_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x25(steps=2, height) {
	difference() {
		GoblinOne_contour00x25(steps, height);
		
	}
}

module GoblinOne_chunk20x25(steps=2, height) {
	difference() {
		GoblinOne_contour10x25(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x25(steps, height);
	}
}

module GoblinOne_chunk30x25(steps=2, height) {
	difference() {
		GoblinOne_contour30x25(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour40x25(steps, height);
	}
}

GoblinOne_bbox0x25=[[4, -1], [60, 46]];

module GoblinOne_letter0x25(steps=2, height) {
	GoblinOne_chunk10x25(steps, height);
	GoblinOne_chunk20x25(steps, height);
	GoblinOne_chunk30x25(steps, height);
} //end skeleton

module GoblinOne_contour00x26_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 11], [3, 13], [4.5, 15.0], 
		[6, 17], [8.0, 18.5], [10, 20], 
		[13.0, 21.0], [16, 22], [19, 22], 
		[15, 25], [13.5, 27.5], [12, 30], 
		[12, 33], [12, 35], [12.5, 37.0], 
		[13, 39], [14.5, 40.5], [16, 42], 
		[18.0, 43.0], [20, 44], [22.5, 44.5], 
		[25, 45], [28.0, 45.5], [31, 46], 
		[34, 46], [38, 46], [42.0, 45.0], 
		[46, 44], [48.5, 42.5], [51, 41], 
		[52.5, 39.0], [54, 37], [54, 34], 
		[54, 32], [53.0, 30.0], [52, 28], 
		[50.0, 26.5], [48, 25], [45.0, 24.0], 
		[42, 23], [39, 23], [42, 21], 
		[45.0, 20.0], [48, 19], [51, 17], 
		[51, 18], [51.0, 19.5], [51, 21], 
		[51, 22], [51, 23], [51, 24], 
		[57.5, 22.0], [64, 20], [64, 16], 
		[63, 12], [65, 12], [67.0, 11.0], 
		[69, 10], [71, 10], [67.0, 4.5], 
		[63, -1], [61, -1], [58.5, 0.0], 
		[56, 1], [54, 2], [50, 0], 
		[44.5, -0.5], [39, -1], [32, -1], 
		[28, -1], [24.5, -1.0], [21, -1], 
		[18.0, -0.5], [15, 0], [12.0, 1.0], 
		[9, 2], [7.5, 3.5], [6, 5], 
		[4.5, 6.5],[3, 8], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 11], [3, 13], [4.5, 15.0], 
		[6, 17], [8.0, 18.5], [10, 20], 
		[13.0, 21.0], [16, 22], [19, 22], 
		[15, 25], [13.5, 27.5], [12, 30], 
		[12, 33], [12, 35], [12.5, 37.0], 
		[13, 39], [14.5, 40.5], [16, 42], 
		[18.0, 43.0], [20, 44], [22.5, 44.5], 
		[25, 45], [28.0, 45.5], [31, 46], 
		[34, 46], [38, 46], [42.0, 45.0], 
		[46, 44], [48.5, 42.5], [51, 41], 
		[52.5, 39.0], [54, 37], [54, 34], 
		[54, 32], [53.0, 30.0], [52, 28], 
		[50.0, 26.5], [48, 25], [45.0, 24.0], 
		[42, 23], [39, 23], [42, 21], 
		[45.0, 20.0], [48, 19], [51, 17], 
		[51, 18], [51.0, 19.5], [51, 21], 
		[51, 22], [51, 23], [51, 24], 
		[57.5, 22.0], [64, 20], [64, 16], 
		[63, 12], [65, 12], [67.0, 11.0], 
		[69, 10], [71, 10], [67.0, 4.5], 
		[63, -1], [61, -1], [58.5, 0.0], 
		[56, 1], [54, 2], [50, 0], 
		[44.5, -0.5], [39, -1], [32, -1], 
		[28, -1], [24.5, -1.0], [21, -1], 
		[18.0, -0.5], [15, 0], [12.0, 1.0], 
		[9, 2], [7.5, 3.5], [6, 5], 
		[4.5, 6.5],[3, 8], ]);
}}}

module GoblinOne_contour00x26_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([39, 23], [42, 21], [45.0, 20.0],steps,height);
	BezConic([51, 17], [51, 18], [51.0, 19.5],steps,height);
	BezConic([51.0, 19.5], [51, 21], [51, 22],steps,height);
	BezConic([51, 22], [51, 23], [51, 24],steps,height);
	BezConic([67.0, 11.0], [69, 10], [71, 10],steps,height);
	BezConic([32, -1], [28, -1], [24.5, -1.0],steps,height);
	BezConic([7.5, 3.5], [6, 5], [4.5, 6.5],steps,height);
}
}

module GoblinOne_contour00x26_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 11], [3, 13], [4.5, 15.0],steps,height);
	BezConic([4.5, 15.0], [6, 17], [8.0, 18.5],steps,height);
	BezConic([8.0, 18.5], [10, 20], [13.0, 21.0],steps,height);
	BezConic([13.0, 21.0], [16, 22], [19, 22],steps,height);
	BezConic([19, 22], [15, 25], [13.5, 27.5],steps,height);
	BezConic([13.5, 27.5], [12, 30], [12, 33],steps,height);
	BezConic([12, 33], [12, 35], [12.5, 37.0],steps,height);
	BezConic([12.5, 37.0], [13, 39], [14.5, 40.5],steps,height);
	BezConic([14.5, 40.5], [16, 42], [18.0, 43.0],steps,height);
	BezConic([18.0, 43.0], [20, 44], [22.5, 44.5],steps,height);
	BezConic([22.5, 44.5], [25, 45], [28.0, 45.5],steps,height);
	BezConic([28.0, 45.5], [31, 46], [34, 46],steps,height);
	BezConic([34, 46], [38, 46], [42.0, 45.0],steps,height);
	BezConic([42.0, 45.0], [46, 44], [48.5, 42.5],steps,height);
	BezConic([48.5, 42.5], [51, 41], [52.5, 39.0],steps,height);
	BezConic([52.5, 39.0], [54, 37], [54, 34],steps,height);
	BezConic([54, 34], [54, 32], [53.0, 30.0],steps,height);
	BezConic([53.0, 30.0], [52, 28], [50.0, 26.5],steps,height);
	BezConic([50.0, 26.5], [48, 25], [45.0, 24.0],steps,height);
	BezConic([45.0, 24.0], [42, 23], [39, 23],steps,height);
	BezConic([45.0, 20.0], [48, 19], [51, 17],steps,height);
	BezConic([64, 20], [64, 16], [63, 12],steps,height);
	BezConic([63, 12], [65, 12], [67.0, 11.0],steps,height);
	BezConic([63, -1], [61, -1], [58.5, 0.0],steps,height);
	BezConic([58.5, 0.0], [56, 1], [54, 2],steps,height);
	BezConic([54, 2], [50, 0], [44.5, -0.5],steps,height);
	BezConic([44.5, -0.5], [39, -1], [32, -1],steps,height);
	BezConic([24.5, -1.0], [21, -1], [18.0, -0.5],steps,height);
	BezConic([18.0, -0.5], [15, 0], [12.0, 1.0],steps,height);
	BezConic([12.0, 1.0], [9, 2], [7.5, 3.5],steps,height);
	BezConic([4.5, 6.5], [3, 8], [3, 11],steps,height);
}
}

module GoblinOne_contour00x26(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x26_skeleton(height);
			GoblinOne_contour00x26_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x26_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x26_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[33, 26], [34, 27], [36.0, 27.5], 
		[38, 28], [39.0, 29.0], [40, 30], 
		[40.5, 31.0], [41, 32], [41, 34], 
		[41, 35], [40.5, 36.0], [40, 37], 
		[39.0, 38.0], [38, 39], [36.5, 39.0], 
		[35, 39], [34, 39], [32, 39], 
		[30.5, 39.0], [29, 39], [28.0, 38.0], 
		[27, 37], [26.5, 36.0], [26, 35], 
		[26, 34], [26, 32], [28.0, 30.0], 
		[30, 28], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[33, 26], [34, 27], [36.0, 27.5], 
		[38, 28], [39.0, 29.0], [40, 30], 
		[40.5, 31.0], [41, 32], [41, 34], 
		[41, 35], [40.5, 36.0], [40, 37], 
		[39.0, 38.0], [38, 39], [36.5, 39.0], 
		[35, 39], [34, 39], [32, 39], 
		[30.5, 39.0], [29, 39], [28.0, 38.0], 
		[27, 37], [26.5, 36.0], [26, 35], 
		[26, 34], [26, 32], [28.0, 30.0], 
		[30, 28], ]);
}}}

module GoblinOne_contour10x26_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([36.0, 27.5], [38, 28], [39.0, 29.0],steps,height);
	BezConic([39.0, 29.0], [40, 30], [40.5, 31.0],steps,height);
	BezConic([40.5, 31.0], [41, 32], [41, 34],steps,height);
	BezConic([41, 34], [41, 35], [40.5, 36.0],steps,height);
	BezConic([40.5, 36.0], [40, 37], [39.0, 38.0],steps,height);
	BezConic([39.0, 38.0], [38, 39], [36.5, 39.0],steps,height);
	BezConic([36.5, 39.0], [35, 39], [34, 39],steps,height);
	BezConic([34, 39], [32, 39], [30.5, 39.0],steps,height);
	BezConic([30.5, 39.0], [29, 39], [28.0, 38.0],steps,height);
	BezConic([28.0, 38.0], [27, 37], [26.5, 36.0],steps,height);
	BezConic([26.5, 36.0], [26, 35], [26, 34],steps,height);
	BezConic([26, 34], [26, 32], [28.0, 30.0],steps,height);
	BezConic([28.0, 30.0], [30, 28], [33, 26],steps,height);
}
}

module GoblinOne_contour10x26_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([33, 26], [34, 27], [36.0, 27.5],steps,height);
}
}

module GoblinOne_contour10x26(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x26_skeleton(height);
			GoblinOne_contour10x26_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x26_additive_curves(steps, height);
	}
}

module GoblinOne_contour20x26_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 12], [19, 11], [20.0, 10.0], 
		[21, 9], [22.0, 8.0], [23, 7], 
		[24.0, 6.5], [25, 6], [27.0, 6.0], 
		[29, 6], [30.5, 5.5], [32, 5], 
		[34, 5], [37, 5], [39.5, 5.5], 
		[42, 6], [44, 7], [41, 9], 
		[37.0, 11.0], [33, 13], [30, 15], 
		[28, 16], [27.0, 17.0], [26, 18], 
		[25, 18], [23, 18], [22.5, 17.0], 
		[22, 16], [21.0, 15.5], [20, 15], 
		[19.5, 14.0],[19, 13], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 12], [19, 11], [20.0, 10.0], 
		[21, 9], [22.0, 8.0], [23, 7], 
		[24.0, 6.5], [25, 6], [27.0, 6.0], 
		[29, 6], [30.5, 5.5], [32, 5], 
		[34, 5], [37, 5], [39.5, 5.5], 
		[42, 6], [44, 7], [41, 9], 
		[37.0, 11.0], [33, 13], [30, 15], 
		[28, 16], [27.0, 17.0], [26, 18], 
		[25, 18], [23, 18], [22.5, 17.0], 
		[22, 16], [21.0, 15.5], [20, 15], 
		[19.5, 14.0],[19, 13], ]);
}}}

module GoblinOne_contour20x26_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19, 12], [19, 11], [20.0, 10.0],steps,height);
	BezConic([22.0, 8.0], [23, 7], [24.0, 6.5],steps,height);
	BezConic([24.0, 6.5], [25, 6], [27.0, 6.0],steps,height);
	BezConic([30.5, 5.5], [32, 5], [34, 5],steps,height);
	BezConic([34, 5], [37, 5], [39.5, 5.5],steps,height);
	BezConic([39.5, 5.5], [42, 6], [44, 7],steps,height);
	BezConic([44, 7], [41, 9], [37.0, 11.0],steps,height);
	BezConic([27.0, 17.0], [26, 18], [25, 18],steps,height);
	BezConic([25, 18], [23, 18], [22.5, 17.0],steps,height);
	BezConic([21.0, 15.5], [20, 15], [19.5, 14.0],steps,height);
	BezConic([19.5, 14.0], [19, 13], [19, 12],steps,height);
}
}

module GoblinOne_contour20x26_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20.0, 10.0], [21, 9], [22.0, 8.0],steps,height);
	BezConic([27.0, 6.0], [29, 6], [30.5, 5.5],steps,height);
	BezConic([37.0, 11.0], [33, 13], [30, 15],steps,height);
	BezConic([30, 15], [28, 16], [27.0, 17.0],steps,height);
	BezConic([22.5, 17.0], [22, 16], [21.0, 15.5],steps,height);
}
}

module GoblinOne_contour20x26(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour20x26_skeleton(height);
			GoblinOne_contour20x26_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x26_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x26(steps=2, height) {
	difference() {
		GoblinOne_contour00x26(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x26(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x26(steps, height);
	}
}

GoblinOne_bbox0x26=[[3, -1], [71, 46]];

module GoblinOne_letter0x26(steps=2, height) {
	GoblinOne_chunk10x26(steps, height);
} //end skeleton

module GoblinOne_contour00x27_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[8, 35], [8, 35], [7.5, 36.5], 
		[7, 38], [6.5, 39.5], [6, 41], 
		[5.5, 42.5], [5, 44], [5.0, 45.5], 
		[5, 47], [4.5, 48.0], [4, 49], 
		[4, 50], [4, 51], [4.5, 52.0], 
		[5, 53], [6.0, 54.0], [7, 55], 
		[8.0, 55.0], [9, 55], [10, 55], 
		[11, 55], [12.0, 55.0], [13, 55], 
		[14.0, 54.0], [15, 53], [15.5, 52.0], 
		[16, 51], [16, 50], [16, 49], 
		[15.5, 48.0], [15, 47], [14.5, 45.5], 
		[14, 44], [14.0, 42.5], [14, 41], 
		[13.5, 39.5], [13, 38], [12.5, 36.5], 
		[12, 35], [11, 35], [9.5, 35.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[8, 35], [8, 35], [7.5, 36.5], 
		[7, 38], [6.5, 39.5], [6, 41], 
		[5.5, 42.5], [5, 44], [5.0, 45.5], 
		[5, 47], [4.5, 48.0], [4, 49], 
		[4, 50], [4, 51], [4.5, 52.0], 
		[5, 53], [6.0, 54.0], [7, 55], 
		[8.0, 55.0], [9, 55], [10, 55], 
		[11, 55], [12.0, 55.0], [13, 55], 
		[14.0, 54.0], [15, 53], [15.5, 52.0], 
		[16, 51], [16, 50], [16, 49], 
		[15.5, 48.0], [15, 47], [14.5, 45.5], 
		[14, 44], [14.0, 42.5], [14, 41], 
		[13.5, 39.5], [13, 38], [12.5, 36.5], 
		[12, 35], [11, 35], [9.5, 35.0], 
		 ]);
}}}

module GoblinOne_contour00x27_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8, 35], [8, 35], [7.5, 36.5],steps,height);
	BezConic([6.5, 39.5], [6, 41], [5.5, 42.5],steps,height);
	BezConic([5.0, 45.5], [5, 47], [4.5, 48.0],steps,height);
	BezConic([8.0, 55.0], [9, 55], [10, 55],steps,height);
	BezConic([10, 55], [11, 55], [12.0, 55.0],steps,height);
	BezConic([15.5, 48.0], [15, 47], [14.5, 45.5],steps,height);
	BezConic([14.5, 45.5], [14, 44], [14.0, 42.5],steps,height);
}
}

module GoblinOne_contour00x27_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7.5, 36.5], [7, 38], [6.5, 39.5],steps,height);
	BezConic([5.5, 42.5], [5, 44], [5.0, 45.5],steps,height);
	BezConic([4.5, 48.0], [4, 49], [4, 50],steps,height);
	BezConic([4, 50], [4, 51], [4.5, 52.0],steps,height);
	BezConic([4.5, 52.0], [5, 53], [6.0, 54.0],steps,height);
	BezConic([6.0, 54.0], [7, 55], [8.0, 55.0],steps,height);
	BezConic([12.0, 55.0], [13, 55], [14.0, 54.0],steps,height);
	BezConic([14.0, 54.0], [15, 53], [15.5, 52.0],steps,height);
	BezConic([15.5, 52.0], [16, 51], [16, 50],steps,height);
	BezConic([16, 50], [16, 49], [15.5, 48.0],steps,height);
	BezConic([14.0, 42.5], [14, 41], [13.5, 39.5],steps,height);
	BezConic([13.5, 39.5], [13, 38], [12.5, 36.5],steps,height);
	BezConic([12.5, 36.5], [12, 35], [11, 35],steps,height);
}
}

module GoblinOne_contour00x27(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x27_skeleton(height);
			GoblinOne_contour00x27_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x27_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x27(steps=2, height) {
	difference() {
		GoblinOne_contour00x27(steps, height);
		
	}
}

GoblinOne_bbox0x27=[[4, 35], [16, 55]];

module GoblinOne_letter0x27(steps=2, height) {
	GoblinOne_chunk10x27(steps, height);
} //end skeleton

module GoblinOne_contour00x28_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 22], [3, 27], [4.0, 30.5], 
		[5, 34], [6.5, 37.5], [8, 41], 
		[10.0, 43.5], [12, 46], [14.5, 47.5], 
		[17, 49], [19.5, 50.5], [22, 52], 
		[25, 52], [26.0, 50.0], [27, 48], 
		[24, 47], [22.0, 44.5], [20, 42], 
		[18.5, 38.5], [17, 35], [16.5, 31.0], 
		[16, 27], [16, 22], [16, 18], 
		[16.5, 14.0], [17, 10], [18.5, 6.5], 
		[20, 3], [22.0, 0.5], [24, -2], 
		[27, -3], [26.0, -5.0], [25, -7], 
		[22, -7], [19.5, -6.0], [17, -5], 
		[14.5, -3.0], [12, -1], [10.0, 1.5], 
		[8, 4], [6.5, 7.5], [5, 11], 
		[4.0, 14.5],[3, 18], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 22], [3, 27], [4.0, 30.5], 
		[5, 34], [6.5, 37.5], [8, 41], 
		[10.0, 43.5], [12, 46], [14.5, 47.5], 
		[17, 49], [19.5, 50.5], [22, 52], 
		[25, 52], [26.0, 50.0], [27, 48], 
		[24, 47], [22.0, 44.5], [20, 42], 
		[18.5, 38.5], [17, 35], [16.5, 31.0], 
		[16, 27], [16, 22], [16, 18], 
		[16.5, 14.0], [17, 10], [18.5, 6.5], 
		[20, 3], [22.0, 0.5], [24, -2], 
		[27, -3], [26.0, -5.0], [25, -7], 
		[22, -7], [19.5, -6.0], [17, -5], 
		[14.5, -3.0], [12, -1], [10.0, 1.5], 
		[8, 4], [6.5, 7.5], [5, 11], 
		[4.0, 14.5],[3, 18], ]);
}}}

module GoblinOne_contour00x28_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14.5, 47.5], [17, 49], [19.5, 50.5],steps,height);
	BezConic([27, 48], [24, 47], [22.0, 44.5],steps,height);
	BezConic([22.0, 44.5], [20, 42], [18.5, 38.5],steps,height);
	BezConic([18.5, 38.5], [17, 35], [16.5, 31.0],steps,height);
	BezConic([16.5, 31.0], [16, 27], [16, 22],steps,height);
	BezConic([16, 22], [16, 18], [16.5, 14.0],steps,height);
	BezConic([16.5, 14.0], [17, 10], [18.5, 6.5],steps,height);
	BezConic([18.5, 6.5], [20, 3], [22.0, 0.5],steps,height);
	BezConic([22.0, 0.5], [24, -2], [27, -3],steps,height);
}
}

module GoblinOne_contour00x28_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 22], [3, 27], [4.0, 30.5],steps,height);
	BezConic([4.0, 30.5], [5, 34], [6.5, 37.5],steps,height);
	BezConic([6.5, 37.5], [8, 41], [10.0, 43.5],steps,height);
	BezConic([10.0, 43.5], [12, 46], [14.5, 47.5],steps,height);
	BezConic([19.5, 50.5], [22, 52], [25, 52],steps,height);
	BezConic([25, -7], [22, -7], [19.5, -6.0],steps,height);
	BezConic([19.5, -6.0], [17, -5], [14.5, -3.0],steps,height);
	BezConic([14.5, -3.0], [12, -1], [10.0, 1.5],steps,height);
	BezConic([10.0, 1.5], [8, 4], [6.5, 7.5],steps,height);
	BezConic([6.5, 7.5], [5, 11], [4.0, 14.5],steps,height);
	BezConic([4.0, 14.5], [3, 18], [3, 22],steps,height);
}
}

module GoblinOne_contour00x28(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x28_skeleton(height);
			GoblinOne_contour00x28_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x28_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x28(steps=2, height) {
	difference() {
		GoblinOne_contour00x28(steps, height);
		
	}
}

GoblinOne_bbox0x28=[[3, -7], [27, 52]];

module GoblinOne_letter0x28(steps=2, height) {
	GoblinOne_chunk10x28(steps, height);
} //end skeleton

module GoblinOne_contour00x29_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[2, -3], [5, -2], [7.0, 0.5], 
		[9, 3], [10.0, 6.5], [11, 10], 
		[12.0, 14.0], [13, 18], [13, 22], 
		[13, 27], [12.0, 31.0], [11, 35], 
		[10.0, 38.5], [9, 42], [7.0, 44.5], 
		[5, 47], [2, 48], [2.5, 50.0], 
		[3, 52], [6, 52], [8.5, 50.5], 
		[11, 49], [13.5, 47.5], [16, 46], 
		[18.0, 43.5], [20, 41], [21.5, 37.5], 
		[23, 34], [24.0, 30.5], [25, 27], 
		[25, 22], [25, 18], [24.0, 14.5], 
		[23, 11], [21.5, 7.5], [20, 4], 
		[18.0, 1.5], [16, -1], [13.5, -3.0], 
		[11, -5], [8.5, -6.0], [6, -7], 
		[3, -7],[2.5, -5.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[2, -3], [5, -2], [7.0, 0.5], 
		[9, 3], [10.0, 6.5], [11, 10], 
		[12.0, 14.0], [13, 18], [13, 22], 
		[13, 27], [12.0, 31.0], [11, 35], 
		[10.0, 38.5], [9, 42], [7.0, 44.5], 
		[5, 47], [2, 48], [2.5, 50.0], 
		[3, 52], [6, 52], [8.5, 50.5], 
		[11, 49], [13.5, 47.5], [16, 46], 
		[18.0, 43.5], [20, 41], [21.5, 37.5], 
		[23, 34], [24.0, 30.5], [25, 27], 
		[25, 22], [25, 18], [24.0, 14.5], 
		[23, 11], [21.5, 7.5], [20, 4], 
		[18.0, 1.5], [16, -1], [13.5, -3.0], 
		[11, -5], [8.5, -6.0], [6, -7], 
		[3, -7],[2.5, -5.0], ]);
}}}

module GoblinOne_contour00x29_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([2, -3], [5, -2], [7.0, 0.5],steps,height);
	BezConic([7.0, 0.5], [9, 3], [10.0, 6.5],steps,height);
	BezConic([10.0, 6.5], [11, 10], [12.0, 14.0],steps,height);
	BezConic([12.0, 14.0], [13, 18], [13, 22],steps,height);
	BezConic([13, 22], [13, 27], [12.0, 31.0],steps,height);
	BezConic([12.0, 31.0], [11, 35], [10.0, 38.5],steps,height);
	BezConic([10.0, 38.5], [9, 42], [7.0, 44.5],steps,height);
	BezConic([7.0, 44.5], [5, 47], [2, 48],steps,height);
	BezConic([8.5, 50.5], [11, 49], [13.5, 47.5],steps,height);
}
}

module GoblinOne_contour00x29_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 52], [6, 52], [8.5, 50.5],steps,height);
	BezConic([13.5, 47.5], [16, 46], [18.0, 43.5],steps,height);
	BezConic([18.0, 43.5], [20, 41], [21.5, 37.5],steps,height);
	BezConic([21.5, 37.5], [23, 34], [24.0, 30.5],steps,height);
	BezConic([24.0, 30.5], [25, 27], [25, 22],steps,height);
	BezConic([25, 22], [25, 18], [24.0, 14.5],steps,height);
	BezConic([24.0, 14.5], [23, 11], [21.5, 7.5],steps,height);
	BezConic([21.5, 7.5], [20, 4], [18.0, 1.5],steps,height);
	BezConic([18.0, 1.5], [16, -1], [13.5, -3.0],steps,height);
	BezConic([13.5, -3.0], [11, -5], [8.5, -6.0],steps,height);
	BezConic([8.5, -6.0], [6, -7], [3, -7],steps,height);
}
}

module GoblinOne_contour00x29(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x29_skeleton(height);
			GoblinOne_contour00x29_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x29_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x29(steps=2, height) {
	difference() {
		GoblinOne_contour00x29(steps, height);
		
	}
}

GoblinOne_bbox0x29=[[2, -7], [25, 52]];

module GoblinOne_letter0x29(steps=2, height) {
	GoblinOne_chunk10x29(steps, height);
} //end skeleton

module GoblinOne_contour00x2a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 29], [14, 29], [13.0, 29.5], 
		[12, 30], [11.5, 30.5], [11, 31], 
		[10.5, 31.5], [10, 32], [10, 33], 
		[10, 33], [10.5, 34.0], [11, 35], 
		[11.5, 36.5], [12, 38], [12.5, 39.5], 
		[13, 41], [13, 42], [13, 41], 
		[11.5, 40.0], [10, 39], [9.0, 38.0], 
		[8, 37], [7.5, 36.0], [7, 35], 
		[7, 35], [6, 35], [5.5, 35.0], 
		[5, 35], [5, 35], [4, 35], 
		[3.0, 35.5], [2, 36], [1, 37], 
		[1, 38], [1, 39], [1, 40], 
		[1.0, 41.0], [1, 42], [2, 42], 
		[3, 42], [4.0, 42.5], [5, 43], 
		[6.5, 43.5], [8, 44], [9.5, 44.0], 
		[11, 44], [12, 45], [11, 45], 
		[9.5, 45.0], [8, 45], [6.5, 45.5], 
		[5, 46], [4.0, 46.5], [3, 47], 
		[2, 47], [1, 47], [1.0, 48.0], 
		[1, 49], [1, 50], [1, 51], 
		[1, 52], [2, 53], [3.0, 54.0], 
		[4, 55], [5, 55], [6, 55], 
		[7, 54], [7, 54], [7.5, 53.0], 
		[8, 52], [9.0, 51.0], [10, 50], 
		[11.5, 49.0], [13, 48], [13, 47], 
		[13, 48], [12.5, 49.5], [12, 51], 
		[11.5, 52.5], [11, 54], [10.5, 55.0], 
		[10, 56], [10, 56], [10, 57], 
		[10.5, 58.0], [11, 59], [11.5, 59.5], 
		[12, 60], [13.0, 60.0], [14, 60], 
		[15, 60], [15, 60], [16.0, 60.0], 
		[17, 60], [17.5, 59.5], [18, 59], 
		[18.5, 58.0], [19, 57], [19, 56], 
		[19, 56], [18.5, 55.0], [18, 54], 
		[17.5, 52.5], [17, 51], [16.5, 49.5], 
		[16, 48], [16, 47], [17, 48], 
		[18.0, 49.0], [19, 50], [20.0, 51.0], 
		[21, 52], [21.5, 53.0], [22, 54], 
		[23, 54], [23, 54], [23.5, 54.5], 
		[24, 55], [24, 55], [26, 55], 
		[26.5, 54.0], [27, 53], [28, 52], 
		[29, 51], [29, 50], [29, 49], 
		[28.5, 48.0], [28, 47], [27, 47], 
		[27, 47], [25.5, 46.5], [24, 46], 
		[23.0, 45.5], [22, 45], [20.0, 45.0], 
		[18, 45], [17, 45], [18, 44], 
		[20.0, 44.0], [22, 44], [23.0, 43.5], 
		[24, 43], [25.5, 42.5], [27, 42], 
		[27, 42], [28, 42], [28.5, 41.0], 
		[29, 40], [29, 39], [29, 38], 
		[28, 37], [27, 36], [26.5, 35.5], 
		[26, 35], [24, 35], [24, 35], 
		[23, 35], [23, 35], [22.0, 36.0], 
		[21, 37], [20.0, 38.0], [19, 39], 
		[18.0, 40.0], [17, 41], [16, 42], 
		[16, 41], [16.5, 39.5], [17, 38], 
		[17.5, 36.5], [18, 35], [18.5, 34.0], 
		[19, 33], [19, 33], [19, 32], 
		[18.5, 31.5], [18, 31], [17.5, 30.5], 
		[17, 30], [16.0, 29.5], [15, 29], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 29], [14, 29], [13.0, 29.5], 
		[12, 30], [11.5, 30.5], [11, 31], 
		[10.5, 31.5], [10, 32], [10, 33], 
		[10, 33], [10.5, 34.0], [11, 35], 
		[11.5, 36.5], [12, 38], [12.5, 39.5], 
		[13, 41], [13, 42], [13, 41], 
		[11.5, 40.0], [10, 39], [9.0, 38.0], 
		[8, 37], [7.5, 36.0], [7, 35], 
		[7, 35], [6, 35], [5.5, 35.0], 
		[5, 35], [5, 35], [4, 35], 
		[3.0, 35.5], [2, 36], [1, 37], 
		[1, 38], [1, 39], [1, 40], 
		[1.0, 41.0], [1, 42], [2, 42], 
		[3, 42], [4.0, 42.5], [5, 43], 
		[6.5, 43.5], [8, 44], [9.5, 44.0], 
		[11, 44], [12, 45], [11, 45], 
		[9.5, 45.0], [8, 45], [6.5, 45.5], 
		[5, 46], [4.0, 46.5], [3, 47], 
		[2, 47], [1, 47], [1.0, 48.0], 
		[1, 49], [1, 50], [1, 51], 
		[1, 52], [2, 53], [3.0, 54.0], 
		[4, 55], [5, 55], [6, 55], 
		[7, 54], [7, 54], [7.5, 53.0], 
		[8, 52], [9.0, 51.0], [10, 50], 
		[11.5, 49.0], [13, 48], [13, 47], 
		[13, 48], [12.5, 49.5], [12, 51], 
		[11.5, 52.5], [11, 54], [10.5, 55.0], 
		[10, 56], [10, 56], [10, 57], 
		[10.5, 58.0], [11, 59], [11.5, 59.5], 
		[12, 60], [13.0, 60.0], [14, 60], 
		[15, 60], [15, 60], [16.0, 60.0], 
		[17, 60], [17.5, 59.5], [18, 59], 
		[18.5, 58.0], [19, 57], [19, 56], 
		[19, 56], [18.5, 55.0], [18, 54], 
		[17.5, 52.5], [17, 51], [16.5, 49.5], 
		[16, 48], [16, 47], [17, 48], 
		[18.0, 49.0], [19, 50], [20.0, 51.0], 
		[21, 52], [21.5, 53.0], [22, 54], 
		[23, 54], [23, 54], [23.5, 54.5], 
		[24, 55], [24, 55], [26, 55], 
		[26.5, 54.0], [27, 53], [28, 52], 
		[29, 51], [29, 50], [29, 49], 
		[28.5, 48.0], [28, 47], [27, 47], 
		[27, 47], [25.5, 46.5], [24, 46], 
		[23.0, 45.5], [22, 45], [20.0, 45.0], 
		[18, 45], [17, 45], [18, 44], 
		[20.0, 44.0], [22, 44], [23.0, 43.5], 
		[24, 43], [25.5, 42.5], [27, 42], 
		[27, 42], [28, 42], [28.5, 41.0], 
		[29, 40], [29, 39], [29, 38], 
		[28, 37], [27, 36], [26.5, 35.5], 
		[26, 35], [24, 35], [24, 35], 
		[23, 35], [23, 35], [22.0, 36.0], 
		[21, 37], [20.0, 38.0], [19, 39], 
		[18.0, 40.0], [17, 41], [16, 42], 
		[16, 41], [16.5, 39.5], [17, 38], 
		[17.5, 36.5], [18, 35], [18.5, 34.0], 
		[19, 33], [19, 33], [19, 32], 
		[18.5, 31.5], [18, 31], [17.5, 30.5], 
		[17, 30], [16.0, 29.5], [15, 29], 
		 ]);
}}}

module GoblinOne_contour00x2a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11.5, 30.5], [11, 31], [10.5, 31.5],steps,height);
	BezConic([10, 33], [10, 33], [10.5, 34.0],steps,height);
	BezConic([10.5, 34.0], [11, 35], [11.5, 36.5],steps,height);
	BezConic([11.5, 36.5], [12, 38], [12.5, 39.5],steps,height);
	BezConic([12.5, 39.5], [13, 41], [13, 42],steps,height);
	BezConic([11.5, 40.0], [10, 39], [9.0, 38.0],steps,height);
	BezConic([9.0, 38.0], [8, 37], [7.5, 36.0],steps,height);
	BezConic([7.5, 36.0], [7, 35], [7, 35],steps,height);
	BezConic([7, 35], [6, 35], [5.5, 35.0],steps,height);
	BezConic([5.5, 35.0], [5, 35], [5, 35],steps,height);
	BezConic([1, 37], [1, 38], [1, 39],steps,height);
	BezConic([1, 39], [1, 40], [1.0, 41.0],steps,height);
	BezConic([2, 42], [3, 42], [4.0, 42.5],steps,height);
	BezConic([9.5, 44.0], [11, 44], [12, 45],steps,height);
	BezConic([12, 45], [11, 45], [9.5, 45.0],steps,height);
	BezConic([4.0, 46.5], [3, 47], [2, 47],steps,height);
	BezConic([1.0, 48.0], [1, 49], [1, 50],steps,height);
	BezConic([1, 50], [1, 51], [1, 52],steps,height);
	BezConic([7.5, 53.0], [8, 52], [9.0, 51.0],steps,height);
	BezConic([9.0, 51.0], [10, 50], [11.5, 49.0],steps,height);
	BezConic([13, 47], [13, 48], [12.5, 49.5],steps,height);
	BezConic([11.5, 52.5], [11, 54], [10.5, 55.0],steps,height);
	BezConic([10.5, 55.0], [10, 56], [10, 56],steps,height);
	BezConic([13.0, 60.0], [14, 60], [15, 60],steps,height);
	BezConic([15, 60], [15, 60], [16.0, 60.0],steps,height);
	BezConic([18.5, 55.0], [18, 54], [17.5, 52.5],steps,height);
	BezConic([17.5, 52.5], [17, 51], [16.5, 49.5],steps,height);
	BezConic([16.5, 49.5], [16, 48], [16, 47],steps,height);
	BezConic([20.0, 51.0], [21, 52], [21.5, 53.0],steps,height);
	BezConic([23, 54], [23, 54], [23.5, 54.5],steps,height);
	BezConic([23.5, 54.5], [24, 55], [24, 55],steps,height);
	BezConic([26.5, 54.0], [27, 53], [28, 52],steps,height);
	BezConic([25.5, 46.5], [24, 46], [23.0, 45.5],steps,height);
	BezConic([20.0, 45.0], [18, 45], [17, 45],steps,height);
	BezConic([17, 45], [18, 44], [20.0, 44.0],steps,height);
	BezConic([23.0, 43.5], [24, 43], [25.5, 42.5],steps,height);
	BezConic([25.5, 42.5], [27, 42], [27, 42],steps,height);
	BezConic([28, 37], [27, 36], [26.5, 35.5],steps,height);
	BezConic([24, 35], [24, 35], [23, 35],steps,height);
	BezConic([23, 35], [23, 35], [22.0, 36.0],steps,height);
	BezConic([22.0, 36.0], [21, 37], [20.0, 38.0],steps,height);
	BezConic([20.0, 38.0], [19, 39], [18.0, 40.0],steps,height);
	BezConic([18.0, 40.0], [17, 41], [16, 42],steps,height);
	BezConic([16, 42], [16, 41], [16.5, 39.5],steps,height);
	BezConic([17.5, 36.5], [18, 35], [18.5, 34.0],steps,height);
	BezConic([18.5, 34.0], [19, 33], [19, 33],steps,height);
	BezConic([18.5, 31.5], [18, 31], [17.5, 30.5],steps,height);
	BezConic([16.0, 29.5], [15, 29], [15, 29],steps,height);
}
}

module GoblinOne_contour00x2a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 29], [14, 29], [13.0, 29.5],steps,height);
	BezConic([13.0, 29.5], [12, 30], [11.5, 30.5],steps,height);
	BezConic([10.5, 31.5], [10, 32], [10, 33],steps,height);
	BezConic([13, 42], [13, 41], [11.5, 40.0],steps,height);
	BezConic([5, 35], [4, 35], [3.0, 35.5],steps,height);
	BezConic([3.0, 35.5], [2, 36], [1, 37],steps,height);
	BezConic([1.0, 41.0], [1, 42], [2, 42],steps,height);
	BezConic([4.0, 42.5], [5, 43], [6.5, 43.5],steps,height);
	BezConic([6.5, 43.5], [8, 44], [9.5, 44.0],steps,height);
	BezConic([9.5, 45.0], [8, 45], [6.5, 45.5],steps,height);
	BezConic([6.5, 45.5], [5, 46], [4.0, 46.5],steps,height);
	BezConic([2, 47], [1, 47], [1.0, 48.0],steps,height);
	BezConic([1, 52], [2, 53], [3.0, 54.0],steps,height);
	BezConic([3.0, 54.0], [4, 55], [5, 55],steps,height);
	BezConic([5, 55], [6, 55], [7, 54],steps,height);
	BezConic([7, 54], [7, 54], [7.5, 53.0],steps,height);
	BezConic([11.5, 49.0], [13, 48], [13, 47],steps,height);
	BezConic([12.5, 49.5], [12, 51], [11.5, 52.5],steps,height);
	BezConic([10, 56], [10, 57], [10.5, 58.0],steps,height);
	BezConic([10.5, 58.0], [11, 59], [11.5, 59.5],steps,height);
	BezConic([11.5, 59.5], [12, 60], [13.0, 60.0],steps,height);
	BezConic([16.0, 60.0], [17, 60], [17.5, 59.5],steps,height);
	BezConic([17.5, 59.5], [18, 59], [18.5, 58.0],steps,height);
	BezConic([18.5, 58.0], [19, 57], [19, 56],steps,height);
	BezConic([19, 56], [19, 56], [18.5, 55.0],steps,height);
	BezConic([16, 47], [17, 48], [18.0, 49.0],steps,height);
	BezConic([18.0, 49.0], [19, 50], [20.0, 51.0],steps,height);
	BezConic([21.5, 53.0], [22, 54], [23, 54],steps,height);
	BezConic([24, 55], [26, 55], [26.5, 54.0],steps,height);
	BezConic([28, 52], [29, 51], [29, 50],steps,height);
	BezConic([29, 50], [29, 49], [28.5, 48.0],steps,height);
	BezConic([28.5, 48.0], [28, 47], [27, 47],steps,height);
	BezConic([27, 47], [27, 47], [25.5, 46.5],steps,height);
	BezConic([23.0, 45.5], [22, 45], [20.0, 45.0],steps,height);
	BezConic([20.0, 44.0], [22, 44], [23.0, 43.5],steps,height);
	BezConic([27, 42], [28, 42], [28.5, 41.0],steps,height);
	BezConic([28.5, 41.0], [29, 40], [29, 39],steps,height);
	BezConic([29, 39], [29, 38], [28, 37],steps,height);
	BezConic([26.5, 35.5], [26, 35], [24, 35],steps,height);
	BezConic([16.5, 39.5], [17, 38], [17.5, 36.5],steps,height);
	BezConic([19, 33], [19, 32], [18.5, 31.5],steps,height);
	BezConic([17.5, 30.5], [17, 30], [16.0, 29.5],steps,height);
}
}

module GoblinOne_contour00x2a(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x2a_skeleton(height);
			GoblinOne_contour00x2a_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x2a_additive_curves(steps, height);
	}
}

module GoblinOne_chunk00x2a(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x2a(steps, height);
	}
}

GoblinOne_bbox0x2a=[[1, 29], [29, 60]];

module GoblinOne_letter0x2a(steps=2, height) {
	GoblinOne_chunk00x2a(steps, height);
} //end skeleton

module GoblinOne_contour00x2b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, 19], [10.0, 19.0], [4, 19], 
		[4.0, 23.0], [4, 27], [10.0, 27.0], 
		[16, 27], [16.0, 33.0], [16, 39], 
		[20.0, 39.0], [24, 39], [24.0, 33.0], 
		[24, 27], [30.0, 27.0], [36, 27], 
		[36.0, 23.0], [36, 19], [30.0, 19.0], 
		[24, 19], [24.0, 13.0], [24, 7], 
		[20.0, 7.0], [16, 7], [16.0, 13.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, 19], [10.0, 19.0], [4, 19], 
		[4.0, 23.0], [4, 27], [10.0, 27.0], 
		[16, 27], [16.0, 33.0], [16, 39], 
		[20.0, 39.0], [24, 39], [24.0, 33.0], 
		[24, 27], [30.0, 27.0], [36, 27], 
		[36.0, 23.0], [36, 19], [30.0, 19.0], 
		[24, 19], [24.0, 13.0], [24, 7], 
		[20.0, 7.0], [16, 7], [16.0, 13.0], 
		 ]);
}}}

module GoblinOne_contour00x2b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x2b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x2b(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x2b_skeleton(height);
			GoblinOne_contour00x2b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x2b_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x2b(steps=2, height) {
	difference() {
		GoblinOne_contour00x2b(steps, height);
		
	}
}

GoblinOne_bbox0x2b=[[4, 7], [36, 39]];

module GoblinOne_letter0x2b(steps=2, height) {
	GoblinOne_chunk10x2b(steps, height);
} //end skeleton

module GoblinOne_contour00x2c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 6], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [19.0, 9.5], 
		[20, 8], [20, 6], [20, 1], 
		[17.5, -3.5], [15, -8], [11, -11], 
		[9.0, -10.0], [7, -9], [9, -7], 
		[10.0, -5.0], [11, -3], [12, -1], 
		[11, -1], [11, -1], [9, -1], 
		[8.0, -0.5], [7, 0], [6.0, 1.0], 
		[5, 2], [4.5, 3.5], [4, 5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 6], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [19.0, 9.5], 
		[20, 8], [20, 6], [20, 1], 
		[17.5, -3.5], [15, -8], [11, -11], 
		[9.0, -10.0], [7, -9], [9, -7], 
		[10.0, -5.0], [11, -3], [12, -1], 
		[11, -1], [11, -1], [9, -1], 
		[8.0, -0.5], [7, 0], [6.0, 1.0], 
		[5, 2], [4.5, 3.5], [4, 5], 
		 ]);
}}}

module GoblinOne_contour00x2c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, -9], [9, -7], [10.0, -5.0],steps,height);
	BezConic([10.0, -5.0], [11, -3], [12, -1],steps,height);
	BezConic([12, -1], [11, -1], [11, -1],steps,height);
}
}

module GoblinOne_contour00x2c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 6], [4, 8], [4.5, 9.5],steps,height);
	BezConic([4.5, 9.5], [5, 11], [6.0, 12.0],steps,height);
	BezConic([6.0, 12.0], [7, 13], [8.5, 13.5],steps,height);
	BezConic([8.5, 13.5], [10, 14], [12, 14],steps,height);
	BezConic([12, 14], [13, 14], [14.5, 13.5],steps,height);
	BezConic([14.5, 13.5], [16, 13], [17.0, 12.0],steps,height);
	BezConic([17.0, 12.0], [18, 11], [19.0, 9.5],steps,height);
	BezConic([19.0, 9.5], [20, 8], [20, 6],steps,height);
	BezConic([20, 6], [20, 1], [17.5, -3.5],steps,height);
	BezConic([17.5, -3.5], [15, -8], [11, -11],steps,height);
	BezConic([11, -1], [9, -1], [8.0, -0.5],steps,height);
	BezConic([8.0, -0.5], [7, 0], [6.0, 1.0],steps,height);
	BezConic([6.0, 1.0], [5, 2], [4.5, 3.5],steps,height);
	BezConic([4.5, 3.5], [4, 5], [4, 6],steps,height);
}
}

module GoblinOne_contour00x2c(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x2c_skeleton(height);
			GoblinOne_contour00x2c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x2c_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x2c(steps=2, height) {
	difference() {
		GoblinOne_contour00x2c(steps, height);
		
	}
}

GoblinOne_bbox0x2c=[[4, -11], [20, 14]];

module GoblinOne_letter0x2c(steps=2, height) {
	GoblinOne_chunk10x2c(steps, height);
} //end skeleton

module GoblinOne_contour00x2d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 27], [20.0, 27.0], [36, 27], 
		[36.0, 23.0], [36, 19], [20.0, 19.0], 
		[4, 19],[4.0, 23.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 27], [20.0, 27.0], [36, 27], 
		[36.0, 23.0], [36, 19], [20.0, 19.0], 
		[4, 19],[4.0, 23.0], ]);
}}}

module GoblinOne_contour00x2d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x2d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x2d(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x2d_skeleton(height);
			GoblinOne_contour00x2d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x2d_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x2d(steps=2, height) {
	difference() {
		GoblinOne_contour00x2d(steps, height);
		
	}
}

GoblinOne_bbox0x2d=[[4, 19], [36, 27]];

module GoblinOne_letter0x2d(steps=2, height) {
	GoblinOne_chunk10x2d(steps, height);
} //end skeleton

module GoblinOne_contour00x2e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 7], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [18.5, 9.5], 
		[19, 8], [19, 7], [19, 5], 
		[18.5, 3.5], [18, 2], [17.0, 1.0], 
		[16, 0], [14.5, -0.5], [13, -1], 
		[12, -1], [10, -1], [8.5, -0.5], 
		[7, 0], [6.0, 1.0], [5, 2], 
		[4.5, 3.5],[4, 5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 7], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [18.5, 9.5], 
		[19, 8], [19, 7], [19, 5], 
		[18.5, 3.5], [18, 2], [17.0, 1.0], 
		[16, 0], [14.5, -0.5], [13, -1], 
		[12, -1], [10, -1], [8.5, -0.5], 
		[7, 0], [6.0, 1.0], [5, 2], 
		[4.5, 3.5],[4, 5], ]);
}}}

module GoblinOne_contour00x2e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x2e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 7], [4, 8], [4.5, 9.5],steps,height);
	BezConic([4.5, 9.5], [5, 11], [6.0, 12.0],steps,height);
	BezConic([6.0, 12.0], [7, 13], [8.5, 13.5],steps,height);
	BezConic([8.5, 13.5], [10, 14], [12, 14],steps,height);
	BezConic([12, 14], [13, 14], [14.5, 13.5],steps,height);
	BezConic([14.5, 13.5], [16, 13], [17.0, 12.0],steps,height);
	BezConic([17.0, 12.0], [18, 11], [18.5, 9.5],steps,height);
	BezConic([18.5, 9.5], [19, 8], [19, 7],steps,height);
	BezConic([19, 7], [19, 5], [18.5, 3.5],steps,height);
	BezConic([18.5, 3.5], [18, 2], [17.0, 1.0],steps,height);
	BezConic([17.0, 1.0], [16, 0], [14.5, -0.5],steps,height);
	BezConic([14.5, -0.5], [13, -1], [12, -1],steps,height);
	BezConic([12, -1], [10, -1], [8.5, -0.5],steps,height);
	BezConic([8.5, -0.5], [7, 0], [6.0, 1.0],steps,height);
	BezConic([6.0, 1.0], [5, 2], [4.5, 3.5],steps,height);
	BezConic([4.5, 3.5], [4, 5], [4, 7],steps,height);
}
}

module GoblinOne_contour00x2e(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x2e_skeleton(height);
			GoblinOne_contour00x2e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x2e_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x2e(steps=2, height) {
	difference() {
		GoblinOne_contour00x2e(steps, height);
		
	}
}

GoblinOne_bbox0x2e=[[4, -1], [19, 14]];

module GoblinOne_letter0x2e(steps=2, height) {
	GoblinOne_chunk10x2e(steps, height);
} //end skeleton

module GoblinOne_contour00x2f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[17, 49], [21.5, 49.0], [26, 49], 
		[18.5, 22.0], [11, -5], [7.0, -5.0], 
		[3, -5],[10.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[17, 49], [21.5, 49.0], [26, 49], 
		[18.5, 22.0], [11, -5], [7.0, -5.0], 
		[3, -5],[10.0, 22.0], ]);
}}}

module GoblinOne_contour00x2f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x2f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x2f(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x2f_skeleton(height);
			GoblinOne_contour00x2f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x2f_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x2f(steps=2, height) {
	difference() {
		GoblinOne_contour00x2f(steps, height);
		
	}
}

GoblinOne_bbox0x2f=[[3, -5], [26, 49]];

module GoblinOne_letter0x2f(steps=2, height) {
	GoblinOne_chunk10x2f(steps, height);
} //end skeleton

module GoblinOne_contour00x30_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 22], [4, 27], [5.5, 30.0], 
		[7, 33], [9.0, 35.5], [11, 38], 
		[13.5, 40.0], [16, 42], [19.0, 43.5], 
		[22, 45], [25.0, 45.5], [28, 46], 
		[32, 46], [35, 46], [38.0, 45.5], 
		[41, 45], [44.5, 43.5], [48, 42], 
		[50.5, 40.0], [53, 38], [55.0, 35.5], 
		[57, 33], [58.0, 30.0], [59, 27], 
		[59, 22], [59, 18], [58.0, 15.0], 
		[57, 12], [55.0, 9.0], [53, 6], 
		[50.5, 4.5], [48, 3], [44.5, 1.5], 
		[41, 0], [38.0, -0.5], [35, -1], 
		[32, -1], [28, -1], [25.0, -0.5], 
		[22, 0], [19.0, 1.0], [16, 2], 
		[13.5, 4.0], [11, 6], [9.0, 8.5], 
		[7, 11], [5.5, 14.5], [4, 18], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 22], [4, 27], [5.5, 30.0], 
		[7, 33], [9.0, 35.5], [11, 38], 
		[13.5, 40.0], [16, 42], [19.0, 43.5], 
		[22, 45], [25.0, 45.5], [28, 46], 
		[32, 46], [35, 46], [38.0, 45.5], 
		[41, 45], [44.5, 43.5], [48, 42], 
		[50.5, 40.0], [53, 38], [55.0, 35.5], 
		[57, 33], [58.0, 30.0], [59, 27], 
		[59, 22], [59, 18], [58.0, 15.0], 
		[57, 12], [55.0, 9.0], [53, 6], 
		[50.5, 4.5], [48, 3], [44.5, 1.5], 
		[41, 0], [38.0, -0.5], [35, -1], 
		[32, -1], [28, -1], [25.0, -0.5], 
		[22, 0], [19.0, 1.0], [16, 2], 
		[13.5, 4.0], [11, 6], [9.0, 8.5], 
		[7, 11], [5.5, 14.5], [4, 18], 
		 ]);
}}}

module GoblinOne_contour00x30_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x30_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 22], [4, 27], [5.5, 30.0],steps,height);
	BezConic([5.5, 30.0], [7, 33], [9.0, 35.5],steps,height);
	BezConic([9.0, 35.5], [11, 38], [13.5, 40.0],steps,height);
	BezConic([13.5, 40.0], [16, 42], [19.0, 43.5],steps,height);
	BezConic([19.0, 43.5], [22, 45], [25.0, 45.5],steps,height);
	BezConic([25.0, 45.5], [28, 46], [32, 46],steps,height);
	BezConic([32, 46], [35, 46], [38.0, 45.5],steps,height);
	BezConic([38.0, 45.5], [41, 45], [44.5, 43.5],steps,height);
	BezConic([44.5, 43.5], [48, 42], [50.5, 40.0],steps,height);
	BezConic([50.5, 40.0], [53, 38], [55.0, 35.5],steps,height);
	BezConic([55.0, 35.5], [57, 33], [58.0, 30.0],steps,height);
	BezConic([58.0, 30.0], [59, 27], [59, 22],steps,height);
	BezConic([59, 22], [59, 18], [58.0, 15.0],steps,height);
	BezConic([58.0, 15.0], [57, 12], [55.0, 9.0],steps,height);
	BezConic([55.0, 9.0], [53, 6], [50.5, 4.5],steps,height);
	BezConic([50.5, 4.5], [48, 3], [44.5, 1.5],steps,height);
	BezConic([44.5, 1.5], [41, 0], [38.0, -0.5],steps,height);
	BezConic([38.0, -0.5], [35, -1], [32, -1],steps,height);
	BezConic([32, -1], [28, -1], [25.0, -0.5],steps,height);
	BezConic([25.0, -0.5], [22, 0], [19.0, 1.0],steps,height);
	BezConic([19.0, 1.0], [16, 2], [13.5, 4.0],steps,height);
	BezConic([13.5, 4.0], [11, 6], [9.0, 8.5],steps,height);
	BezConic([9.0, 8.5], [7, 11], [5.5, 14.5],steps,height);
	BezConic([5.5, 14.5], [4, 18], [4, 22],steps,height);
}
}

module GoblinOne_contour00x30(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x30_skeleton(height);
			GoblinOne_contour00x30_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x30_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x30_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[22, 22], [22, 19], [22.5, 15.5], 
		[23, 12], [24.5, 10.0], [26, 8], 
		[27.5, 6.5], [29, 5], [32, 5], 
		[34, 5], [36.0, 6.5], [38, 8], 
		[39.0, 10.5], [40, 13], [40.5, 16.0], 
		[41, 19], [41, 22], [41, 26], 
		[40.5, 29.0], [40, 32], [39.0, 34.5], 
		[38, 37], [36.0, 38.5], [34, 40], 
		[32, 40], [29, 40], [27.5, 38.5], 
		[26, 37], [24.5, 34.5], [23, 32], 
		[22.5, 29.0],[22, 26], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[22, 22], [22, 19], [22.5, 15.5], 
		[23, 12], [24.5, 10.0], [26, 8], 
		[27.5, 6.5], [29, 5], [32, 5], 
		[34, 5], [36.0, 6.5], [38, 8], 
		[39.0, 10.5], [40, 13], [40.5, 16.0], 
		[41, 19], [41, 22], [41, 26], 
		[40.5, 29.0], [40, 32], [39.0, 34.5], 
		[38, 37], [36.0, 38.5], [34, 40], 
		[32, 40], [29, 40], [27.5, 38.5], 
		[26, 37], [24.5, 34.5], [23, 32], 
		[22.5, 29.0],[22, 26], ]);
}}}

module GoblinOne_contour10x30_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22, 22], [22, 19], [22.5, 15.5],steps,height);
	BezConic([22.5, 15.5], [23, 12], [24.5, 10.0],steps,height);
	BezConic([24.5, 10.0], [26, 8], [27.5, 6.5],steps,height);
	BezConic([27.5, 6.5], [29, 5], [32, 5],steps,height);
	BezConic([32, 5], [34, 5], [36.0, 6.5],steps,height);
	BezConic([36.0, 6.5], [38, 8], [39.0, 10.5],steps,height);
	BezConic([39.0, 10.5], [40, 13], [40.5, 16.0],steps,height);
	BezConic([40.5, 16.0], [41, 19], [41, 22],steps,height);
	BezConic([41, 22], [41, 26], [40.5, 29.0],steps,height);
	BezConic([40.5, 29.0], [40, 32], [39.0, 34.5],steps,height);
	BezConic([39.0, 34.5], [38, 37], [36.0, 38.5],steps,height);
	BezConic([36.0, 38.5], [34, 40], [32, 40],steps,height);
	BezConic([32, 40], [29, 40], [27.5, 38.5],steps,height);
	BezConic([27.5, 38.5], [26, 37], [24.5, 34.5],steps,height);
	BezConic([24.5, 34.5], [23, 32], [22.5, 29.0],steps,height);
	BezConic([22.5, 29.0], [22, 26], [22, 22],steps,height);
}
}

module GoblinOne_contour10x30_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x30(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x30_skeleton(height);
			GoblinOne_contour10x30_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x30_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x30(steps=2, height) {
	difference() {
		GoblinOne_contour00x30(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x30(steps, height);
	}
}

GoblinOne_bbox0x30=[[4, -1], [59, 46]];

module GoblinOne_letter0x30(steps=2, height) {
	GoblinOne_chunk10x30(steps, height);
} //end skeleton

module GoblinOne_contour00x31_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[11, 8], [11.0, 21.0], [11, 34], 
		[6.5, 36.5], [2, 39], [11.5, 42.0], 
		[21, 45], [24.0, 45.0], [27, 45], 
		[27.0, 26.5], [27, 8], [31.0, 4.0], 
		[35, 0], [18.5, 0.0], [2, 0], 
		[6.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[11, 8], [11.0, 21.0], [11, 34], 
		[6.5, 36.5], [2, 39], [11.5, 42.0], 
		[21, 45], [24.0, 45.0], [27, 45], 
		[27.0, 26.5], [27, 8], [31.0, 4.0], 
		[35, 0], [18.5, 0.0], [2, 0], 
		[6.5, 4.0], ]);
}}}

module GoblinOne_contour00x31_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x31_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x31(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x31_skeleton(height);
			GoblinOne_contour00x31_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x31_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x31(steps=2, height) {
	difference() {
		GoblinOne_contour00x31(steps, height);
		
	}
}

GoblinOne_bbox0x31=[[2, 0], [35, 45]];

module GoblinOne_letter0x31(steps=2, height) {
	GoblinOne_chunk10x31(steps, height);
} //end skeleton

module GoblinOne_contour00x32_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 0], [6, 2], [5.5, 3.5], 
		[5, 5], [5, 8], [5, 10], 
		[5.5, 12.0], [6, 14], [7.5, 15.5], 
		[9, 17], [10.5, 18.5], [12, 20], 
		[14.0, 20.5], [16, 21], [18.5, 22.0], 
		[21, 23], [23, 23], [27, 24], 
		[29.5, 24.5], [32, 25], [34.0, 26.0], 
		[36, 27], [37.0, 28.5], [38, 30], 
		[38, 32], [38, 34], [37.5, 35.5], 
		[37, 37], [35.5, 37.5], [34, 38], 
		[32.5, 38.5], [31, 39], [29, 39], 
		[27, 39], [25.0, 38.5], [23, 38], 
		[22.0, 37.0], [21, 36], [20.5, 34.0], 
		[20, 32], [20, 29], [13.0, 29.0], 
		[6, 29], [6, 30], [6.0, 31.0], 
		[6, 32], [6, 32], [6, 35], 
		[6.5, 37.0], [7, 39], [9.0, 40.5], 
		[11, 42], [13.0, 43.0], [15, 44], 
		[18.0, 45.0], [21, 46], [24.0, 46.0], 
		[27, 46], [30, 46], [36, 46], 
		[41.0, 45.0], [46, 44], [49.0, 42.0], 
		[52, 40], [53.5, 37.5], [55, 35], 
		[55, 32], [55, 29], [54.0, 27.5], 
		[53, 26], [51.5, 24.5], [50, 23], 
		[48.0, 21.5], [46, 20], [44.0, 19.5], 
		[42, 19], [39.5, 18.0], [37, 17], 
		[34, 17], [31, 16], [28.5, 15.5], 
		[26, 15], [24.5, 14.0], [23, 13], 
		[21.5, 12.0], [20, 11], [20, 10], 
		[20, 9], [20.5, 9.0], [21, 9], 
		[21, 8], [31.0, 8.0], [41, 8], 
		[47.5, 13.5], [54, 19], [54.0, 9.5], 
		[54, 0],[30.0, 0.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 0], [6, 2], [5.5, 3.5], 
		[5, 5], [5, 8], [5, 10], 
		[5.5, 12.0], [6, 14], [7.5, 15.5], 
		[9, 17], [10.5, 18.5], [12, 20], 
		[14.0, 20.5], [16, 21], [18.5, 22.0], 
		[21, 23], [23, 23], [27, 24], 
		[29.5, 24.5], [32, 25], [34.0, 26.0], 
		[36, 27], [37.0, 28.5], [38, 30], 
		[38, 32], [38, 34], [37.5, 35.5], 
		[37, 37], [35.5, 37.5], [34, 38], 
		[32.5, 38.5], [31, 39], [29, 39], 
		[27, 39], [25.0, 38.5], [23, 38], 
		[22.0, 37.0], [21, 36], [20.5, 34.0], 
		[20, 32], [20, 29], [13.0, 29.0], 
		[6, 29], [6, 30], [6.0, 31.0], 
		[6, 32], [6, 32], [6, 35], 
		[6.5, 37.0], [7, 39], [9.0, 40.5], 
		[11, 42], [13.0, 43.0], [15, 44], 
		[18.0, 45.0], [21, 46], [24.0, 46.0], 
		[27, 46], [30, 46], [36, 46], 
		[41.0, 45.0], [46, 44], [49.0, 42.0], 
		[52, 40], [53.5, 37.5], [55, 35], 
		[55, 32], [55, 29], [54.0, 27.5], 
		[53, 26], [51.5, 24.5], [50, 23], 
		[48.0, 21.5], [46, 20], [44.0, 19.5], 
		[42, 19], [39.5, 18.0], [37, 17], 
		[34, 17], [31, 16], [28.5, 15.5], 
		[26, 15], [24.5, 14.0], [23, 13], 
		[21.5, 12.0], [20, 11], [20, 10], 
		[20, 9], [20.5, 9.0], [21, 9], 
		[21, 8], [31.0, 8.0], [41, 8], 
		[47.5, 13.5], [54, 19], [54.0, 9.5], 
		[54, 0],[30.0, 0.0], ]);
}}}

module GoblinOne_contour00x32_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 0], [6, 2], [5.5, 3.5],steps,height);
	BezConic([7.5, 15.5], [9, 17], [10.5, 18.5],steps,height);
	BezConic([14.0, 20.5], [16, 21], [18.5, 22.0],steps,height);
	BezConic([29.5, 24.5], [32, 25], [34.0, 26.0],steps,height);
	BezConic([34.0, 26.0], [36, 27], [37.0, 28.5],steps,height);
	BezConic([37.0, 28.5], [38, 30], [38, 32],steps,height);
	BezConic([38, 32], [38, 34], [37.5, 35.5],steps,height);
	BezConic([37.5, 35.5], [37, 37], [35.5, 37.5],steps,height);
	BezConic([35.5, 37.5], [34, 38], [32.5, 38.5],steps,height);
	BezConic([32.5, 38.5], [31, 39], [29, 39],steps,height);
	BezConic([29, 39], [27, 39], [25.0, 38.5],steps,height);
	BezConic([25.0, 38.5], [23, 38], [22.0, 37.0],steps,height);
	BezConic([22.0, 37.0], [21, 36], [20.5, 34.0],steps,height);
	BezConic([20.5, 34.0], [20, 32], [20, 29],steps,height);
	BezConic([6, 29], [6, 30], [6.0, 31.0],steps,height);
	BezConic([6.0, 31.0], [6, 32], [6, 32],steps,height);
	BezConic([24.0, 46.0], [27, 46], [30, 46],steps,height);
	BezConic([44.0, 19.5], [42, 19], [39.5, 18.0],steps,height);
	BezConic([28.5, 15.5], [26, 15], [24.5, 14.0],steps,height);
	BezConic([24.5, 14.0], [23, 13], [21.5, 12.0],steps,height);
	BezConic([21.5, 12.0], [20, 11], [20, 10],steps,height);
	BezConic([20, 10], [20, 9], [20.5, 9.0],steps,height);
}
}

module GoblinOne_contour00x32_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5.5, 3.5], [5, 5], [5, 8],steps,height);
	BezConic([5, 8], [5, 10], [5.5, 12.0],steps,height);
	BezConic([5.5, 12.0], [6, 14], [7.5, 15.5],steps,height);
	BezConic([10.5, 18.5], [12, 20], [14.0, 20.5],steps,height);
	BezConic([18.5, 22.0], [21, 23], [23, 23],steps,height);
	BezConic([23, 23], [27, 24], [29.5, 24.5],steps,height);
	BezConic([6, 32], [6, 35], [6.5, 37.0],steps,height);
	BezConic([6.5, 37.0], [7, 39], [9.0, 40.5],steps,height);
	BezConic([9.0, 40.5], [11, 42], [13.0, 43.0],steps,height);
	BezConic([13.0, 43.0], [15, 44], [18.0, 45.0],steps,height);
	BezConic([18.0, 45.0], [21, 46], [24.0, 46.0],steps,height);
	BezConic([30, 46], [36, 46], [41.0, 45.0],steps,height);
	BezConic([41.0, 45.0], [46, 44], [49.0, 42.0],steps,height);
	BezConic([49.0, 42.0], [52, 40], [53.5, 37.5],steps,height);
	BezConic([53.5, 37.5], [55, 35], [55, 32],steps,height);
	BezConic([55, 32], [55, 29], [54.0, 27.5],steps,height);
	BezConic([54.0, 27.5], [53, 26], [51.5, 24.5],steps,height);
	BezConic([51.5, 24.5], [50, 23], [48.0, 21.5],steps,height);
	BezConic([48.0, 21.5], [46, 20], [44.0, 19.5],steps,height);
	BezConic([39.5, 18.0], [37, 17], [34, 17],steps,height);
	BezConic([34, 17], [31, 16], [28.5, 15.5],steps,height);
	BezConic([20.5, 9.0], [21, 9], [21, 8],steps,height);
}
}

module GoblinOne_contour00x32(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x32_skeleton(height);
			GoblinOne_contour00x32_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x32_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x32(steps=2, height) {
	difference() {
		GoblinOne_contour00x32(steps, height);
		
	}
}

GoblinOne_bbox0x32=[[5, 0], [55, 46]];

module GoblinOne_letter0x32(steps=2, height) {
	GoblinOne_chunk10x32(steps, height);
} //end skeleton

module GoblinOne_contour00x33_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 12], [4, 13], [4.0, 14.0], 
		[4, 15], [4, 15], [11.5, 15.0], 
		[19, 15], [19, 10], [22.0, 7.5], 
		[25, 5], [31, 5], [33, 5], 
		[35.0, 5.5], [37, 6], [38.5, 7.0], 
		[40, 8], [40.5, 9.0], [41, 10], 
		[41, 12], [41, 15], [40.0, 16.5], 
		[39, 18], [37.0, 18.5], [35, 19], 
		[32.0, 19.5], [29, 20], [25, 20], 
		[25.5, 22.5], [26, 25], [29, 25], 
		[31.0, 25.0], [33, 25], [34.5, 26.0], 
		[36, 27], [37.0, 28.5], [38, 30], 
		[38, 32], [38, 36], [36.0, 38.0], 
		[34, 40], [30, 40], [26, 40], 
		[23.5, 37.5], [21, 35], [21, 30], 
		[13.5, 30.0], [6, 30], [6, 30], 
		[6.0, 31.0], [6, 32], [6, 32], 
		[6, 35], [7.0, 37.0], [8, 39], 
		[10.0, 40.5], [12, 42], [14.5, 43.0], 
		[17, 44], [19.5, 44.5], [22, 45], 
		[24.5, 45.5], [27, 46], [30, 46], 
		[36, 46], [41.0, 45.0], [46, 44], 
		[49.5, 42.5], [53, 41], [54.5, 38.0], 
		[56, 35], [56, 32], [56, 31], 
		[55.5, 29.5], [55, 28], [53.5, 27.0], 
		[52, 26], [51.0, 25.5], [50, 25], 
		[48.5, 24.5], [47, 24], [45.0, 23.5], 
		[43, 23], [42, 23], [44, 23], 
		[45.5, 23.0], [47, 23], [49.0, 22.5], 
		[51, 22], [52.5, 21.0], [54, 20], 
		[55.5, 19.0], [57, 18], [58.0, 16.5], 
		[59, 15], [59, 13], [59, 9], 
		[57.0, 6.5], [55, 4], [51.0, 2.5], 
		[47, 1], [41.5, 0.0], [36, -1], 
		[30, -1], [27, -1], [24.0, -1.0], 
		[21, -1], [18.0, 0.0], [15, 1], 
		[12.5, 2.0], [10, 3], [8.0, 4.0], 
		[6, 5], [5.0, 7.0], [4, 9], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 12], [4, 13], [4.0, 14.0], 
		[4, 15], [4, 15], [11.5, 15.0], 
		[19, 15], [19, 10], [22.0, 7.5], 
		[25, 5], [31, 5], [33, 5], 
		[35.0, 5.5], [37, 6], [38.5, 7.0], 
		[40, 8], [40.5, 9.0], [41, 10], 
		[41, 12], [41, 15], [40.0, 16.5], 
		[39, 18], [37.0, 18.5], [35, 19], 
		[32.0, 19.5], [29, 20], [25, 20], 
		[25.5, 22.5], [26, 25], [29, 25], 
		[31.0, 25.0], [33, 25], [34.5, 26.0], 
		[36, 27], [37.0, 28.5], [38, 30], 
		[38, 32], [38, 36], [36.0, 38.0], 
		[34, 40], [30, 40], [26, 40], 
		[23.5, 37.5], [21, 35], [21, 30], 
		[13.5, 30.0], [6, 30], [6, 30], 
		[6.0, 31.0], [6, 32], [6, 32], 
		[6, 35], [7.0, 37.0], [8, 39], 
		[10.0, 40.5], [12, 42], [14.5, 43.0], 
		[17, 44], [19.5, 44.5], [22, 45], 
		[24.5, 45.5], [27, 46], [30, 46], 
		[36, 46], [41.0, 45.0], [46, 44], 
		[49.5, 42.5], [53, 41], [54.5, 38.0], 
		[56, 35], [56, 32], [56, 31], 
		[55.5, 29.5], [55, 28], [53.5, 27.0], 
		[52, 26], [51.0, 25.5], [50, 25], 
		[48.5, 24.5], [47, 24], [45.0, 23.5], 
		[43, 23], [42, 23], [44, 23], 
		[45.5, 23.0], [47, 23], [49.0, 22.5], 
		[51, 22], [52.5, 21.0], [54, 20], 
		[55.5, 19.0], [57, 18], [58.0, 16.5], 
		[59, 15], [59, 13], [59, 9], 
		[57.0, 6.5], [55, 4], [51.0, 2.5], 
		[47, 1], [41.5, 0.0], [36, -1], 
		[30, -1], [27, -1], [24.0, -1.0], 
		[21, -1], [18.0, 0.0], [15, 1], 
		[12.5, 2.0], [10, 3], [8.0, 4.0], 
		[6, 5], [5.0, 7.0], [4, 9], 
		 ]);
}}}

module GoblinOne_contour00x33_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 12], [4, 13], [4.0, 14.0],steps,height);
	BezConic([4.0, 14.0], [4, 15], [4, 15],steps,height);
	BezConic([19, 15], [19, 10], [22.0, 7.5],steps,height);
	BezConic([22.0, 7.5], [25, 5], [31, 5],steps,height);
	BezConic([31, 5], [33, 5], [35.0, 5.5],steps,height);
	BezConic([35.0, 5.5], [37, 6], [38.5, 7.0],steps,height);
	BezConic([38.5, 7.0], [40, 8], [40.5, 9.0],steps,height);
	BezConic([40.5, 9.0], [41, 10], [41, 12],steps,height);
	BezConic([41, 12], [41, 15], [40.0, 16.5],steps,height);
	BezConic([40.0, 16.5], [39, 18], [37.0, 18.5],steps,height);
	BezConic([37.0, 18.5], [35, 19], [32.0, 19.5],steps,height);
	BezConic([32.0, 19.5], [29, 20], [25, 20],steps,height);
	BezConic([26, 25], [29, 25], [31.0, 25.0],steps,height);
	BezConic([31.0, 25.0], [33, 25], [34.5, 26.0],steps,height);
	BezConic([34.5, 26.0], [36, 27], [37.0, 28.5],steps,height);
	BezConic([37.0, 28.5], [38, 30], [38, 32],steps,height);
	BezConic([38, 32], [38, 36], [36.0, 38.0],steps,height);
	BezConic([36.0, 38.0], [34, 40], [30, 40],steps,height);
	BezConic([30, 40], [26, 40], [23.5, 37.5],steps,height);
	BezConic([23.5, 37.5], [21, 35], [21, 30],steps,height);
	BezConic([6, 30], [6, 30], [6.0, 31.0],steps,height);
	BezConic([6.0, 31.0], [6, 32], [6, 32],steps,height);
	BezConic([42, 23], [44, 23], [45.5, 23.0],steps,height);
	BezConic([52.5, 21.0], [54, 20], [55.5, 19.0],steps,height);
	BezConic([30, -1], [27, -1], [24.0, -1.0],steps,height);
}
}

module GoblinOne_contour00x33_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 32], [6, 35], [7.0, 37.0],steps,height);
	BezConic([7.0, 37.0], [8, 39], [10.0, 40.5],steps,height);
	BezConic([10.0, 40.5], [12, 42], [14.5, 43.0],steps,height);
	BezConic([14.5, 43.0], [17, 44], [19.5, 44.5],steps,height);
	BezConic([19.5, 44.5], [22, 45], [24.5, 45.5],steps,height);
	BezConic([24.5, 45.5], [27, 46], [30, 46],steps,height);
	BezConic([30, 46], [36, 46], [41.0, 45.0],steps,height);
	BezConic([41.0, 45.0], [46, 44], [49.5, 42.5],steps,height);
	BezConic([49.5, 42.5], [53, 41], [54.5, 38.0],steps,height);
	BezConic([54.5, 38.0], [56, 35], [56, 32],steps,height);
	BezConic([56, 32], [56, 31], [55.5, 29.5],steps,height);
	BezConic([55.5, 29.5], [55, 28], [53.5, 27.0],steps,height);
	BezConic([53.5, 27.0], [52, 26], [51.0, 25.5],steps,height);
	BezConic([51.0, 25.5], [50, 25], [48.5, 24.5],steps,height);
	BezConic([48.5, 24.5], [47, 24], [45.0, 23.5],steps,height);
	BezConic([45.0, 23.5], [43, 23], [42, 23],steps,height);
	BezConic([45.5, 23.0], [47, 23], [49.0, 22.5],steps,height);
	BezConic([49.0, 22.5], [51, 22], [52.5, 21.0],steps,height);
	BezConic([55.5, 19.0], [57, 18], [58.0, 16.5],steps,height);
	BezConic([58.0, 16.5], [59, 15], [59, 13],steps,height);
	BezConic([59, 13], [59, 9], [57.0, 6.5],steps,height);
	BezConic([57.0, 6.5], [55, 4], [51.0, 2.5],steps,height);
	BezConic([51.0, 2.5], [47, 1], [41.5, 0.0],steps,height);
	BezConic([41.5, 0.0], [36, -1], [30, -1],steps,height);
	BezConic([24.0, -1.0], [21, -1], [18.0, 0.0],steps,height);
	BezConic([18.0, 0.0], [15, 1], [12.5, 2.0],steps,height);
	BezConic([12.5, 2.0], [10, 3], [8.0, 4.0],steps,height);
	BezConic([8.0, 4.0], [6, 5], [5.0, 7.0],steps,height);
	BezConic([5.0, 7.0], [4, 9], [4, 12],steps,height);
}
}

module GoblinOne_contour00x33(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x33_skeleton(height);
			GoblinOne_contour00x33_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x33_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x33(steps=2, height) {
	difference() {
		GoblinOne_contour00x33(steps, height);
		
	}
}

GoblinOne_bbox0x33=[[4, -1], [59, 46]];

module GoblinOne_letter0x33(steps=2, height) {
	GoblinOne_chunk10x33(steps, height);
} //end skeleton

module GoblinOne_contour00x34_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[1, 15], [14.5, 30.0], [28, 45], 
		[37.5, 45.0], [47, 45], [47.0, 31.5], 
		[47, 18], [53.0, 18.0], [59, 18], 
		[59.0, 15.0], [59, 12], [53.0, 12.0], 
		[47, 12], [47.0, 10.0], [47, 8], 
		[51.0, 4.0], [55, 0], [38.0, 0.0], 
		[21, 0], [26.0, 4.0], [31, 8], 
		[31.0, 10.0], [31, 12], [16.0, 12.0], 
		[1, 12],[1.0, 13.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[1, 15], [14.5, 30.0], [28, 45], 
		[37.5, 45.0], [47, 45], [47.0, 31.5], 
		[47, 18], [53.0, 18.0], [59, 18], 
		[59.0, 15.0], [59, 12], [53.0, 12.0], 
		[47, 12], [47.0, 10.0], [47, 8], 
		[51.0, 4.0], [55, 0], [38.0, 0.0], 
		[21, 0], [26.0, 4.0], [31, 8], 
		[31.0, 10.0], [31, 12], [16.0, 12.0], 
		[1, 12],[1.0, 13.5], ]);
}}}

module GoblinOne_contour00x34_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x34_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x34(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x34_skeleton(height);
			GoblinOne_contour00x34_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x34_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x34_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 18], [31.0, 27.5], [31, 37], 
		[23.0, 27.5], [15, 18], [23.0, 18.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 18], [31.0, 27.5], [31, 37], 
		[23.0, 27.5], [15, 18], [23.0, 18.0], 
		 ]);
}}}

module GoblinOne_contour10x34_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x34_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x34(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x34_skeleton(height);
			GoblinOne_contour10x34_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x34_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x34(steps=2, height) {
	difference() {
		GoblinOne_contour00x34(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x34(steps, height);
	}
}

GoblinOne_bbox0x34=[[1, 0], [59, 45]];

module GoblinOne_letter0x34(steps=2, height) {
	GoblinOne_chunk10x34(steps, height);
} //end skeleton

module GoblinOne_contour00x35_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 11], [5, 12], [5.0, 12.0], 
		[5, 12], [5, 13], [12.5, 14.0], 
		[20, 15], [20, 14], [20.0, 13.5], 
		[20, 13], [20, 12], [20, 11], 
		[20.5, 9.5], [21, 8], [22.0, 7.0], 
		[23, 6], [25.0, 5.0], [27, 4], 
		[29, 4], [32, 4], [34.0, 4.5], 
		[36, 5], [37.0, 6.5], [38, 8], 
		[39.0, 9.5], [40, 11], [40, 13], 
		[40, 16], [39.0, 17.5], [38, 19], 
		[36.5, 20.5], [35, 22], [33.0, 22.5], 
		[31, 23], [28, 23], [26, 23], 
		[23.5, 22.5], [21, 22], [19.0, 21.0], 
		[17, 20], [15.5, 19.5], [14, 19], 
		[13, 18], [9.5, 19.0], [6, 20], 
		[7.5, 32.5], [9, 45], [11, 45], 
		[14.5, 44.5], [18, 44], [21.5, 44.0], 
		[25, 44], [29.5, 44.0], [34, 44], 
		[38, 44], [40, 44], [43.0, 44.0], 
		[46, 44], [48.0, 44.0], [50, 44], 
		[52.0, 44.5], [54, 45], [55, 45], 
		[55, 44], [55.0, 43.5], [55, 43], 
		[55, 43], [55, 40], [54.5, 38.0], 
		[54, 36], [53.0, 35.0], [52, 34], 
		[49.5, 33.5], [47, 33], [44, 33], 
		[40, 33], [36.0, 33.5], [32, 34], 
		[29, 35], [27, 35], [25.5, 35.5], 
		[24, 36], [22.5, 36.0], [21, 36], 
		[19.5, 36.5], [18, 37], [16, 37], 
		[16, 37], [16.0, 36.5], [16, 36], 
		[16.0, 35.0], [16, 34], [16.0, 32.5], 
		[16, 31], [15.5, 30.0], [15, 29], 
		[15.0, 27.5], [15, 26], [15, 25], 
		[17, 26], [19.0, 27.0], [21, 28], 
		[24.0, 28.5], [27, 29], [29.5, 29.5], 
		[32, 30], [35, 30], [38, 30], 
		[40.5, 29.5], [43, 29], [45.5, 28.5], 
		[48, 28], [50.5, 27.0], [53, 26], 
		[54.5, 24.5], [56, 23], [57.0, 20.5], 
		[58, 18], [58, 15], [58, 11], 
		[56.0, 8.0], [54, 5], [50.0, 3.0], 
		[46, 1], [41.0, 0.0], [36, -1], 
		[29, -1], [24, -1], [19.5, -0.5], 
		[15, 0], [12.0, 1.5], [9, 3], 
		[7.0, 5.5],[5, 8], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 11], [5, 12], [5.0, 12.0], 
		[5, 12], [5, 13], [12.5, 14.0], 
		[20, 15], [20, 14], [20.0, 13.5], 
		[20, 13], [20, 12], [20, 11], 
		[20.5, 9.5], [21, 8], [22.0, 7.0], 
		[23, 6], [25.0, 5.0], [27, 4], 
		[29, 4], [32, 4], [34.0, 4.5], 
		[36, 5], [37.0, 6.5], [38, 8], 
		[39.0, 9.5], [40, 11], [40, 13], 
		[40, 16], [39.0, 17.5], [38, 19], 
		[36.5, 20.5], [35, 22], [33.0, 22.5], 
		[31, 23], [28, 23], [26, 23], 
		[23.5, 22.5], [21, 22], [19.0, 21.0], 
		[17, 20], [15.5, 19.5], [14, 19], 
		[13, 18], [9.5, 19.0], [6, 20], 
		[7.5, 32.5], [9, 45], [11, 45], 
		[14.5, 44.5], [18, 44], [21.5, 44.0], 
		[25, 44], [29.5, 44.0], [34, 44], 
		[38, 44], [40, 44], [43.0, 44.0], 
		[46, 44], [48.0, 44.0], [50, 44], 
		[52.0, 44.5], [54, 45], [55, 45], 
		[55, 44], [55.0, 43.5], [55, 43], 
		[55, 43], [55, 40], [54.5, 38.0], 
		[54, 36], [53.0, 35.0], [52, 34], 
		[49.5, 33.5], [47, 33], [44, 33], 
		[40, 33], [36.0, 33.5], [32, 34], 
		[29, 35], [27, 35], [25.5, 35.5], 
		[24, 36], [22.5, 36.0], [21, 36], 
		[19.5, 36.5], [18, 37], [16, 37], 
		[16, 37], [16.0, 36.5], [16, 36], 
		[16.0, 35.0], [16, 34], [16.0, 32.5], 
		[16, 31], [15.5, 30.0], [15, 29], 
		[15.0, 27.5], [15, 26], [15, 25], 
		[17, 26], [19.0, 27.0], [21, 28], 
		[24.0, 28.5], [27, 29], [29.5, 29.5], 
		[32, 30], [35, 30], [38, 30], 
		[40.5, 29.5], [43, 29], [45.5, 28.5], 
		[48, 28], [50.5, 27.0], [53, 26], 
		[54.5, 24.5], [56, 23], [57.0, 20.5], 
		[58, 18], [58, 15], [58, 11], 
		[56.0, 8.0], [54, 5], [50.0, 3.0], 
		[46, 1], [41.0, 0.0], [36, -1], 
		[29, -1], [24, -1], [19.5, -0.5], 
		[15, 0], [12.0, 1.5], [9, 3], 
		[7.0, 5.5],[5, 8], ]);
}}}

module GoblinOne_contour00x35_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 11], [5, 12], [5.0, 12.0],steps,height);
	BezConic([5.0, 12.0], [5, 12], [5, 13],steps,height);
	BezConic([20, 15], [20, 14], [20.0, 13.5],steps,height);
	BezConic([20.0, 13.5], [20, 13], [20, 12],steps,height);
	BezConic([20, 12], [20, 11], [20.5, 9.5],steps,height);
	BezConic([20.5, 9.5], [21, 8], [22.0, 7.0],steps,height);
	BezConic([22.0, 7.0], [23, 6], [25.0, 5.0],steps,height);
	BezConic([25.0, 5.0], [27, 4], [29, 4],steps,height);
	BezConic([29, 4], [32, 4], [34.0, 4.5],steps,height);
	BezConic([34.0, 4.5], [36, 5], [37.0, 6.5],steps,height);
	BezConic([37.0, 6.5], [38, 8], [39.0, 9.5],steps,height);
	BezConic([39.0, 9.5], [40, 11], [40, 13],steps,height);
	BezConic([40, 13], [40, 16], [39.0, 17.5],steps,height);
	BezConic([39.0, 17.5], [38, 19], [36.5, 20.5],steps,height);
	BezConic([36.5, 20.5], [35, 22], [33.0, 22.5],steps,height);
	BezConic([33.0, 22.5], [31, 23], [28, 23],steps,height);
	BezConic([28, 23], [26, 23], [23.5, 22.5],steps,height);
	BezConic([23.5, 22.5], [21, 22], [19.0, 21.0],steps,height);
	BezConic([15.5, 19.5], [14, 19], [13, 18],steps,height);
	BezConic([14.5, 44.5], [18, 44], [21.5, 44.0],steps,height);
	BezConic([21.5, 44.0], [25, 44], [29.5, 44.0],steps,height);
	BezConic([29.5, 44.0], [34, 44], [38, 44],steps,height);
	BezConic([38, 44], [40, 44], [43.0, 44.0],steps,height);
	BezConic([43.0, 44.0], [46, 44], [48.0, 44.0],steps,height);
	BezConic([48.0, 44.0], [50, 44], [52.0, 44.5],steps,height);
	BezConic([55, 45], [55, 44], [55.0, 43.5],steps,height);
	BezConic([55.0, 43.5], [55, 43], [55, 43],steps,height);
	BezConic([25.5, 35.5], [24, 36], [22.5, 36.0],steps,height);
	BezConic([19.5, 36.5], [18, 37], [16, 37],steps,height);
	BezConic([16.0, 36.5], [16, 36], [16.0, 35.0],steps,height);
	BezConic([16.0, 35.0], [16, 34], [16.0, 32.5],steps,height);
	BezConic([15.5, 30.0], [15, 29], [15.0, 27.5],steps,height);
	BezConic([15.0, 27.5], [15, 26], [15, 25],steps,height);
	BezConic([15, 25], [17, 26], [19.0, 27.0],steps,height);
	BezConic([24.0, 28.5], [27, 29], [29.5, 29.5],steps,height);
	BezConic([40.5, 29.5], [43, 29], [45.5, 28.5],steps,height);
}
}

module GoblinOne_contour00x35_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19.0, 21.0], [17, 20], [15.5, 19.5],steps,height);
	BezConic([9, 45], [11, 45], [14.5, 44.5],steps,height);
	BezConic([52.0, 44.5], [54, 45], [55, 45],steps,height);
	BezConic([55, 43], [55, 40], [54.5, 38.0],steps,height);
	BezConic([54.5, 38.0], [54, 36], [53.0, 35.0],steps,height);
	BezConic([53.0, 35.0], [52, 34], [49.5, 33.5],steps,height);
	BezConic([49.5, 33.5], [47, 33], [44, 33],steps,height);
	BezConic([44, 33], [40, 33], [36.0, 33.5],steps,height);
	BezConic([36.0, 33.5], [32, 34], [29, 35],steps,height);
	BezConic([29, 35], [27, 35], [25.5, 35.5],steps,height);
	BezConic([22.5, 36.0], [21, 36], [19.5, 36.5],steps,height);
	BezConic([16, 37], [16, 37], [16.0, 36.5],steps,height);
	BezConic([16.0, 32.5], [16, 31], [15.5, 30.0],steps,height);
	BezConic([19.0, 27.0], [21, 28], [24.0, 28.5],steps,height);
	BezConic([29.5, 29.5], [32, 30], [35, 30],steps,height);
	BezConic([35, 30], [38, 30], [40.5, 29.5],steps,height);
	BezConic([45.5, 28.5], [48, 28], [50.5, 27.0],steps,height);
	BezConic([50.5, 27.0], [53, 26], [54.5, 24.5],steps,height);
	BezConic([54.5, 24.5], [56, 23], [57.0, 20.5],steps,height);
	BezConic([57.0, 20.5], [58, 18], [58, 15],steps,height);
	BezConic([58, 15], [58, 11], [56.0, 8.0],steps,height);
	BezConic([56.0, 8.0], [54, 5], [50.0, 3.0],steps,height);
	BezConic([50.0, 3.0], [46, 1], [41.0, 0.0],steps,height);
	BezConic([41.0, 0.0], [36, -1], [29, -1],steps,height);
	BezConic([29, -1], [24, -1], [19.5, -0.5],steps,height);
	BezConic([19.5, -0.5], [15, 0], [12.0, 1.5],steps,height);
	BezConic([12.0, 1.5], [9, 3], [7.0, 5.5],steps,height);
	BezConic([7.0, 5.5], [5, 8], [5, 11],steps,height);
}
}

module GoblinOne_contour00x35(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x35_skeleton(height);
			GoblinOne_contour00x35_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x35_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x35(steps=2, height) {
	difference() {
		GoblinOne_contour00x35(steps, height);
		
	}
}

GoblinOne_bbox0x35=[[5, -1], [58, 45]];

module GoblinOne_letter0x35(steps=2, height) {
	GoblinOne_chunk10x35(steps, height);
} //end skeleton

module GoblinOne_contour00x36_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 22], [4, 27], [6.0, 31.5], 
		[8, 36], [11.5, 39.0], [15, 42], 
		[20.0, 44.0], [25, 46], [33, 46], 
		[35, 46], [38.0, 46.0], [41, 46], 
		[43.5, 45.5], [46, 45], [48.0, 44.0], 
		[50, 43], [51.5, 42.0], [53, 41], 
		[54.0, 39.5], [55, 38], [55, 36], 
		[55, 35], [55.0, 34.5], [55, 34], 
		[55, 34], [48.5, 33.0], [42, 32], 
		[42, 33], [42.0, 33.5], [42, 34], 
		[42, 34], [42, 35], [41.5, 36.0], 
		[41, 37], [39.5, 38.0], [38, 39], 
		[36.5, 39.5], [35, 40], [32, 40], 
		[29, 40], [27.0, 39.0], [25, 38], 
		[23.5, 36.0], [22, 34], [21.5, 31.5], 
		[21, 29], [21, 26], [22, 27], 
		[24.0, 27.5], [26, 28], [28.0, 28.0], 
		[30, 28], [32.0, 28.5], [34, 29], 
		[36, 29], [38, 29], [41.0, 28.5], 
		[44, 28], [46.0, 27.5], [48, 27], 
		[50.0, 26.0], [52, 25], [53.5, 23.0], 
		[55, 21], [56.0, 19.5], [57, 18], 
		[57, 15], [57, 12], [56.0, 9.5], 
		[55, 7], [53.5, 5.5], [52, 4], 
		[49.5, 2.5], [47, 1], [44.0, 0.5], 
		[41, 0], [38.0, -0.5], [35, -1], 
		[32, -1],[4, -1], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 22], [4, 27], [6.0, 31.5], 
		[8, 36], [11.5, 39.0], [15, 42], 
		[20.0, 44.0], [25, 46], [33, 46], 
		[35, 46], [38.0, 46.0], [41, 46], 
		[43.5, 45.5], [46, 45], [48.0, 44.0], 
		[50, 43], [51.5, 42.0], [53, 41], 
		[54.0, 39.5], [55, 38], [55, 36], 
		[55, 35], [55.0, 34.5], [55, 34], 
		[55, 34], [48.5, 33.0], [42, 32], 
		[42, 33], [42.0, 33.5], [42, 34], 
		[42, 34], [42, 35], [41.5, 36.0], 
		[41, 37], [39.5, 38.0], [38, 39], 
		[36.5, 39.5], [35, 40], [32, 40], 
		[29, 40], [27.0, 39.0], [25, 38], 
		[23.5, 36.0], [22, 34], [21.5, 31.5], 
		[21, 29], [21, 26], [22, 27], 
		[24.0, 27.5], [26, 28], [28.0, 28.0], 
		[30, 28], [32.0, 28.5], [34, 29], 
		[36, 29], [38, 29], [41.0, 28.5], 
		[44, 28], [46.0, 27.5], [48, 27], 
		[50.0, 26.0], [52, 25], [53.5, 23.0], 
		[55, 21], [56.0, 19.5], [57, 18], 
		[57, 15], [57, 12], [56.0, 9.5], 
		[55, 7], [53.5, 5.5], [52, 4], 
		[49.5, 2.5], [47, 1], [44.0, 0.5], 
		[41, 0], [38.0, -0.5], [35, -1], 
		[32, -1],[4, -1], ]);
}}}

module GoblinOne_contour00x36_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([33, 46], [35, 46], [38.0, 46.0],steps,height);
	BezConic([55, 36], [55, 35], [55.0, 34.5],steps,height);
	BezConic([55.0, 34.5], [55, 34], [55, 34],steps,height);
	BezConic([42, 32], [42, 33], [42.0, 33.5],steps,height);
	BezConic([42.0, 33.5], [42, 34], [42, 34],steps,height);
	BezConic([42, 34], [42, 35], [41.5, 36.0],steps,height);
	BezConic([41.5, 36.0], [41, 37], [39.5, 38.0],steps,height);
	BezConic([39.5, 38.0], [38, 39], [36.5, 39.5],steps,height);
	BezConic([36.5, 39.5], [35, 40], [32, 40],steps,height);
	BezConic([32, 40], [29, 40], [27.0, 39.0],steps,height);
	BezConic([27.0, 39.0], [25, 38], [23.5, 36.0],steps,height);
	BezConic([23.5, 36.0], [22, 34], [21.5, 31.5],steps,height);
	BezConic([21.5, 31.5], [21, 29], [21, 26],steps,height);
	BezConic([28.0, 28.0], [30, 28], [32.0, 28.5],steps,height);
	BezConic([44.0, 0.5], [41, 0], [38.0, -0.5],steps,height);
}
}

module GoblinOne_contour00x36_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 22], [4, 27], [6.0, 31.5],steps,height);
	BezConic([6.0, 31.5], [8, 36], [11.5, 39.0],steps,height);
	BezConic([11.5, 39.0], [15, 42], [20.0, 44.0],steps,height);
	BezConic([20.0, 44.0], [25, 46], [33, 46],steps,height);
	BezConic([38.0, 46.0], [41, 46], [43.5, 45.5],steps,height);
	BezConic([43.5, 45.5], [46, 45], [48.0, 44.0],steps,height);
	BezConic([48.0, 44.0], [50, 43], [51.5, 42.0],steps,height);
	BezConic([51.5, 42.0], [53, 41], [54.0, 39.5],steps,height);
	BezConic([54.0, 39.5], [55, 38], [55, 36],steps,height);
	BezConic([21, 26], [22, 27], [24.0, 27.5],steps,height);
	BezConic([24.0, 27.5], [26, 28], [28.0, 28.0],steps,height);
	BezConic([32.0, 28.5], [34, 29], [36, 29],steps,height);
	BezConic([36, 29], [38, 29], [41.0, 28.5],steps,height);
	BezConic([41.0, 28.5], [44, 28], [46.0, 27.5],steps,height);
	BezConic([46.0, 27.5], [48, 27], [50.0, 26.0],steps,height);
	BezConic([50.0, 26.0], [52, 25], [53.5, 23.0],steps,height);
	BezConic([53.5, 23.0], [55, 21], [56.0, 19.5],steps,height);
	BezConic([56.0, 19.5], [57, 18], [57, 15],steps,height);
	BezConic([57, 15], [57, 12], [56.0, 9.5],steps,height);
	BezConic([56.0, 9.5], [55, 7], [53.5, 5.5],steps,height);
	BezConic([53.5, 5.5], [52, 4], [49.5, 2.5],steps,height);
	BezConic([49.5, 2.5], [47, 1], [44.0, 0.5],steps,height);
	BezConic([38.0, -0.5], [35, -1], [32, -1],steps,height);
	BezConic([32, -1], [4, -1], [4, 22],steps,height);
}
}

module GoblinOne_contour00x36(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x36_skeleton(height);
			GoblinOne_contour00x36_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x36_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x36_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[21, 20], [21, 16], [21.5, 13.5], 
		[22, 11], [23.5, 9.0], [25, 7], 
		[27.0, 6.0], [29, 5], [32, 5], 
		[34, 5], [35.5, 5.5], [37, 6], 
		[38.0, 7.0], [39, 8], [39.5, 10.0], 
		[40, 12], [40, 14], [40, 16], 
		[39.5, 17.5], [39, 19], [38.0, 20.0], 
		[37, 21], [35.5, 21.5], [34, 22], 
		[32, 22], [29, 22], [26.0, 21.5], 
		[23, 21], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[21, 20], [21, 16], [21.5, 13.5], 
		[22, 11], [23.5, 9.0], [25, 7], 
		[27.0, 6.0], [29, 5], [32, 5], 
		[34, 5], [35.5, 5.5], [37, 6], 
		[38.0, 7.0], [39, 8], [39.5, 10.0], 
		[40, 12], [40, 14], [40, 16], 
		[39.5, 17.5], [39, 19], [38.0, 20.0], 
		[37, 21], [35.5, 21.5], [34, 22], 
		[32, 22], [29, 22], [26.0, 21.5], 
		[23, 21], ]);
}}}

module GoblinOne_contour10x36_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 20], [21, 16], [21.5, 13.5],steps,height);
	BezConic([21.5, 13.5], [22, 11], [23.5, 9.0],steps,height);
	BezConic([23.5, 9.0], [25, 7], [27.0, 6.0],steps,height);
	BezConic([27.0, 6.0], [29, 5], [32, 5],steps,height);
	BezConic([32, 5], [34, 5], [35.5, 5.5],steps,height);
	BezConic([35.5, 5.5], [37, 6], [38.0, 7.0],steps,height);
	BezConic([38.0, 7.0], [39, 8], [39.5, 10.0],steps,height);
	BezConic([39.5, 10.0], [40, 12], [40, 14],steps,height);
	BezConic([40, 14], [40, 16], [39.5, 17.5],steps,height);
	BezConic([39.5, 17.5], [39, 19], [38.0, 20.0],steps,height);
	BezConic([38.0, 20.0], [37, 21], [35.5, 21.5],steps,height);
	BezConic([35.5, 21.5], [34, 22], [32, 22],steps,height);
	BezConic([32, 22], [29, 22], [26.0, 21.5],steps,height);
	BezConic([26.0, 21.5], [23, 21], [21, 20],steps,height);
}
}

module GoblinOne_contour10x36_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x36(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x36_skeleton(height);
			GoblinOne_contour10x36_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x36_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x36(steps=2, height) {
	difference() {
		GoblinOne_contour00x36(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x36(steps, height);
	}
}

GoblinOne_bbox0x36=[[4, -1], [57, 46]];

module GoblinOne_letter0x36(steps=2, height) {
	GoblinOne_chunk10x36(steps, height);
} //end skeleton

module GoblinOne_contour00x37_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[14, 3], [14, 5], [14.5, 7.0], 
		[15, 9], [16.0, 11.0], [17, 13], 
		[18.5, 15.0], [20, 17], [22.0, 18.5], 
		[24, 20], [26.0, 21.5], [28, 23], 
		[30, 25], [32, 27], [34.0, 28.5], 
		[36, 30], [37.5, 31.5], [39, 33], 
		[40.0, 35.0], [41, 37], [41, 38], 
		[30.0, 37.5], [19, 37], [12.0, 31.0], 
		[5, 25], [5.5, 35.5], [6, 46], 
		[10.0, 45.5], [14, 45], [33.0, 45.0], 
		[52, 45], [53, 43], [53, 41], 
		[53, 39], [52.0, 37.0], [51, 35], 
		[50.0, 32.5], [49, 30], [47.5, 28.0], 
		[46, 26], [44, 24], [43, 21], 
		[41.0, 18.5], [39, 16], [37.5, 13.5], 
		[36, 11], [35.5, 9.0], [35, 7], 
		[35, 4], [35, 3], [35.5, 2.0], 
		[36, 1], [37, 0], [25.5, 0.0], 
		[14, 0], [14, 1], [14.0, 1.5], 
		[14, 2], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[14, 3], [14, 5], [14.5, 7.0], 
		[15, 9], [16.0, 11.0], [17, 13], 
		[18.5, 15.0], [20, 17], [22.0, 18.5], 
		[24, 20], [26.0, 21.5], [28, 23], 
		[30, 25], [32, 27], [34.0, 28.5], 
		[36, 30], [37.5, 31.5], [39, 33], 
		[40.0, 35.0], [41, 37], [41, 38], 
		[30.0, 37.5], [19, 37], [12.0, 31.0], 
		[5, 25], [5.5, 35.5], [6, 46], 
		[10.0, 45.5], [14, 45], [33.0, 45.0], 
		[52, 45], [53, 43], [53, 41], 
		[53, 39], [52.0, 37.0], [51, 35], 
		[50.0, 32.5], [49, 30], [47.5, 28.0], 
		[46, 26], [44, 24], [43, 21], 
		[41.0, 18.5], [39, 16], [37.5, 13.5], 
		[36, 11], [35.5, 9.0], [35, 7], 
		[35, 4], [35, 3], [35.5, 2.0], 
		[36, 1], [37, 0], [25.5, 0.0], 
		[14, 0], [14, 1], [14.0, 1.5], 
		[14, 2], ]);
}}}

module GoblinOne_contour00x37_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26.0, 21.5], [28, 23], [30, 25],steps,height);
	BezConic([34.0, 28.5], [36, 30], [37.5, 31.5],steps,height);
	BezConic([37.5, 31.5], [39, 33], [40.0, 35.0],steps,height);
	BezConic([40.0, 35.0], [41, 37], [41, 38],steps,height);
	BezConic([52.0, 37.0], [51, 35], [50.0, 32.5],steps,height);
	BezConic([41.0, 18.5], [39, 16], [37.5, 13.5],steps,height);
	BezConic([37.5, 13.5], [36, 11], [35.5, 9.0],steps,height);
	BezConic([35.5, 9.0], [35, 7], [35, 4],steps,height);
	BezConic([35, 4], [35, 3], [35.5, 2.0],steps,height);
	BezConic([35.5, 2.0], [36, 1], [37, 0],steps,height);
	BezConic([14, 0], [14, 1], [14.0, 1.5],steps,height);
	BezConic([14.0, 1.5], [14, 2], [14, 3],steps,height);
}
}

module GoblinOne_contour00x37_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14, 3], [14, 5], [14.5, 7.0],steps,height);
	BezConic([14.5, 7.0], [15, 9], [16.0, 11.0],steps,height);
	BezConic([16.0, 11.0], [17, 13], [18.5, 15.0],steps,height);
	BezConic([18.5, 15.0], [20, 17], [22.0, 18.5],steps,height);
	BezConic([22.0, 18.5], [24, 20], [26.0, 21.5],steps,height);
	BezConic([30, 25], [32, 27], [34.0, 28.5],steps,height);
	BezConic([52, 45], [53, 43], [53, 41],steps,height);
	BezConic([53, 41], [53, 39], [52.0, 37.0],steps,height);
	BezConic([50.0, 32.5], [49, 30], [47.5, 28.0],steps,height);
	BezConic([47.5, 28.0], [46, 26], [44, 24],steps,height);
	BezConic([44, 24], [43, 21], [41.0, 18.5],steps,height);
}
}

module GoblinOne_contour00x37(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x37_skeleton(height);
			GoblinOne_contour00x37_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x37_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x37(steps=2, height) {
	difference() {
		GoblinOne_contour00x37(steps, height);
		
	}
}

GoblinOne_bbox0x37=[[5, 0], [53, 46]];

module GoblinOne_letter0x37(steps=2, height) {
	GoblinOne_chunk10x37(steps, height);
} //end skeleton

module GoblinOne_contour00x38_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 11], [3, 13], [4.0, 14.5], 
		[5, 16], [7.0, 17.5], [9, 19], 
		[11.0, 19.5], [13, 20], [16, 21], 
		[14, 22], [12.0, 23.0], [10, 24], 
		[8.5, 25.5], [7, 27], [6.5, 28.5], 
		[6, 30], [6, 33], [6, 35], 
		[7.0, 37.0], [8, 39], [9.5, 40.5], 
		[11, 42], [13.5, 43.0], [16, 44], 
		[18.5, 44.5], [21, 45], [23.5, 45.5], 
		[26, 46], [29, 46], [34, 46], 
		[38.5, 45.5], [43, 45], [46.0, 43.5], 
		[49, 42], [50.5, 39.5], [52, 37], 
		[52, 35], [52, 33], [51.5, 31.5], 
		[51, 30], [49.5, 29.0], [48, 28], 
		[46.5, 27.0], [45, 26], [43, 26], 
		[46, 25], [48.0, 24.0], [50, 23], 
		[52.0, 21.5], [54, 20], [55.0, 18.0], 
		[56, 16], [56, 13], [56, 9], 
		[54.0, 6.5], [52, 4], [48.5, 2.0], 
		[45, 0], [40.0, -0.5], [35, -1], 
		[29, -1], [23, -1], [18.0, 0.0], 
		[13, 1], [10.0, 2.5], [7, 4], 
		[5.0, 6.0],[3, 8], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 11], [3, 13], [4.0, 14.5], 
		[5, 16], [7.0, 17.5], [9, 19], 
		[11.0, 19.5], [13, 20], [16, 21], 
		[14, 22], [12.0, 23.0], [10, 24], 
		[8.5, 25.5], [7, 27], [6.5, 28.5], 
		[6, 30], [6, 33], [6, 35], 
		[7.0, 37.0], [8, 39], [9.5, 40.5], 
		[11, 42], [13.5, 43.0], [16, 44], 
		[18.5, 44.5], [21, 45], [23.5, 45.5], 
		[26, 46], [29, 46], [34, 46], 
		[38.5, 45.5], [43, 45], [46.0, 43.5], 
		[49, 42], [50.5, 39.5], [52, 37], 
		[52, 35], [52, 33], [51.5, 31.5], 
		[51, 30], [49.5, 29.0], [48, 28], 
		[46.5, 27.0], [45, 26], [43, 26], 
		[46, 25], [48.0, 24.0], [50, 23], 
		[52.0, 21.5], [54, 20], [55.0, 18.0], 
		[56, 16], [56, 13], [56, 9], 
		[54.0, 6.5], [52, 4], [48.5, 2.0], 
		[45, 0], [40.0, -0.5], [35, -1], 
		[29, -1], [23, -1], [18.0, 0.0], 
		[13, 1], [10.0, 2.5], [7, 4], 
		[5.0, 6.0],[3, 8], ]);
}}}

module GoblinOne_contour00x38_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11.0, 19.5], [13, 20], [16, 21],steps,height);
	BezConic([16, 21], [14, 22], [12.0, 23.0],steps,height);
	BezConic([49.5, 29.0], [48, 28], [46.5, 27.0],steps,height);
}
}

module GoblinOne_contour00x38_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 11], [3, 13], [4.0, 14.5],steps,height);
	BezConic([4.0, 14.5], [5, 16], [7.0, 17.5],steps,height);
	BezConic([7.0, 17.5], [9, 19], [11.0, 19.5],steps,height);
	BezConic([12.0, 23.0], [10, 24], [8.5, 25.5],steps,height);
	BezConic([8.5, 25.5], [7, 27], [6.5, 28.5],steps,height);
	BezConic([6.5, 28.5], [6, 30], [6, 33],steps,height);
	BezConic([6, 33], [6, 35], [7.0, 37.0],steps,height);
	BezConic([7.0, 37.0], [8, 39], [9.5, 40.5],steps,height);
	BezConic([9.5, 40.5], [11, 42], [13.5, 43.0],steps,height);
	BezConic([13.5, 43.0], [16, 44], [18.5, 44.5],steps,height);
	BezConic([18.5, 44.5], [21, 45], [23.5, 45.5],steps,height);
	BezConic([23.5, 45.5], [26, 46], [29, 46],steps,height);
	BezConic([29, 46], [34, 46], [38.5, 45.5],steps,height);
	BezConic([38.5, 45.5], [43, 45], [46.0, 43.5],steps,height);
	BezConic([46.0, 43.5], [49, 42], [50.5, 39.5],steps,height);
	BezConic([50.5, 39.5], [52, 37], [52, 35],steps,height);
	BezConic([52, 35], [52, 33], [51.5, 31.5],steps,height);
	BezConic([51.5, 31.5], [51, 30], [49.5, 29.0],steps,height);
	BezConic([46.5, 27.0], [45, 26], [43, 26],steps,height);
	BezConic([43, 26], [46, 25], [48.0, 24.0],steps,height);
	BezConic([48.0, 24.0], [50, 23], [52.0, 21.5],steps,height);
	BezConic([52.0, 21.5], [54, 20], [55.0, 18.0],steps,height);
	BezConic([55.0, 18.0], [56, 16], [56, 13],steps,height);
	BezConic([56, 13], [56, 9], [54.0, 6.5],steps,height);
	BezConic([54.0, 6.5], [52, 4], [48.5, 2.0],steps,height);
	BezConic([48.5, 2.0], [45, 0], [40.0, -0.5],steps,height);
	BezConic([40.0, -0.5], [35, -1], [29, -1],steps,height);
	BezConic([29, -1], [23, -1], [18.0, 0.0],steps,height);
	BezConic([18.0, 0.0], [13, 1], [10.0, 2.5],steps,height);
	BezConic([10.0, 2.5], [7, 4], [5.0, 6.0],steps,height);
	BezConic([5.0, 6.0], [3, 8], [3, 11],steps,height);
}
}

module GoblinOne_contour00x38(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x38_skeleton(height);
			GoblinOne_contour00x38_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x38_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x38_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[22, 34], [22, 32], [23.0, 31.0], 
		[24, 30], [25.5, 29.5], [27, 29], 
		[29.5, 28.5], [32, 28], [35, 27], 
		[40, 29], [40, 34], [40, 35], 
		[39.5, 36.5], [39, 38], [37.5, 38.5], 
		[36, 39], [34.0, 39.0], [32, 39], 
		[31, 39], [29, 39], [27.0, 39.0], 
		[25, 39], [24.0, 38.0], [23, 37], 
		[22.5, 36.0],[22, 35], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[22, 34], [22, 32], [23.0, 31.0], 
		[24, 30], [25.5, 29.5], [27, 29], 
		[29.5, 28.5], [32, 28], [35, 27], 
		[40, 29], [40, 34], [40, 35], 
		[39.5, 36.5], [39, 38], [37.5, 38.5], 
		[36, 39], [34.0, 39.0], [32, 39], 
		[31, 39], [29, 39], [27.0, 39.0], 
		[25, 39], [24.0, 38.0], [23, 37], 
		[22.5, 36.0],[22, 35], ]);
}}}

module GoblinOne_contour10x38_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22, 34], [22, 32], [23.0, 31.0],steps,height);
	BezConic([23.0, 31.0], [24, 30], [25.5, 29.5],steps,height);
	BezConic([25.5, 29.5], [27, 29], [29.5, 28.5],steps,height);
	BezConic([35, 27], [40, 29], [40, 34],steps,height);
	BezConic([40, 34], [40, 35], [39.5, 36.5],steps,height);
	BezConic([39.5, 36.5], [39, 38], [37.5, 38.5],steps,height);
	BezConic([37.5, 38.5], [36, 39], [34.0, 39.0],steps,height);
	BezConic([34.0, 39.0], [32, 39], [31, 39],steps,height);
	BezConic([31, 39], [29, 39], [27.0, 39.0],steps,height);
	BezConic([27.0, 39.0], [25, 39], [24.0, 38.0],steps,height);
	BezConic([24.0, 38.0], [23, 37], [22.5, 36.0],steps,height);
	BezConic([22.5, 36.0], [22, 35], [22, 34],steps,height);
}
}

module GoblinOne_contour10x38_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29.5, 28.5], [32, 28], [35, 27],steps,height);
}
}

module GoblinOne_contour10x38(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x38_skeleton(height);
			GoblinOne_contour10x38_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x38_additive_curves(steps, height);
	}
}

module GoblinOne_contour20x38_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[17, 13], [17, 11], [18.0, 10.0], 
		[19, 9], [21.0, 8.0], [23, 7], 
		[25.0, 6.5], [27, 6], [30, 6], 
		[33, 6], [35.0, 6.0], [37, 6], 
		[38.5, 6.5], [40, 7], [40.5, 8.0], 
		[41, 9], [41, 11], [41, 12], 
		[40.5, 13.0], [40, 14], [38.0, 14.5], 
		[36, 15], [34.0, 15.5], [32, 16], 
		[30, 17], [28, 17], [26.0, 17.5], 
		[24, 18], [22, 19], [21, 18], 
		[20.0, 17.5], [19, 17], [18.0, 16.5], 
		[17, 16], [17.0, 15.0], [17, 14], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[17, 13], [17, 11], [18.0, 10.0], 
		[19, 9], [21.0, 8.0], [23, 7], 
		[25.0, 6.5], [27, 6], [30, 6], 
		[33, 6], [35.0, 6.0], [37, 6], 
		[38.5, 6.5], [40, 7], [40.5, 8.0], 
		[41, 9], [41, 11], [41, 12], 
		[40.5, 13.0], [40, 14], [38.0, 14.5], 
		[36, 15], [34.0, 15.5], [32, 16], 
		[30, 17], [28, 17], [26.0, 17.5], 
		[24, 18], [22, 19], [21, 18], 
		[20.0, 17.5], [19, 17], [18.0, 16.5], 
		[17, 16], [17.0, 15.0], [17, 14], 
		 ]);
}}}

module GoblinOne_contour20x38_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, 13], [17, 11], [18.0, 10.0],steps,height);
	BezConic([18.0, 10.0], [19, 9], [21.0, 8.0],steps,height);
	BezConic([21.0, 8.0], [23, 7], [25.0, 6.5],steps,height);
	BezConic([25.0, 6.5], [27, 6], [30, 6],steps,height);
	BezConic([30, 6], [33, 6], [35.0, 6.0],steps,height);
	BezConic([35.0, 6.0], [37, 6], [38.5, 6.5],steps,height);
	BezConic([38.5, 6.5], [40, 7], [40.5, 8.0],steps,height);
	BezConic([40.5, 8.0], [41, 9], [41, 11],steps,height);
	BezConic([41, 11], [41, 12], [40.5, 13.0],steps,height);
	BezConic([40.5, 13.0], [40, 14], [38.0, 14.5],steps,height);
	BezConic([38.0, 14.5], [36, 15], [34.0, 15.5],steps,height);
	BezConic([20.0, 17.5], [19, 17], [18.0, 16.5],steps,height);
	BezConic([18.0, 16.5], [17, 16], [17.0, 15.0],steps,height);
	BezConic([17.0, 15.0], [17, 14], [17, 13],steps,height);
}
}

module GoblinOne_contour20x38_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34.0, 15.5], [32, 16], [30, 17],steps,height);
	BezConic([30, 17], [28, 17], [26.0, 17.5],steps,height);
	BezConic([26.0, 17.5], [24, 18], [22, 19],steps,height);
	BezConic([22, 19], [21, 18], [20.0, 17.5],steps,height);
}
}

module GoblinOne_contour20x38(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour20x38_skeleton(height);
			GoblinOne_contour20x38_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x38_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x38(steps=2, height) {
	difference() {
		GoblinOne_contour00x38(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x38(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x38(steps, height);
	}
}

GoblinOne_bbox0x38=[[3, -1], [56, 46]];

module GoblinOne_letter0x38(steps=2, height) {
	GoblinOne_chunk10x38(steps, height);
} //end skeleton

module GoblinOne_contour00x39_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 9], [5, 9], [5.0, 9.5], 
		[5, 10], [6, 11], [12.5, 12.0], 
		[19, 13], [18, 12], [18.0, 11.5], 
		[18, 11], [18, 11], [18, 10], 
		[18.5, 9.0], [19, 8], [20.5, 7.0], 
		[22, 6], [23.5, 5.5], [25, 5], 
		[28, 5], [31, 5], [33.5, 6.0], 
		[36, 7], [37.0, 8.5], [38, 10], 
		[39.0, 12.5], [40, 15], [40, 19], 
		[38, 18], [36.5, 17.5], [35, 17], 
		[33.0, 16.5], [31, 16], [29.0, 16.0], 
		[27, 16], [24, 16], [22, 16], 
		[19.5, 16.5], [17, 17], [14.5, 17.5], 
		[12, 18], [10.0, 19.0], [8, 20], 
		[6.5, 21.5], [5, 23], [4.0, 25.0], 
		[3, 27], [3, 30], [3, 33], 
		[4.0, 35.0], [5, 37], [7.0, 39.0], 
		[9, 41], [11.5, 42.5], [14, 44], 
		[16.5, 44.5], [19, 45], [22.5, 45.5], 
		[26, 46], [29, 46], [43, 46], 
		[49.5, 40.5], [56, 35], [56, 23], 
		[56, 18], [54.5, 13.5], [53, 9], 
		[49.5, 6.0], [46, 3], [40.5, 1.0], 
		[35, -1], [28, -1], [25, -1], 
		[22.5, -1.0], [20, -1], [17.5, -0.5], 
		[15, 0], [12.5, 1.0], [10, 2], 
		[8.5, 3.0], [7, 4], [6.0, 5.5], 
		[5, 7], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 9], [5, 9], [5.0, 9.5], 
		[5, 10], [6, 11], [12.5, 12.0], 
		[19, 13], [18, 12], [18.0, 11.5], 
		[18, 11], [18, 11], [18, 10], 
		[18.5, 9.0], [19, 8], [20.5, 7.0], 
		[22, 6], [23.5, 5.5], [25, 5], 
		[28, 5], [31, 5], [33.5, 6.0], 
		[36, 7], [37.0, 8.5], [38, 10], 
		[39.0, 12.5], [40, 15], [40, 19], 
		[38, 18], [36.5, 17.5], [35, 17], 
		[33.0, 16.5], [31, 16], [29.0, 16.0], 
		[27, 16], [24, 16], [22, 16], 
		[19.5, 16.5], [17, 17], [14.5, 17.5], 
		[12, 18], [10.0, 19.0], [8, 20], 
		[6.5, 21.5], [5, 23], [4.0, 25.0], 
		[3, 27], [3, 30], [3, 33], 
		[4.0, 35.0], [5, 37], [7.0, 39.0], 
		[9, 41], [11.5, 42.5], [14, 44], 
		[16.5, 44.5], [19, 45], [22.5, 45.5], 
		[26, 46], [29, 46], [43, 46], 
		[49.5, 40.5], [56, 35], [56, 23], 
		[56, 18], [54.5, 13.5], [53, 9], 
		[49.5, 6.0], [46, 3], [40.5, 1.0], 
		[35, -1], [28, -1], [25, -1], 
		[22.5, -1.0], [20, -1], [17.5, -0.5], 
		[15, 0], [12.5, 1.0], [10, 2], 
		[8.5, 3.0], [7, 4], [6.0, 5.5], 
		[5, 7], ]);
}}}

module GoblinOne_contour00x39_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 9], [5, 9], [5.0, 9.5],steps,height);
	BezConic([19, 13], [18, 12], [18.0, 11.5],steps,height);
	BezConic([18.0, 11.5], [18, 11], [18, 11],steps,height);
	BezConic([18, 11], [18, 10], [18.5, 9.0],steps,height);
	BezConic([18.5, 9.0], [19, 8], [20.5, 7.0],steps,height);
	BezConic([20.5, 7.0], [22, 6], [23.5, 5.5],steps,height);
	BezConic([23.5, 5.5], [25, 5], [28, 5],steps,height);
	BezConic([28, 5], [31, 5], [33.5, 6.0],steps,height);
	BezConic([33.5, 6.0], [36, 7], [37.0, 8.5],steps,height);
	BezConic([37.0, 8.5], [38, 10], [39.0, 12.5],steps,height);
	BezConic([39.0, 12.5], [40, 15], [40, 19],steps,height);
	BezConic([29.0, 16.0], [27, 16], [24, 16],steps,height);
	BezConic([19.5, 16.5], [17, 17], [14.5, 17.5],steps,height);
	BezConic([28, -1], [25, -1], [22.5, -1.0],steps,height);
}
}

module GoblinOne_contour00x39_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5.0, 9.5], [5, 10], [6, 11],steps,height);
	BezConic([40, 19], [38, 18], [36.5, 17.5],steps,height);
	BezConic([36.5, 17.5], [35, 17], [33.0, 16.5],steps,height);
	BezConic([33.0, 16.5], [31, 16], [29.0, 16.0],steps,height);
	BezConic([24, 16], [22, 16], [19.5, 16.5],steps,height);
	BezConic([14.5, 17.5], [12, 18], [10.0, 19.0],steps,height);
	BezConic([10.0, 19.0], [8, 20], [6.5, 21.5],steps,height);
	BezConic([6.5, 21.5], [5, 23], [4.0, 25.0],steps,height);
	BezConic([4.0, 25.0], [3, 27], [3, 30],steps,height);
	BezConic([3, 30], [3, 33], [4.0, 35.0],steps,height);
	BezConic([4.0, 35.0], [5, 37], [7.0, 39.0],steps,height);
	BezConic([7.0, 39.0], [9, 41], [11.5, 42.5],steps,height);
	BezConic([11.5, 42.5], [14, 44], [16.5, 44.5],steps,height);
	BezConic([16.5, 44.5], [19, 45], [22.5, 45.5],steps,height);
	BezConic([22.5, 45.5], [26, 46], [29, 46],steps,height);
	BezConic([29, 46], [43, 46], [49.5, 40.5],steps,height);
	BezConic([49.5, 40.5], [56, 35], [56, 23],steps,height);
	BezConic([56, 23], [56, 18], [54.5, 13.5],steps,height);
	BezConic([54.5, 13.5], [53, 9], [49.5, 6.0],steps,height);
	BezConic([49.5, 6.0], [46, 3], [40.5, 1.0],steps,height);
	BezConic([40.5, 1.0], [35, -1], [28, -1],steps,height);
	BezConic([22.5, -1.0], [20, -1], [17.5, -0.5],steps,height);
	BezConic([17.5, -0.5], [15, 0], [12.5, 1.0],steps,height);
	BezConic([12.5, 1.0], [10, 2], [8.5, 3.0],steps,height);
	BezConic([8.5, 3.0], [7, 4], [6.0, 5.5],steps,height);
	BezConic([6.0, 5.5], [5, 7], [5, 9],steps,height);
}
}

module GoblinOne_contour00x39(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x39_skeleton(height);
			GoblinOne_contour00x39_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x39_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x39_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[29, 23], [31, 23], [34.0, 23.5], 
		[37, 24], [39, 25], [39, 28], 
		[38.5, 31.0], [38, 34], [37.0, 35.5], 
		[36, 37], [34.0, 38.5], [32, 40], 
		[29, 40], [24, 40], [22.0, 37.5], 
		[20, 35], [20, 31], [20, 29], 
		[20.5, 27.5], [21, 26], [22.0, 25.0], 
		[23, 24], [25.0, 23.5], [27, 23], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[29, 23], [31, 23], [34.0, 23.5], 
		[37, 24], [39, 25], [39, 28], 
		[38.5, 31.0], [38, 34], [37.0, 35.5], 
		[36, 37], [34.0, 38.5], [32, 40], 
		[29, 40], [24, 40], [22.0, 37.5], 
		[20, 35], [20, 31], [20, 29], 
		[20.5, 27.5], [21, 26], [22.0, 25.0], 
		[23, 24], [25.0, 23.5], [27, 23], 
		 ]);
}}}

module GoblinOne_contour10x39_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 23], [31, 23], [34.0, 23.5],steps,height);
	BezConic([34.0, 23.5], [37, 24], [39, 25],steps,height);
	BezConic([39, 25], [39, 28], [38.5, 31.0],steps,height);
	BezConic([38.5, 31.0], [38, 34], [37.0, 35.5],steps,height);
	BezConic([37.0, 35.5], [36, 37], [34.0, 38.5],steps,height);
	BezConic([34.0, 38.5], [32, 40], [29, 40],steps,height);
	BezConic([29, 40], [24, 40], [22.0, 37.5],steps,height);
	BezConic([22.0, 37.5], [20, 35], [20, 31],steps,height);
	BezConic([20, 31], [20, 29], [20.5, 27.5],steps,height);
	BezConic([20.5, 27.5], [21, 26], [22.0, 25.0],steps,height);
	BezConic([22.0, 25.0], [23, 24], [25.0, 23.5],steps,height);
	BezConic([25.0, 23.5], [27, 23], [29, 23],steps,height);
}
}

module GoblinOne_contour10x39_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x39(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x39_skeleton(height);
			GoblinOne_contour10x39_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x39_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x39(steps=2, height) {
	difference() {
		GoblinOne_contour00x39(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x39(steps, height);
	}
}

GoblinOne_bbox0x39=[[3, -1], [56, 46]];

module GoblinOne_letter0x39(steps=2, height) {
	GoblinOne_chunk10x39(steps, height);
} //end skeleton

module GoblinOne_contour00x3a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, 20], [10, 20], [8.5, 20.5], 
		[7, 21], [6.0, 22.5], [5, 24], 
		[4.5, 25.0], [4, 26], [4, 28], 
		[4, 30], [4.5, 31.0], [5, 32], 
		[6.0, 33.5], [7, 35], [8.5, 35.5], 
		[10, 36], [12, 36], [13, 36], 
		[14.5, 35.5], [16, 35], [17.0, 33.5], 
		[18, 32], [18.5, 31.0], [19, 30], 
		[19, 28], [19, 26], [18.5, 25.0], 
		[18, 24], [17.0, 22.5], [16, 21], 
		[14.5, 20.5],[13, 20], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, 20], [10, 20], [8.5, 20.5], 
		[7, 21], [6.0, 22.5], [5, 24], 
		[4.5, 25.0], [4, 26], [4, 28], 
		[4, 30], [4.5, 31.0], [5, 32], 
		[6.0, 33.5], [7, 35], [8.5, 35.5], 
		[10, 36], [12, 36], [13, 36], 
		[14.5, 35.5], [16, 35], [17.0, 33.5], 
		[18, 32], [18.5, 31.0], [19, 30], 
		[19, 28], [19, 26], [18.5, 25.0], 
		[18, 24], [17.0, 22.5], [16, 21], 
		[14.5, 20.5],[13, 20], ]);
}}}

module GoblinOne_contour00x3a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x3a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 20], [10, 20], [8.5, 20.5],steps,height);
	BezConic([8.5, 20.5], [7, 21], [6.0, 22.5],steps,height);
	BezConic([6.0, 22.5], [5, 24], [4.5, 25.0],steps,height);
	BezConic([4.5, 25.0], [4, 26], [4, 28],steps,height);
	BezConic([4, 28], [4, 30], [4.5, 31.0],steps,height);
	BezConic([4.5, 31.0], [5, 32], [6.0, 33.5],steps,height);
	BezConic([6.0, 33.5], [7, 35], [8.5, 35.5],steps,height);
	BezConic([8.5, 35.5], [10, 36], [12, 36],steps,height);
	BezConic([12, 36], [13, 36], [14.5, 35.5],steps,height);
	BezConic([14.5, 35.5], [16, 35], [17.0, 33.5],steps,height);
	BezConic([17.0, 33.5], [18, 32], [18.5, 31.0],steps,height);
	BezConic([18.5, 31.0], [19, 30], [19, 28],steps,height);
	BezConic([19, 28], [19, 26], [18.5, 25.0],steps,height);
	BezConic([18.5, 25.0], [18, 24], [17.0, 22.5],steps,height);
	BezConic([17.0, 22.5], [16, 21], [14.5, 20.5],steps,height);
	BezConic([14.5, 20.5], [13, 20], [12, 20],steps,height);
}
}

module GoblinOne_contour00x3a(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x3a_skeleton(height);
			GoblinOne_contour00x3a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x3a_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x3a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 7], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [18.5, 9.5], 
		[19, 8], [19, 7], [19, 5], 
		[18.5, 3.5], [18, 2], [17.0, 1.0], 
		[16, 0], [14.5, -0.5], [13, -1], 
		[12, -1], [10, -1], [8.5, -0.5], 
		[7, 0], [6.0, 1.0], [5, 2], 
		[4.5, 3.5],[4, 5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 7], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [18.5, 9.5], 
		[19, 8], [19, 7], [19, 5], 
		[18.5, 3.5], [18, 2], [17.0, 1.0], 
		[16, 0], [14.5, -0.5], [13, -1], 
		[12, -1], [10, -1], [8.5, -0.5], 
		[7, 0], [6.0, 1.0], [5, 2], 
		[4.5, 3.5],[4, 5], ]);
}}}

module GoblinOne_contour10x3a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x3a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 7], [4, 8], [4.5, 9.5],steps,height);
	BezConic([4.5, 9.5], [5, 11], [6.0, 12.0],steps,height);
	BezConic([6.0, 12.0], [7, 13], [8.5, 13.5],steps,height);
	BezConic([8.5, 13.5], [10, 14], [12, 14],steps,height);
	BezConic([12, 14], [13, 14], [14.5, 13.5],steps,height);
	BezConic([14.5, 13.5], [16, 13], [17.0, 12.0],steps,height);
	BezConic([17.0, 12.0], [18, 11], [18.5, 9.5],steps,height);
	BezConic([18.5, 9.5], [19, 8], [19, 7],steps,height);
	BezConic([19, 7], [19, 5], [18.5, 3.5],steps,height);
	BezConic([18.5, 3.5], [18, 2], [17.0, 1.0],steps,height);
	BezConic([17.0, 1.0], [16, 0], [14.5, -0.5],steps,height);
	BezConic([14.5, -0.5], [13, -1], [12, -1],steps,height);
	BezConic([12, -1], [10, -1], [8.5, -0.5],steps,height);
	BezConic([8.5, -0.5], [7, 0], [6.0, 1.0],steps,height);
	BezConic([6.0, 1.0], [5, 2], [4.5, 3.5],steps,height);
	BezConic([4.5, 3.5], [4, 5], [4, 7],steps,height);
}
}

module GoblinOne_contour10x3a(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x3a_skeleton(height);
			GoblinOne_contour10x3a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x3a_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x3a(steps=2, height) {
	difference() {
		GoblinOne_contour00x3a(steps, height);
		
	}
}

module GoblinOne_chunk20x3a(steps=2, height) {
	difference() {
		GoblinOne_contour10x3a(steps, height);
		
	}
}

GoblinOne_bbox0x3a=[[4, -1], [19, 36]];

module GoblinOne_letter0x3a(steps=2, height) {
	GoblinOne_chunk10x3a(steps, height);
	GoblinOne_chunk20x3a(steps, height);
} //end skeleton

module GoblinOne_contour00x3b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, 20], [10, 20], [8.5, 20.5], 
		[7, 21], [6.0, 22.5], [5, 24], 
		[4.5, 25.0], [4, 26], [4, 28], 
		[4, 30], [4.5, 31.0], [5, 32], 
		[6.0, 33.5], [7, 35], [8.5, 35.5], 
		[10, 36], [12, 36], [13, 36], 
		[14.5, 35.5], [16, 35], [17.0, 33.5], 
		[18, 32], [18.5, 31.0], [19, 30], 
		[19, 28], [19, 26], [18.5, 25.0], 
		[18, 24], [17.0, 22.5], [16, 21], 
		[14.5, 20.5],[13, 20], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, 20], [10, 20], [8.5, 20.5], 
		[7, 21], [6.0, 22.5], [5, 24], 
		[4.5, 25.0], [4, 26], [4, 28], 
		[4, 30], [4.5, 31.0], [5, 32], 
		[6.0, 33.5], [7, 35], [8.5, 35.5], 
		[10, 36], [12, 36], [13, 36], 
		[14.5, 35.5], [16, 35], [17.0, 33.5], 
		[18, 32], [18.5, 31.0], [19, 30], 
		[19, 28], [19, 26], [18.5, 25.0], 
		[18, 24], [17.0, 22.5], [16, 21], 
		[14.5, 20.5],[13, 20], ]);
}}}

module GoblinOne_contour00x3b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x3b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 20], [10, 20], [8.5, 20.5],steps,height);
	BezConic([8.5, 20.5], [7, 21], [6.0, 22.5],steps,height);
	BezConic([6.0, 22.5], [5, 24], [4.5, 25.0],steps,height);
	BezConic([4.5, 25.0], [4, 26], [4, 28],steps,height);
	BezConic([4, 28], [4, 30], [4.5, 31.0],steps,height);
	BezConic([4.5, 31.0], [5, 32], [6.0, 33.5],steps,height);
	BezConic([6.0, 33.5], [7, 35], [8.5, 35.5],steps,height);
	BezConic([8.5, 35.5], [10, 36], [12, 36],steps,height);
	BezConic([12, 36], [13, 36], [14.5, 35.5],steps,height);
	BezConic([14.5, 35.5], [16, 35], [17.0, 33.5],steps,height);
	BezConic([17.0, 33.5], [18, 32], [18.5, 31.0],steps,height);
	BezConic([18.5, 31.0], [19, 30], [19, 28],steps,height);
	BezConic([19, 28], [19, 26], [18.5, 25.0],steps,height);
	BezConic([18.5, 25.0], [18, 24], [17.0, 22.5],steps,height);
	BezConic([17.0, 22.5], [16, 21], [14.5, 20.5],steps,height);
	BezConic([14.5, 20.5], [13, 20], [12, 20],steps,height);
}
}

module GoblinOne_contour00x3b(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x3b_skeleton(height);
			GoblinOne_contour00x3b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x3b_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x3b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 6], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [19.0, 9.5], 
		[20, 8], [20, 6], [20, 1], 
		[17.5, -3.5], [15, -8], [11, -11], 
		[9.0, -10.0], [7, -9], [9, -7], 
		[10.0, -5.0], [11, -3], [12, -1], 
		[11, -1], [11, -1], [9, -1], 
		[8.0, -0.5], [7, 0], [6.0, 1.0], 
		[5, 2], [4.5, 3.5], [4, 5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 6], [4, 8], [4.5, 9.5], 
		[5, 11], [6.0, 12.0], [7, 13], 
		[8.5, 13.5], [10, 14], [12, 14], 
		[13, 14], [14.5, 13.5], [16, 13], 
		[17.0, 12.0], [18, 11], [19.0, 9.5], 
		[20, 8], [20, 6], [20, 1], 
		[17.5, -3.5], [15, -8], [11, -11], 
		[9.0, -10.0], [7, -9], [9, -7], 
		[10.0, -5.0], [11, -3], [12, -1], 
		[11, -1], [11, -1], [9, -1], 
		[8.0, -0.5], [7, 0], [6.0, 1.0], 
		[5, 2], [4.5, 3.5], [4, 5], 
		 ]);
}}}

module GoblinOne_contour10x3b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, -9], [9, -7], [10.0, -5.0],steps,height);
	BezConic([10.0, -5.0], [11, -3], [12, -1],steps,height);
	BezConic([12, -1], [11, -1], [11, -1],steps,height);
}
}

module GoblinOne_contour10x3b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 6], [4, 8], [4.5, 9.5],steps,height);
	BezConic([4.5, 9.5], [5, 11], [6.0, 12.0],steps,height);
	BezConic([6.0, 12.0], [7, 13], [8.5, 13.5],steps,height);
	BezConic([8.5, 13.5], [10, 14], [12, 14],steps,height);
	BezConic([12, 14], [13, 14], [14.5, 13.5],steps,height);
	BezConic([14.5, 13.5], [16, 13], [17.0, 12.0],steps,height);
	BezConic([17.0, 12.0], [18, 11], [19.0, 9.5],steps,height);
	BezConic([19.0, 9.5], [20, 8], [20, 6],steps,height);
	BezConic([20, 6], [20, 1], [17.5, -3.5],steps,height);
	BezConic([17.5, -3.5], [15, -8], [11, -11],steps,height);
	BezConic([11, -1], [9, -1], [8.0, -0.5],steps,height);
	BezConic([8.0, -0.5], [7, 0], [6.0, 1.0],steps,height);
	BezConic([6.0, 1.0], [5, 2], [4.5, 3.5],steps,height);
	BezConic([4.5, 3.5], [4, 5], [4, 6],steps,height);
}
}

module GoblinOne_contour10x3b(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x3b_skeleton(height);
			GoblinOne_contour10x3b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x3b_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x3b(steps=2, height) {
	difference() {
		GoblinOne_contour00x3b(steps, height);
		
	}
}

module GoblinOne_chunk20x3b(steps=2, height) {
	difference() {
		GoblinOne_contour10x3b(steps, height);
		
	}
}

GoblinOne_bbox0x3b=[[4, -11], [20, 36]];

module GoblinOne_letter0x3b(steps=2, height) {
	GoblinOne_chunk10x3b(steps, height);
	GoblinOne_chunk20x3b(steps, height);
} //end skeleton

module GoblinOne_contour00x3c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 23], [12.5, 31.5], [21, 40], 
		[23.5, 37.0], [26, 34], [20.5, 28.5], 
		[15, 23], [20.5, 17.0], [26, 11], 
		[23.5, 8.5], [21, 6], [12.5, 14.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 23], [12.5, 31.5], [21, 40], 
		[23.5, 37.0], [26, 34], [20.5, 28.5], 
		[15, 23], [20.5, 17.0], [26, 11], 
		[23.5, 8.5], [21, 6], [12.5, 14.5], 
		 ]);
}}}

module GoblinOne_contour00x3c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x3c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x3c(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x3c_skeleton(height);
			GoblinOne_contour00x3c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x3c_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x3c(steps=2, height) {
	difference() {
		GoblinOne_contour00x3c(steps, height);
		
	}
}

GoblinOne_bbox0x3c=[[4, 6], [26, 40]];

module GoblinOne_letter0x3c(steps=2, height) {
	GoblinOne_chunk10x3c(steps, height);
} //end skeleton

module GoblinOne_contour00x3d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 33], [20.0, 33.0], [36, 33], 
		[36.0, 29.5], [36, 26], [20.0, 26.0], 
		[4, 26],[4.0, 29.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 33], [20.0, 33.0], [36, 33], 
		[36.0, 29.5], [36, 26], [20.0, 26.0], 
		[4, 26],[4.0, 29.5], ]);
}}}

module GoblinOne_contour00x3d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x3d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x3d(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x3d_skeleton(height);
			GoblinOne_contour00x3d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x3d_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x3d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 16], [20.0, 16.0], [36, 16], 
		[36.0, 12.5], [36, 9], [20.0, 9.0], 
		[4, 9],[4.0, 12.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 16], [20.0, 16.0], [36, 16], 
		[36.0, 12.5], [36, 9], [20.0, 9.0], 
		[4, 9],[4.0, 12.5], ]);
}}}

module GoblinOne_contour10x3d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x3d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x3d(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x3d_skeleton(height);
			GoblinOne_contour10x3d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x3d_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x3d(steps=2, height) {
	difference() {
		GoblinOne_contour00x3d(steps, height);
		
	}
}

module GoblinOne_chunk20x3d(steps=2, height) {
	difference() {
		GoblinOne_contour10x3d(steps, height);
		
	}
}

GoblinOne_bbox0x3d=[[4, 9], [36, 33]];

module GoblinOne_letter0x3d(steps=2, height) {
	GoblinOne_chunk10x3d(steps, height);
	GoblinOne_chunk20x3d(steps, height);
} //end skeleton

module GoblinOne_contour00x3e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 11], [10.0, 17.0], [16, 23], 
		[10.0, 28.5], [4, 34], [7.0, 37.0], 
		[10, 40], [18.5, 31.5], [27, 23], 
		[18.5, 14.5], [10, 6], [7.0, 8.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 11], [10.0, 17.0], [16, 23], 
		[10.0, 28.5], [4, 34], [7.0, 37.0], 
		[10, 40], [18.5, 31.5], [27, 23], 
		[18.5, 14.5], [10, 6], [7.0, 8.5], 
		 ]);
}}}

module GoblinOne_contour00x3e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x3e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x3e(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x3e_skeleton(height);
			GoblinOne_contour00x3e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x3e_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x3e(steps=2, height) {
	difference() {
		GoblinOne_contour00x3e(steps, height);
		
	}
}

GoblinOne_bbox0x3e=[[4, 6], [27, 40]];

module GoblinOne_letter0x3e(steps=2, height) {
	GoblinOne_chunk10x3e(steps, height);
} //end skeleton

module GoblinOne_contour00x3f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[22, 19], [21, 19], [21.0, 20.0], 
		[21, 21], [21, 21], [21, 23], 
		[21.5, 24.0], [22, 25], [23.5, 26.0], 
		[25, 27], [26.0, 27.5], [27, 28], 
		[28.5, 28.5], [30, 29], [31.5, 29.5], 
		[33, 30], [34.5, 30.5], [36, 31], 
		[36.5, 32.0], [37, 33], [37, 34], 
		[37, 36], [36.0, 37.0], [35, 38], 
		[34.0, 38.5], [33, 39], [31.0, 39.5], 
		[29, 40], [27, 40], [25, 40], 
		[23.0, 39.5], [21, 39], [19.5, 38.0], 
		[18, 37], [17.0, 35.0], [16, 33], 
		[16, 31], [16, 30], [16.0, 29.5], 
		[16, 29], [17, 28], [10.5, 29.0], 
		[4, 30], [4, 31], [4.0, 32.0], 
		[4, 33], [4, 33], [4, 36], 
		[5.0, 38.0], [6, 40], [7.5, 41.5], 
		[9, 43], [11.0, 44.0], [13, 45], 
		[15.5, 45.5], [18, 46], [21.0, 46.5], 
		[24, 47], [27, 47], [32, 47], 
		[36.5, 46.5], [41, 46], [44.5, 44.5], 
		[48, 43], [50.0, 40.5], [52, 38], 
		[52, 35], [52, 33], [51.0, 31.5], 
		[50, 30], [48.5, 28.5], [47, 27], 
		[45.5, 26.5], [44, 26], [42.0, 25.5], 
		[40, 25], [38.5, 24.5], [37, 24], 
		[35.5, 23.0], [34, 22], [33.0, 21.5], 
		[32, 21], [32, 20], [32, 19], 
		[32, 19],[27.0, 19.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[22, 19], [21, 19], [21.0, 20.0], 
		[21, 21], [21, 21], [21, 23], 
		[21.5, 24.0], [22, 25], [23.5, 26.0], 
		[25, 27], [26.0, 27.5], [27, 28], 
		[28.5, 28.5], [30, 29], [31.5, 29.5], 
		[33, 30], [34.5, 30.5], [36, 31], 
		[36.5, 32.0], [37, 33], [37, 34], 
		[37, 36], [36.0, 37.0], [35, 38], 
		[34.0, 38.5], [33, 39], [31.0, 39.5], 
		[29, 40], [27, 40], [25, 40], 
		[23.0, 39.5], [21, 39], [19.5, 38.0], 
		[18, 37], [17.0, 35.0], [16, 33], 
		[16, 31], [16, 30], [16.0, 29.5], 
		[16, 29], [17, 28], [10.5, 29.0], 
		[4, 30], [4, 31], [4.0, 32.0], 
		[4, 33], [4, 33], [4, 36], 
		[5.0, 38.0], [6, 40], [7.5, 41.5], 
		[9, 43], [11.0, 44.0], [13, 45], 
		[15.5, 45.5], [18, 46], [21.0, 46.5], 
		[24, 47], [27, 47], [32, 47], 
		[36.5, 46.5], [41, 46], [44.5, 44.5], 
		[48, 43], [50.0, 40.5], [52, 38], 
		[52, 35], [52, 33], [51.0, 31.5], 
		[50, 30], [48.5, 28.5], [47, 27], 
		[45.5, 26.5], [44, 26], [42.0, 25.5], 
		[40, 25], [38.5, 24.5], [37, 24], 
		[35.5, 23.0], [34, 22], [33.0, 21.5], 
		[32, 21], [32, 20], [32, 19], 
		[32, 19],[27.0, 19.0], ]);
}}}

module GoblinOne_contour00x3f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21.0, 20.0], [21, 21], [21, 21],steps,height);
	BezConic([34.5, 30.5], [36, 31], [36.5, 32.0],steps,height);
	BezConic([36.5, 32.0], [37, 33], [37, 34],steps,height);
	BezConic([37, 34], [37, 36], [36.0, 37.0],steps,height);
	BezConic([36.0, 37.0], [35, 38], [34.0, 38.5],steps,height);
	BezConic([34.0, 38.5], [33, 39], [31.0, 39.5],steps,height);
	BezConic([31.0, 39.5], [29, 40], [27, 40],steps,height);
	BezConic([27, 40], [25, 40], [23.0, 39.5],steps,height);
	BezConic([23.0, 39.5], [21, 39], [19.5, 38.0],steps,height);
	BezConic([19.5, 38.0], [18, 37], [17.0, 35.0],steps,height);
	BezConic([17.0, 35.0], [16, 33], [16, 31],steps,height);
	BezConic([16, 31], [16, 30], [16.0, 29.5],steps,height);
	BezConic([16.0, 29.5], [16, 29], [17, 28],steps,height);
	BezConic([4, 30], [4, 31], [4.0, 32.0],steps,height);
	BezConic([4.0, 32.0], [4, 33], [4, 33],steps,height);
	BezConic([42.0, 25.5], [40, 25], [38.5, 24.5],steps,height);
	BezConic([38.5, 24.5], [37, 24], [35.5, 23.0],steps,height);
	BezConic([33.0, 21.5], [32, 21], [32, 20],steps,height);
	BezConic([32, 20], [32, 19], [32, 19],steps,height);
}
}

module GoblinOne_contour00x3f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22, 19], [21, 19], [21.0, 20.0],steps,height);
	BezConic([21, 21], [21, 23], [21.5, 24.0],steps,height);
	BezConic([21.5, 24.0], [22, 25], [23.5, 26.0],steps,height);
	BezConic([23.5, 26.0], [25, 27], [26.0, 27.5],steps,height);
	BezConic([26.0, 27.5], [27, 28], [28.5, 28.5],steps,height);
	BezConic([28.5, 28.5], [30, 29], [31.5, 29.5],steps,height);
	BezConic([31.5, 29.5], [33, 30], [34.5, 30.5],steps,height);
	BezConic([4, 33], [4, 36], [5.0, 38.0],steps,height);
	BezConic([5.0, 38.0], [6, 40], [7.5, 41.5],steps,height);
	BezConic([7.5, 41.5], [9, 43], [11.0, 44.0],steps,height);
	BezConic([11.0, 44.0], [13, 45], [15.5, 45.5],steps,height);
	BezConic([15.5, 45.5], [18, 46], [21.0, 46.5],steps,height);
	BezConic([21.0, 46.5], [24, 47], [27, 47],steps,height);
	BezConic([27, 47], [32, 47], [36.5, 46.5],steps,height);
	BezConic([36.5, 46.5], [41, 46], [44.5, 44.5],steps,height);
	BezConic([44.5, 44.5], [48, 43], [50.0, 40.5],steps,height);
	BezConic([50.0, 40.5], [52, 38], [52, 35],steps,height);
	BezConic([52, 35], [52, 33], [51.0, 31.5],steps,height);
	BezConic([51.0, 31.5], [50, 30], [48.5, 28.5],steps,height);
	BezConic([48.5, 28.5], [47, 27], [45.5, 26.5],steps,height);
	BezConic([45.5, 26.5], [44, 26], [42.0, 25.5],steps,height);
	BezConic([35.5, 23.0], [34, 22], [33.0, 21.5],steps,height);
}
}

module GoblinOne_contour00x3f(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x3f_skeleton(height);
			GoblinOne_contour00x3f_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x3f_additive_curves(steps, height);
	}
}

module GoblinOne_contour10x3f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 7], [19, 8], [20.0, 9.5], 
		[21, 11], [22.0, 12.0], [23, 13], 
		[24.5, 13.5], [26, 14], [27, 14], 
		[29, 14], [30.5, 13.5], [32, 13], 
		[33.0, 12.0], [34, 11], [34.5, 9.5], 
		[35, 8], [35, 7], [35, 5], 
		[34.5, 3.5], [34, 2], [33.0, 1.0], 
		[32, 0], [30.5, -0.5], [29, -1], 
		[27, -1], [26, -1], [24.5, -0.5], 
		[23, 0], [22.0, 1.0], [21, 2], 
		[20.0, 3.5],[19, 5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 7], [19, 8], [20.0, 9.5], 
		[21, 11], [22.0, 12.0], [23, 13], 
		[24.5, 13.5], [26, 14], [27, 14], 
		[29, 14], [30.5, 13.5], [32, 13], 
		[33.0, 12.0], [34, 11], [34.5, 9.5], 
		[35, 8], [35, 7], [35, 5], 
		[34.5, 3.5], [34, 2], [33.0, 1.0], 
		[32, 0], [30.5, -0.5], [29, -1], 
		[27, -1], [26, -1], [24.5, -0.5], 
		[23, 0], [22.0, 1.0], [21, 2], 
		[20.0, 3.5],[19, 5], ]);
}}}

module GoblinOne_contour10x3f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x3f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19, 7], [19, 8], [20.0, 9.5],steps,height);
	BezConic([20.0, 9.5], [21, 11], [22.0, 12.0],steps,height);
	BezConic([22.0, 12.0], [23, 13], [24.5, 13.5],steps,height);
	BezConic([24.5, 13.5], [26, 14], [27, 14],steps,height);
	BezConic([27, 14], [29, 14], [30.5, 13.5],steps,height);
	BezConic([30.5, 13.5], [32, 13], [33.0, 12.0],steps,height);
	BezConic([33.0, 12.0], [34, 11], [34.5, 9.5],steps,height);
	BezConic([34.5, 9.5], [35, 8], [35, 7],steps,height);
	BezConic([35, 7], [35, 5], [34.5, 3.5],steps,height);
	BezConic([34.5, 3.5], [34, 2], [33.0, 1.0],steps,height);
	BezConic([33.0, 1.0], [32, 0], [30.5, -0.5],steps,height);
	BezConic([30.5, -0.5], [29, -1], [27, -1],steps,height);
	BezConic([27, -1], [26, -1], [24.5, -0.5],steps,height);
	BezConic([24.5, -0.5], [23, 0], [22.0, 1.0],steps,height);
	BezConic([22.0, 1.0], [21, 2], [20.0, 3.5],steps,height);
	BezConic([20.0, 3.5], [19, 5], [19, 7],steps,height);
}
}

module GoblinOne_contour10x3f(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x3f_skeleton(height);
			GoblinOne_contour10x3f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x3f_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk00x3f(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x3f(steps, height);
	}
}

module GoblinOne_chunk10x3f(steps=2, height) {
	difference() {
		GoblinOne_contour10x3f(steps, height);
		
	}
}

GoblinOne_bbox0x3f=[[4, -1], [52, 47]];

module GoblinOne_letter0x3f(steps=2, height) {
	GoblinOne_chunk00x3f(steps, height);
	GoblinOne_chunk10x3f(steps, height);
} //end skeleton

module GoblinOne_contour00x40_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 12], [4, 17], [5.5, 21.0], 
		[7, 25], [9.5, 29.0], [12, 33], 
		[16.0, 35.5], [20, 38], [25.0, 40.5], 
		[30, 43], [36.0, 44.0], [42, 45], 
		[49, 45], [58, 45], [65.5, 43.0], 
		[73, 41], [77.5, 38.0], [82, 35], 
		[84.5, 30.5], [87, 26], [87, 21], 
		[87, 17], [85.5, 13.0], [84, 9], 
		[81.0, 6.0], [78, 3], [74.0, 1.5], 
		[70, 0], [65, 0], [59, 0], 
		[56.0, 1.5], [53, 3], [52, 6], 
		[49, 3], [45.0, 1.5], [41, 0], 
		[35, 0], [32, 0], [29.0, 1.0], 
		[26, 2], [24.0, 3.5], [22, 5], 
		[21.0, 7.5], [20, 10], [20, 13], 
		[20, 16], [21.0, 19.0], [22, 22], 
		[24.5, 24.0], [27, 26], [29.5, 28.0], 
		[32, 30], [35.5, 31.0], [39, 32], 
		[42.0, 32.5], [45, 33], [49, 33], 
		[52, 33], [54.5, 33.0], [57, 33], 
		[60.0, 32.0], [63, 31], [65.5, 29.5], 
		[68, 28], [70, 26], [68.0, 17.5], 
		[66, 9], [66, 9], [66.0, 8.5], 
		[66, 8], [66, 8], [66, 7], 
		[67.0, 6.5], [68, 6], [70, 6], 
		[73, 6], [75.0, 7.0], [77, 8], 
		[78.5, 10.5], [80, 13], [80.5, 15.5], 
		[81, 18], [81, 21], [81, 26], 
		[78.5, 29.5], [76, 33], [72.0, 35.5], 
		[68, 38], [62.0, 39.0], [56, 40], 
		[48, 40], [42, 40], [36.5, 39.0], 
		[31, 38], [27.0, 36.0], [23, 34], 
		[20.0, 31.5], [17, 29], [14.5, 26.0], 
		[12, 23], [11.0, 19.5], [10, 16], 
		[10, 12], [10, 8], [12.0, 4.0], 
		[14, 0], [18.0, -2.5], [22, -5], 
		[28.5, -6.5], [35, -8], [45, -8], 
		[47, -8], [50.0, -7.5], [53, -7], 
		[56.0, -7.0], [59, -7], [61.5, -6.5], 
		[64, -6], [67.0, -5.5], [70, -5], 
		[72.0, -4.5], [74, -4], [76, -3], 
		[76.5, -5.0], [77, -7], [76, -8], 
		[73.0, -9.0], [70, -10], [65.5, -10.5], 
		[61, -11], [55.5, -11.5], [50, -12], 
		[43, -12], [33, -12], [25.5, -10.5], 
		[18, -9], [13.0, -5.5], [8, -2], 
		[6.0, 2.0],[4, 6], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 12], [4, 17], [5.5, 21.0], 
		[7, 25], [9.5, 29.0], [12, 33], 
		[16.0, 35.5], [20, 38], [25.0, 40.5], 
		[30, 43], [36.0, 44.0], [42, 45], 
		[49, 45], [58, 45], [65.5, 43.0], 
		[73, 41], [77.5, 38.0], [82, 35], 
		[84.5, 30.5], [87, 26], [87, 21], 
		[87, 17], [85.5, 13.0], [84, 9], 
		[81.0, 6.0], [78, 3], [74.0, 1.5], 
		[70, 0], [65, 0], [59, 0], 
		[56.0, 1.5], [53, 3], [52, 6], 
		[49, 3], [45.0, 1.5], [41, 0], 
		[35, 0], [32, 0], [29.0, 1.0], 
		[26, 2], [24.0, 3.5], [22, 5], 
		[21.0, 7.5], [20, 10], [20, 13], 
		[20, 16], [21.0, 19.0], [22, 22], 
		[24.5, 24.0], [27, 26], [29.5, 28.0], 
		[32, 30], [35.5, 31.0], [39, 32], 
		[42.0, 32.5], [45, 33], [49, 33], 
		[52, 33], [54.5, 33.0], [57, 33], 
		[60.0, 32.0], [63, 31], [65.5, 29.5], 
		[68, 28], [70, 26], [68.0, 17.5], 
		[66, 9], [66, 9], [66.0, 8.5], 
		[66, 8], [66, 8], [66, 7], 
		[67.0, 6.5], [68, 6], [70, 6], 
		[73, 6], [75.0, 7.0], [77, 8], 
		[78.5, 10.5], [80, 13], [80.5, 15.5], 
		[81, 18], [81, 21], [81, 26], 
		[78.5, 29.5], [76, 33], [72.0, 35.5], 
		[68, 38], [62.0, 39.0], [56, 40], 
		[48, 40], [42, 40], [36.5, 39.0], 
		[31, 38], [27.0, 36.0], [23, 34], 
		[20.0, 31.5], [17, 29], [14.5, 26.0], 
		[12, 23], [11.0, 19.5], [10, 16], 
		[10, 12], [10, 8], [12.0, 4.0], 
		[14, 0], [18.0, -2.5], [22, -5], 
		[28.5, -6.5], [35, -8], [45, -8], 
		[47, -8], [50.0, -7.5], [53, -7], 
		[56.0, -7.0], [59, -7], [61.5, -6.5], 
		[64, -6], [67.0, -5.5], [70, -5], 
		[72.0, -4.5], [74, -4], [76, -3], 
		[76.5, -5.0], [77, -7], [76, -8], 
		[73.0, -9.0], [70, -10], [65.5, -10.5], 
		[61, -11], [55.5, -11.5], [50, -12], 
		[43, -12], [33, -12], [25.5, -10.5], 
		[18, -9], [13.0, -5.5], [8, -2], 
		[6.0, 2.0],[4, 6], ]);
}}}

module GoblinOne_contour00x40_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24.5, 24.0], [27, 26], [29.5, 28.0],steps,height);
	BezConic([49, 33], [52, 33], [54.5, 33.0],steps,height);
	BezConic([66.0, 8.5], [66, 8], [66, 8],steps,height);
	BezConic([66, 8], [66, 7], [67.0, 6.5],steps,height);
	BezConic([67.0, 6.5], [68, 6], [70, 6],steps,height);
	BezConic([70, 6], [73, 6], [75.0, 7.0],steps,height);
	BezConic([75.0, 7.0], [77, 8], [78.5, 10.5],steps,height);
	BezConic([78.5, 10.5], [80, 13], [80.5, 15.5],steps,height);
	BezConic([80.5, 15.5], [81, 18], [81, 21],steps,height);
	BezConic([81, 21], [81, 26], [78.5, 29.5],steps,height);
	BezConic([78.5, 29.5], [76, 33], [72.0, 35.5],steps,height);
	BezConic([72.0, 35.5], [68, 38], [62.0, 39.0],steps,height);
	BezConic([62.0, 39.0], [56, 40], [48, 40],steps,height);
	BezConic([48, 40], [42, 40], [36.5, 39.0],steps,height);
	BezConic([36.5, 39.0], [31, 38], [27.0, 36.0],steps,height);
	BezConic([27.0, 36.0], [23, 34], [20.0, 31.5],steps,height);
	BezConic([20.0, 31.5], [17, 29], [14.5, 26.0],steps,height);
	BezConic([14.5, 26.0], [12, 23], [11.0, 19.5],steps,height);
	BezConic([11.0, 19.5], [10, 16], [10, 12],steps,height);
	BezConic([10, 12], [10, 8], [12.0, 4.0],steps,height);
	BezConic([12.0, 4.0], [14, 0], [18.0, -2.5],steps,height);
	BezConic([18.0, -2.5], [22, -5], [28.5, -6.5],steps,height);
	BezConic([28.5, -6.5], [35, -8], [45, -8],steps,height);
	BezConic([45, -8], [47, -8], [50.0, -7.5],steps,height);
	BezConic([56.0, -7.0], [59, -7], [61.5, -6.5],steps,height);
	BezConic([67.0, -5.5], [70, -5], [72.0, -4.5],steps,height);
	BezConic([72.0, -4.5], [74, -4], [76, -3],steps,height);
}
}

module GoblinOne_contour00x40_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 12], [4, 17], [5.5, 21.0],steps,height);
	BezConic([5.5, 21.0], [7, 25], [9.5, 29.0],steps,height);
	BezConic([9.5, 29.0], [12, 33], [16.0, 35.5],steps,height);
	BezConic([16.0, 35.5], [20, 38], [25.0, 40.5],steps,height);
	BezConic([25.0, 40.5], [30, 43], [36.0, 44.0],steps,height);
	BezConic([36.0, 44.0], [42, 45], [49, 45],steps,height);
	BezConic([49, 45], [58, 45], [65.5, 43.0],steps,height);
	BezConic([65.5, 43.0], [73, 41], [77.5, 38.0],steps,height);
	BezConic([77.5, 38.0], [82, 35], [84.5, 30.5],steps,height);
	BezConic([84.5, 30.5], [87, 26], [87, 21],steps,height);
	BezConic([87, 21], [87, 17], [85.5, 13.0],steps,height);
	BezConic([85.5, 13.0], [84, 9], [81.0, 6.0],steps,height);
	BezConic([81.0, 6.0], [78, 3], [74.0, 1.5],steps,height);
	BezConic([74.0, 1.5], [70, 0], [65, 0],steps,height);
	BezConic([65, 0], [59, 0], [56.0, 1.5],steps,height);
	BezConic([56.0, 1.5], [53, 3], [52, 6],steps,height);
	BezConic([52, 6], [49, 3], [45.0, 1.5],steps,height);
	BezConic([45.0, 1.5], [41, 0], [35, 0],steps,height);
	BezConic([35, 0], [32, 0], [29.0, 1.0],steps,height);
	BezConic([29.0, 1.0], [26, 2], [24.0, 3.5],steps,height);
	BezConic([24.0, 3.5], [22, 5], [21.0, 7.5],steps,height);
	BezConic([21.0, 7.5], [20, 10], [20, 13],steps,height);
	BezConic([20, 13], [20, 16], [21.0, 19.0],steps,height);
	BezConic([21.0, 19.0], [22, 22], [24.5, 24.0],steps,height);
	BezConic([29.5, 28.0], [32, 30], [35.5, 31.0],steps,height);
	BezConic([35.5, 31.0], [39, 32], [42.0, 32.5],steps,height);
	BezConic([42.0, 32.5], [45, 33], [49, 33],steps,height);
	BezConic([54.5, 33.0], [57, 33], [60.0, 32.0],steps,height);
	BezConic([60.0, 32.0], [63, 31], [65.5, 29.5],steps,height);
	BezConic([65.5, 29.5], [68, 28], [70, 26],steps,height);
	BezConic([66, 9], [66, 9], [66.0, 8.5],steps,height);
	BezConic([50.0, -7.5], [53, -7], [56.0, -7.0],steps,height);
	BezConic([61.5, -6.5], [64, -6], [67.0, -5.5],steps,height);
	BezConic([77, -7], [76, -8], [73.0, -9.0],steps,height);
	BezConic([73.0, -9.0], [70, -10], [65.5, -10.5],steps,height);
	BezConic([65.5, -10.5], [61, -11], [55.5, -11.5],steps,height);
	BezConic([55.5, -11.5], [50, -12], [43, -12],steps,height);
	BezConic([43, -12], [33, -12], [25.5, -10.5],steps,height);
	BezConic([25.5, -10.5], [18, -9], [13.0, -5.5],steps,height);
	BezConic([13.0, -5.5], [8, -2], [6.0, 2.0],steps,height);
	BezConic([6.0, 2.0], [4, 6], [4, 12],steps,height);
}
}

module GoblinOne_contour00x40(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x40_skeleton(height);
			GoblinOne_contour00x40_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x40_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x40_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[36, 13], [36, 12], [36.0, 10.5], 
		[36, 9], [37.0, 8.0], [38, 7], 
		[39.5, 6.5], [41, 6], [42, 6], 
		[43, 6], [44.5, 6.5], [46, 7], 
		[47.0, 7.5], [48, 8], [49.0, 9.0], 
		[50, 10], [50, 11], [52, 16], 
		[53.0, 19.0], [54, 22], [54, 23], 
		[54, 24], [53.5, 25.0], [53, 26], 
		[52.0, 26.5], [51, 27], [50.0, 27.5], 
		[49, 28], [47, 28], [45, 28], 
		[42.5, 26.5], [40, 25], [38.5, 23.0], 
		[37, 21], [36.5, 18.5], [36, 16], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[36, 13], [36, 12], [36.0, 10.5], 
		[36, 9], [37.0, 8.0], [38, 7], 
		[39.5, 6.5], [41, 6], [42, 6], 
		[43, 6], [44.5, 6.5], [46, 7], 
		[47.0, 7.5], [48, 8], [49.0, 9.0], 
		[50, 10], [50, 11], [52, 16], 
		[53.0, 19.0], [54, 22], [54, 23], 
		[54, 24], [53.5, 25.0], [53, 26], 
		[52.0, 26.5], [51, 27], [50.0, 27.5], 
		[49, 28], [47, 28], [45, 28], 
		[42.5, 26.5], [40, 25], [38.5, 23.0], 
		[37, 21], [36.5, 18.5], [36, 16], 
		 ]);
}}}

module GoblinOne_contour10x40_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([36, 13], [36, 12], [36.0, 10.5],steps,height);
	BezConic([36.0, 10.5], [36, 9], [37.0, 8.0],steps,height);
	BezConic([37.0, 8.0], [38, 7], [39.5, 6.5],steps,height);
	BezConic([39.5, 6.5], [41, 6], [42, 6],steps,height);
	BezConic([42, 6], [43, 6], [44.5, 6.5],steps,height);
	BezConic([44.5, 6.5], [46, 7], [47.0, 7.5],steps,height);
	BezConic([47.0, 7.5], [48, 8], [49.0, 9.0],steps,height);
	BezConic([49.0, 9.0], [50, 10], [50, 11],steps,height);
	BezConic([50, 11], [52, 16], [53.0, 19.0],steps,height);
	BezConic([53.0, 19.0], [54, 22], [54, 23],steps,height);
	BezConic([54, 23], [54, 24], [53.5, 25.0],steps,height);
	BezConic([53.5, 25.0], [53, 26], [52.0, 26.5],steps,height);
	BezConic([52.0, 26.5], [51, 27], [50.0, 27.5],steps,height);
	BezConic([50.0, 27.5], [49, 28], [47, 28],steps,height);
	BezConic([47, 28], [45, 28], [42.5, 26.5],steps,height);
	BezConic([42.5, 26.5], [40, 25], [38.5, 23.0],steps,height);
	BezConic([38.5, 23.0], [37, 21], [36.5, 18.5],steps,height);
	BezConic([36.5, 18.5], [36, 16], [36, 13],steps,height);
}
}

module GoblinOne_contour10x40_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x40(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x40_skeleton(height);
			GoblinOne_contour10x40_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x40_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x40(steps=2, height) {
	difference() {
		GoblinOne_contour00x40(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x40(steps, height);
	}
}

GoblinOne_bbox0x40=[[4, -12], [87, 45]];

module GoblinOne_letter0x40(steps=2, height) {
	GoblinOne_chunk10x40(steps, height);
} //end skeleton

module GoblinOne_contour00x41_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 8], [14.5, 22.5], [22, 37], 
		[18.5, 41.0], [15, 45], [33.5, 45.0], 
		[52, 45], [49.0, 41.0], [46, 37], 
		[52.5, 22.5], [59, 8], [63.5, 4.0], 
		[68, 0], [51.5, 0.0], [35, 0], 
		[38.5, 4.0], [42, 8], [41.0, 9.5], 
		[40, 11], [30.0, 11.0], [20, 11], 
		[19.0, 9.5], [18, 8], [22.5, 4.0], 
		[27, 0], [12.5, 0.0], [-2, 0], 
		[2.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 8], [14.5, 22.5], [22, 37], 
		[18.5, 41.0], [15, 45], [33.5, 45.0], 
		[52, 45], [49.0, 41.0], [46, 37], 
		[52.5, 22.5], [59, 8], [63.5, 4.0], 
		[68, 0], [51.5, 0.0], [35, 0], 
		[38.5, 4.0], [42, 8], [41.0, 9.5], 
		[40, 11], [30.0, 11.0], [20, 11], 
		[19.0, 9.5], [18, 8], [22.5, 4.0], 
		[27, 0], [12.5, 0.0], [-2, 0], 
		[2.5, 4.0], ]);
}}}

module GoblinOne_contour00x41_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x41_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x41(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x41_skeleton(height);
			GoblinOne_contour00x41_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x41_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x41_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[38, 18], [34.5, 26.5], [31, 35], 
		[27.0, 26.5], [23, 18], [30.5, 18.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[38, 18], [34.5, 26.5], [31, 35], 
		[27.0, 26.5], [23, 18], [30.5, 18.0], 
		 ]);
}}}

module GoblinOne_contour10x41_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x41_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x41(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x41_skeleton(height);
			GoblinOne_contour10x41_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x41_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x41(steps=2, height) {
	difference() {
		GoblinOne_contour00x41(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x41(steps, height);
	}
}

GoblinOne_bbox0x41=[[-2, 0], [68, 45]];

module GoblinOne_letter0x41(steps=2, height) {
	GoblinOne_chunk10x41(steps, height);
} //end skeleton

module GoblinOne_contour00x42_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[11, 8], [11.0, 22.5], [11, 37], 
		[6.0, 41.0], [1, 45], [3, 45], 
		[6.0, 45.0], [9, 45], [12.0, 45.0], 
		[15, 45], [18.0, 45.0], [21, 45], 
		[23.5, 45.0], [26, 45], [28.5, 45.0], 
		[31, 45], [32, 45], [35, 45], 
		[38.5, 45.0], [42, 45], [45.0, 44.5], 
		[48, 44], [50.5, 43.0], [53, 42], 
		[55.5, 41.0], [58, 40], [59.0, 37.5], 
		[60, 35], [60, 33], [60, 30], 
		[59.5, 28.5], [59, 27], [57.0, 25.5], 
		[55, 24], [53.0, 23.5], [51, 23], 
		[48, 23], [51, 22], [54.0, 21.5], 
		[57, 21], [59.0, 20.0], [61, 19], 
		[62.0, 17.0], [63, 15], [63, 12], 
		[63, 9], [62.0, 7.0], [61, 5], 
		[58.5, 4.0], [56, 3], [53.5, 2.0], 
		[51, 1], [47.5, 0.5], [44, 0], 
		[41.0, 0.0], [38, 0], [35, 0], 
		[33, 0], [31.0, 0.0], [29, 0], 
		[26.0, 0.0], [23, 0], [19.5, 0.0], 
		[16, 0], [13.0, 0.0], [10, 0], 
		[6.5, 0.0], [3, 0], [1, 0], 
		[6.0, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[11, 8], [11.0, 22.5], [11, 37], 
		[6.0, 41.0], [1, 45], [3, 45], 
		[6.0, 45.0], [9, 45], [12.0, 45.0], 
		[15, 45], [18.0, 45.0], [21, 45], 
		[23.5, 45.0], [26, 45], [28.5, 45.0], 
		[31, 45], [32, 45], [35, 45], 
		[38.5, 45.0], [42, 45], [45.0, 44.5], 
		[48, 44], [50.5, 43.0], [53, 42], 
		[55.5, 41.0], [58, 40], [59.0, 37.5], 
		[60, 35], [60, 33], [60, 30], 
		[59.5, 28.5], [59, 27], [57.0, 25.5], 
		[55, 24], [53.0, 23.5], [51, 23], 
		[48, 23], [51, 22], [54.0, 21.5], 
		[57, 21], [59.0, 20.0], [61, 19], 
		[62.0, 17.0], [63, 15], [63, 12], 
		[63, 9], [62.0, 7.0], [61, 5], 
		[58.5, 4.0], [56, 3], [53.5, 2.0], 
		[51, 1], [47.5, 0.5], [44, 0], 
		[41.0, 0.0], [38, 0], [35, 0], 
		[33, 0], [31.0, 0.0], [29, 0], 
		[26.0, 0.0], [23, 0], [19.5, 0.0], 
		[16, 0], [13.0, 0.0], [10, 0], 
		[6.5, 0.0], [3, 0], [1, 0], 
		[6.0, 4.0], ]);
}}}

module GoblinOne_contour00x42_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([1, 45], [3, 45], [6.0, 45.0],steps,height);
	BezConic([6.0, 45.0], [9, 45], [12.0, 45.0],steps,height);
	BezConic([12.0, 45.0], [15, 45], [18.0, 45.0],steps,height);
	BezConic([18.0, 45.0], [21, 45], [23.5, 45.0],steps,height);
	BezConic([23.5, 45.0], [26, 45], [28.5, 45.0],steps,height);
	BezConic([28.5, 45.0], [31, 45], [32, 45],steps,height);
	BezConic([32, 45], [35, 45], [38.5, 45.0],steps,height);
	BezConic([50.5, 43.0], [53, 42], [55.5, 41.0],steps,height);
	BezConic([48, 23], [51, 22], [54.0, 21.5],steps,height);
	BezConic([41.0, 0.0], [38, 0], [35, 0],steps,height);
	BezConic([35, 0], [33, 0], [31.0, 0.0],steps,height);
	BezConic([31.0, 0.0], [29, 0], [26.0, 0.0],steps,height);
	BezConic([26.0, 0.0], [23, 0], [19.5, 0.0],steps,height);
	BezConic([19.5, 0.0], [16, 0], [13.0, 0.0],steps,height);
	BezConic([13.0, 0.0], [10, 0], [6.5, 0.0],steps,height);
	BezConic([6.5, 0.0], [3, 0], [1, 0],steps,height);
}
}

module GoblinOne_contour00x42_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([38.5, 45.0], [42, 45], [45.0, 44.5],steps,height);
	BezConic([45.0, 44.5], [48, 44], [50.5, 43.0],steps,height);
	BezConic([55.5, 41.0], [58, 40], [59.0, 37.5],steps,height);
	BezConic([59.0, 37.5], [60, 35], [60, 33],steps,height);
	BezConic([60, 33], [60, 30], [59.5, 28.5],steps,height);
	BezConic([59.5, 28.5], [59, 27], [57.0, 25.5],steps,height);
	BezConic([57.0, 25.5], [55, 24], [53.0, 23.5],steps,height);
	BezConic([53.0, 23.5], [51, 23], [48, 23],steps,height);
	BezConic([54.0, 21.5], [57, 21], [59.0, 20.0],steps,height);
	BezConic([59.0, 20.0], [61, 19], [62.0, 17.0],steps,height);
	BezConic([62.0, 17.0], [63, 15], [63, 12],steps,height);
	BezConic([63, 12], [63, 9], [62.0, 7.0],steps,height);
	BezConic([62.0, 7.0], [61, 5], [58.5, 4.0],steps,height);
	BezConic([58.5, 4.0], [56, 3], [53.5, 2.0],steps,height);
	BezConic([53.5, 2.0], [51, 1], [47.5, 0.5],steps,height);
	BezConic([47.5, 0.5], [44, 0], [41.0, 0.0],steps,height);
}
}

module GoblinOne_contour00x42(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x42_skeleton(height);
			GoblinOne_contour00x42_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x42_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x42_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 26], [32, 26], [33.5, 26.0], 
		[35, 26], [36.0, 26.0], [37, 26], 
		[38.5, 26.5], [40, 27], [41.0, 27.5], 
		[42, 28], [42.5, 29.0], [43, 30], 
		[43, 32], [43, 34], [42.0, 35.0], 
		[41, 36], [39.5, 37.0], [38, 38], 
		[35.5, 38.0], [33, 38], [31, 38], 
		[29.0, 38.0], [27, 38], [27.0, 32.0], 
		[27, 26],[29.0, 26.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 26], [32, 26], [33.5, 26.0], 
		[35, 26], [36.0, 26.0], [37, 26], 
		[38.5, 26.5], [40, 27], [41.0, 27.5], 
		[42, 28], [42.5, 29.0], [43, 30], 
		[43, 32], [43, 34], [42.0, 35.0], 
		[41, 36], [39.5, 37.0], [38, 38], 
		[35.5, 38.0], [33, 38], [31, 38], 
		[29.0, 38.0], [27, 38], [27.0, 32.0], 
		[27, 26],[29.0, 26.0], ]);
}}}

module GoblinOne_contour10x42_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31, 26], [32, 26], [33.5, 26.0],steps,height);
	BezConic([33.5, 26.0], [35, 26], [36.0, 26.0],steps,height);
	BezConic([36.0, 26.0], [37, 26], [38.5, 26.5],steps,height);
	BezConic([38.5, 26.5], [40, 27], [41.0, 27.5],steps,height);
	BezConic([41.0, 27.5], [42, 28], [42.5, 29.0],steps,height);
	BezConic([42.5, 29.0], [43, 30], [43, 32],steps,height);
	BezConic([43, 32], [43, 34], [42.0, 35.0],steps,height);
	BezConic([42.0, 35.0], [41, 36], [39.5, 37.0],steps,height);
	BezConic([39.5, 37.0], [38, 38], [35.5, 38.0],steps,height);
	BezConic([35.5, 38.0], [33, 38], [31, 38],steps,height);
}
}

module GoblinOne_contour10x42_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x42(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x42_skeleton(height);
			GoblinOne_contour10x42_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x42_additive_curves(steps, height);
	}
}

module GoblinOne_contour20x42_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[33, 7], [35, 7], [36.5, 7.0], 
		[38, 7], [39.5, 7.0], [41, 7], 
		[42.0, 7.5], [43, 8], [44.0, 8.5], 
		[45, 9], [45.5, 10.5], [46, 12], 
		[46, 13], [46, 15], [45.5, 16.5], 
		[45, 18], [43.0, 18.5], [41, 19], 
		[39.0, 19.5], [37, 20], [33, 20], 
		[30.0, 20.0], [27, 20], [27.0, 13.5], 
		[27, 7],[30.0, 7.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[33, 7], [35, 7], [36.5, 7.0], 
		[38, 7], [39.5, 7.0], [41, 7], 
		[42.0, 7.5], [43, 8], [44.0, 8.5], 
		[45, 9], [45.5, 10.5], [46, 12], 
		[46, 13], [46, 15], [45.5, 16.5], 
		[45, 18], [43.0, 18.5], [41, 19], 
		[39.0, 19.5], [37, 20], [33, 20], 
		[30.0, 20.0], [27, 20], [27.0, 13.5], 
		[27, 7],[30.0, 7.0], ]);
}}}

module GoblinOne_contour20x42_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([33, 7], [35, 7], [36.5, 7.0],steps,height);
	BezConic([36.5, 7.0], [38, 7], [39.5, 7.0],steps,height);
	BezConic([39.5, 7.0], [41, 7], [42.0, 7.5],steps,height);
	BezConic([42.0, 7.5], [43, 8], [44.0, 8.5],steps,height);
	BezConic([44.0, 8.5], [45, 9], [45.5, 10.5],steps,height);
	BezConic([45.5, 10.5], [46, 12], [46, 13],steps,height);
	BezConic([46, 13], [46, 15], [45.5, 16.5],steps,height);
	BezConic([45.5, 16.5], [45, 18], [43.0, 18.5],steps,height);
	BezConic([43.0, 18.5], [41, 19], [39.0, 19.5],steps,height);
	BezConic([39.0, 19.5], [37, 20], [33, 20],steps,height);
}
}

module GoblinOne_contour20x42_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour20x42(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour20x42_skeleton(height);
			GoblinOne_contour20x42_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x42_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x42(steps=2, height) {
	difference() {
		GoblinOne_contour00x42(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x42(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x42(steps, height);
	}
}

GoblinOne_bbox0x42=[[1, 0], [63, 45]];

module GoblinOne_letter0x42(steps=2, height) {
	GoblinOne_chunk10x42(steps, height);
} //end skeleton

module GoblinOne_contour00x43_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 22], [3, 27], [4.0, 30.0], 
		[5, 33], [7.5, 36.0], [10, 39], 
		[12.5, 40.5], [15, 42], [18.5, 43.5], 
		[22, 45], [26.0, 45.5], [30, 46], 
		[34, 46], [37, 46], [39.5, 45.5], 
		[42, 45], [44.0, 44.5], [46, 44], 
		[48.0, 43.5], [50, 43], [52, 42], 
		[53.0, 43.5], [54, 45], [57.0, 45.0], 
		[60, 45], [60.0, 37.0], [60, 29], 
		[56.0, 28.0], [52, 27], [51, 30], 
		[49.5, 32.0], [48, 34], [46.0, 35.5], 
		[44, 37], [41.5, 38.0], [39, 39], 
		[36, 39], [32, 39], [29.0, 38.0], 
		[26, 37], [24.5, 34.5], [23, 32], 
		[22.0, 29.0], [21, 26], [21, 22], 
		[21, 18], [22.5, 15.0], [24, 12], 
		[26.0, 10.0], [28, 8], [31.0, 7.0], 
		[34, 6], [37, 6], [40, 6], 
		[42.5, 6.5], [45, 7], [47.0, 8.5], 
		[49, 10], [50.0, 12.0], [51, 14], 
		[51, 17], [56.0, 17.0], [61, 17], 
		[61, 14], [60.0, 11.5], [59, 9], 
		[57.0, 7.0], [55, 5], [53.0, 3.5], 
		[51, 2], [48.0, 1.0], [45, 0], 
		[41.5, -0.5], [38, -1], [34, -1], 
		[30, -1], [26.5, -0.5], [23, 0], 
		[19.5, 1.0], [16, 2], [13.0, 4.0], 
		[10, 6], [7.5, 8.5], [5, 11], 
		[4.0, 14.5],[3, 18], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 22], [3, 27], [4.0, 30.0], 
		[5, 33], [7.5, 36.0], [10, 39], 
		[12.5, 40.5], [15, 42], [18.5, 43.5], 
		[22, 45], [26.0, 45.5], [30, 46], 
		[34, 46], [37, 46], [39.5, 45.5], 
		[42, 45], [44.0, 44.5], [46, 44], 
		[48.0, 43.5], [50, 43], [52, 42], 
		[53.0, 43.5], [54, 45], [57.0, 45.0], 
		[60, 45], [60.0, 37.0], [60, 29], 
		[56.0, 28.0], [52, 27], [51, 30], 
		[49.5, 32.0], [48, 34], [46.0, 35.5], 
		[44, 37], [41.5, 38.0], [39, 39], 
		[36, 39], [32, 39], [29.0, 38.0], 
		[26, 37], [24.5, 34.5], [23, 32], 
		[22.0, 29.0], [21, 26], [21, 22], 
		[21, 18], [22.5, 15.0], [24, 12], 
		[26.0, 10.0], [28, 8], [31.0, 7.0], 
		[34, 6], [37, 6], [40, 6], 
		[42.5, 6.5], [45, 7], [47.0, 8.5], 
		[49, 10], [50.0, 12.0], [51, 14], 
		[51, 17], [56.0, 17.0], [61, 17], 
		[61, 14], [60.0, 11.5], [59, 9], 
		[57.0, 7.0], [55, 5], [53.0, 3.5], 
		[51, 2], [48.0, 1.0], [45, 0], 
		[41.5, -0.5], [38, -1], [34, -1], 
		[30, -1], [26.5, -0.5], [23, 0], 
		[19.5, 1.0], [16, 2], [13.0, 4.0], 
		[10, 6], [7.5, 8.5], [5, 11], 
		[4.0, 14.5],[3, 18], ]);
}}}

module GoblinOne_contour00x43_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([44.0, 44.5], [46, 44], [48.0, 43.5],steps,height);
	BezConic([52, 27], [51, 30], [49.5, 32.0],steps,height);
	BezConic([49.5, 32.0], [48, 34], [46.0, 35.5],steps,height);
	BezConic([46.0, 35.5], [44, 37], [41.5, 38.0],steps,height);
	BezConic([41.5, 38.0], [39, 39], [36, 39],steps,height);
	BezConic([36, 39], [32, 39], [29.0, 38.0],steps,height);
	BezConic([29.0, 38.0], [26, 37], [24.5, 34.5],steps,height);
	BezConic([24.5, 34.5], [23, 32], [22.0, 29.0],steps,height);
	BezConic([22.0, 29.0], [21, 26], [21, 22],steps,height);
	BezConic([21, 22], [21, 18], [22.5, 15.0],steps,height);
	BezConic([22.5, 15.0], [24, 12], [26.0, 10.0],steps,height);
	BezConic([26.0, 10.0], [28, 8], [31.0, 7.0],steps,height);
	BezConic([31.0, 7.0], [34, 6], [37, 6],steps,height);
	BezConic([37, 6], [40, 6], [42.5, 6.5],steps,height);
	BezConic([42.5, 6.5], [45, 7], [47.0, 8.5],steps,height);
	BezConic([47.0, 8.5], [49, 10], [50.0, 12.0],steps,height);
	BezConic([50.0, 12.0], [51, 14], [51, 17],steps,height);
}
}

module GoblinOne_contour00x43_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 22], [3, 27], [4.0, 30.0],steps,height);
	BezConic([4.0, 30.0], [5, 33], [7.5, 36.0],steps,height);
	BezConic([7.5, 36.0], [10, 39], [12.5, 40.5],steps,height);
	BezConic([12.5, 40.5], [15, 42], [18.5, 43.5],steps,height);
	BezConic([18.5, 43.5], [22, 45], [26.0, 45.5],steps,height);
	BezConic([26.0, 45.5], [30, 46], [34, 46],steps,height);
	BezConic([34, 46], [37, 46], [39.5, 45.5],steps,height);
	BezConic([39.5, 45.5], [42, 45], [44.0, 44.5],steps,height);
	BezConic([48.0, 43.5], [50, 43], [52, 42],steps,height);
	BezConic([61, 17], [61, 14], [60.0, 11.5],steps,height);
	BezConic([60.0, 11.5], [59, 9], [57.0, 7.0],steps,height);
	BezConic([57.0, 7.0], [55, 5], [53.0, 3.5],steps,height);
	BezConic([53.0, 3.5], [51, 2], [48.0, 1.0],steps,height);
	BezConic([48.0, 1.0], [45, 0], [41.5, -0.5],steps,height);
	BezConic([41.5, -0.5], [38, -1], [34, -1],steps,height);
	BezConic([34, -1], [30, -1], [26.5, -0.5],steps,height);
	BezConic([26.5, -0.5], [23, 0], [19.5, 1.0],steps,height);
	BezConic([19.5, 1.0], [16, 2], [13.0, 4.0],steps,height);
	BezConic([13.0, 4.0], [10, 6], [7.5, 8.5],steps,height);
	BezConic([7.5, 8.5], [5, 11], [4.0, 14.5],steps,height);
	BezConic([4.0, 14.5], [3, 18], [3, 22],steps,height);
}
}

module GoblinOne_contour00x43(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x43_skeleton(height);
			GoblinOne_contour00x43_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x43_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x43(steps=2, height) {
	difference() {
		GoblinOne_contour00x43(steps, height);
		
	}
}

GoblinOne_bbox0x43=[[3, -1], [61, 46]];

module GoblinOne_letter0x43(steps=2, height) {
	GoblinOne_chunk10x43(steps, height);
} //end skeleton

module GoblinOne_contour00x44_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[11, 8], [11.0, 22.5], [11, 37], 
		[6.0, 41.0], [1, 45], [3, 45], 
		[6.5, 45.0], [10, 45], [13.0, 45.0], 
		[16, 45], [19.5, 45.0], [23, 45], 
		[26.0, 45.0], [29, 45], [31.5, 45.0], 
		[34, 45], [35, 45], [41, 45], 
		[45.5, 44.5], [50, 44], [53, 43], 
		[56, 41], [58.0, 39.5], [60, 38], 
		[61.5, 35.5], [63, 33], [64.0, 30.0], 
		[65, 27], [65, 24], [65, 18], 
		[62.5, 13.5], [60, 9], [56.0, 6.0], 
		[52, 3], [46.5, 1.5], [41, 0], 
		[34, 0], [33, 0], [31.0, 0.0], 
		[29, 0], [26.5, 0.0], [24, 0], 
		[20.5, 0.0], [17, 0], [13.5, 0.0], 
		[10, 0], [7.0, 0.0], [4, 0], 
		[1, 0],[6.0, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[11, 8], [11.0, 22.5], [11, 37], 
		[6.0, 41.0], [1, 45], [3, 45], 
		[6.5, 45.0], [10, 45], [13.0, 45.0], 
		[16, 45], [19.5, 45.0], [23, 45], 
		[26.0, 45.0], [29, 45], [31.5, 45.0], 
		[34, 45], [35, 45], [41, 45], 
		[45.5, 44.5], [50, 44], [53, 43], 
		[56, 41], [58.0, 39.5], [60, 38], 
		[61.5, 35.5], [63, 33], [64.0, 30.0], 
		[65, 27], [65, 24], [65, 18], 
		[62.5, 13.5], [60, 9], [56.0, 6.0], 
		[52, 3], [46.5, 1.5], [41, 0], 
		[34, 0], [33, 0], [31.0, 0.0], 
		[29, 0], [26.5, 0.0], [24, 0], 
		[20.5, 0.0], [17, 0], [13.5, 0.0], 
		[10, 0], [7.0, 0.0], [4, 0], 
		[1, 0],[6.0, 4.0], ]);
}}}

module GoblinOne_contour00x44_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([1, 45], [3, 45], [6.5, 45.0],steps,height);
	BezConic([6.5, 45.0], [10, 45], [13.0, 45.0],steps,height);
	BezConic([13.0, 45.0], [16, 45], [19.5, 45.0],steps,height);
	BezConic([19.5, 45.0], [23, 45], [26.0, 45.0],steps,height);
	BezConic([26.0, 45.0], [29, 45], [31.5, 45.0],steps,height);
	BezConic([31.5, 45.0], [34, 45], [35, 45],steps,height);
	BezConic([34, 0], [33, 0], [31.0, 0.0],steps,height);
	BezConic([31.0, 0.0], [29, 0], [26.5, 0.0],steps,height);
	BezConic([26.5, 0.0], [24, 0], [20.5, 0.0],steps,height);
	BezConic([20.5, 0.0], [17, 0], [13.5, 0.0],steps,height);
	BezConic([13.5, 0.0], [10, 0], [7.0, 0.0],steps,height);
	BezConic([7.0, 0.0], [4, 0], [1, 0],steps,height);
}
}

module GoblinOne_contour00x44_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35, 45], [41, 45], [45.5, 44.5],steps,height);
	BezConic([45.5, 44.5], [50, 44], [53, 43],steps,height);
	BezConic([53, 43], [56, 41], [58.0, 39.5],steps,height);
	BezConic([58.0, 39.5], [60, 38], [61.5, 35.5],steps,height);
	BezConic([61.5, 35.5], [63, 33], [64.0, 30.0],steps,height);
	BezConic([64.0, 30.0], [65, 27], [65, 24],steps,height);
	BezConic([65, 24], [65, 18], [62.5, 13.5],steps,height);
	BezConic([62.5, 13.5], [60, 9], [56.0, 6.0],steps,height);
	BezConic([56.0, 6.0], [52, 3], [46.5, 1.5],steps,height);
	BezConic([46.5, 1.5], [41, 0], [34, 0],steps,height);
}
}

module GoblinOne_contour00x44(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x44_skeleton(height);
			GoblinOne_contour00x44_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x44_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x44_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[33, 7], [37, 7], [39.5, 8.0], 
		[42, 9], [43.5, 11.5], [45, 14], 
		[46.0, 17.0], [47, 20], [47, 24], 
		[47, 27], [46.0, 30.0], [45, 33], 
		[43.5, 34.5], [42, 36], [39.5, 37.0], 
		[37, 38], [34, 38], [30.5, 38.0], 
		[27, 38], [27.0, 22.5], [27, 7], 
		[30.0, 7.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[33, 7], [37, 7], [39.5, 8.0], 
		[42, 9], [43.5, 11.5], [45, 14], 
		[46.0, 17.0], [47, 20], [47, 24], 
		[47, 27], [46.0, 30.0], [45, 33], 
		[43.5, 34.5], [42, 36], [39.5, 37.0], 
		[37, 38], [34, 38], [30.5, 38.0], 
		[27, 38], [27.0, 22.5], [27, 7], 
		[30.0, 7.0], ]);
}}}

module GoblinOne_contour10x44_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([33, 7], [37, 7], [39.5, 8.0],steps,height);
	BezConic([39.5, 8.0], [42, 9], [43.5, 11.5],steps,height);
	BezConic([43.5, 11.5], [45, 14], [46.0, 17.0],steps,height);
	BezConic([46.0, 17.0], [47, 20], [47, 24],steps,height);
	BezConic([47, 24], [47, 27], [46.0, 30.0],steps,height);
	BezConic([46.0, 30.0], [45, 33], [43.5, 34.5],steps,height);
	BezConic([43.5, 34.5], [42, 36], [39.5, 37.0],steps,height);
	BezConic([39.5, 37.0], [37, 38], [34, 38],steps,height);
}
}

module GoblinOne_contour10x44_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x44(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x44_skeleton(height);
			GoblinOne_contour10x44_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x44_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x44(steps=2, height) {
	difference() {
		GoblinOne_contour00x44(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x44(steps, height);
	}
}

GoblinOne_bbox0x44=[[1, 0], [65, 45]];

module GoblinOne_letter0x44(steps=2, height) {
	GoblinOne_chunk10x44(steps, height);
} //end skeleton

module GoblinOne_contour00x45_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [29.5, 45.0], 
		[58, 45], [57.5, 37.0], [57, 29], 
		[51.0, 33.5], [45, 38], [35.5, 38.0], 
		[26, 38], [26.0, 32.5], [26, 27], 
		[35.5, 27.0], [45, 27], [45.0, 23.5], 
		[45, 20], [35.5, 20.0], [26, 20], 
		[26.0, 13.5], [26, 7], [35.5, 7.0], 
		[45, 7], [51.0, 11.0], [57, 15], 
		[57.0, 7.5], [57, 0], [29.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [29.5, 45.0], 
		[58, 45], [57.5, 37.0], [57, 29], 
		[51.0, 33.5], [45, 38], [35.5, 38.0], 
		[26, 38], [26.0, 32.5], [26, 27], 
		[35.5, 27.0], [45, 27], [45.0, 23.5], 
		[45, 20], [35.5, 20.0], [26, 20], 
		[26.0, 13.5], [26, 7], [35.5, 7.0], 
		[45, 7], [51.0, 11.0], [57, 15], 
		[57.0, 7.5], [57, 0], [29.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}}}

module GoblinOne_contour00x45_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x45_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x45(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x45_skeleton(height);
			GoblinOne_contour00x45_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x45_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x45(steps=2, height) {
	difference() {
		GoblinOne_contour00x45(steps, height);
		
	}
}

GoblinOne_bbox0x45=[[1, 0], [58, 45]];

module GoblinOne_letter0x45(steps=2, height) {
	GoblinOne_chunk10x45(steps, height);
} //end skeleton

module GoblinOne_contour00x46_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [30.0, 45.0], 
		[59, 45], [58.5, 37.0], [58, 29], 
		[52.0, 33.5], [46, 38], [36.0, 38.0], 
		[26, 38], [26.0, 31.0], [26, 24], 
		[36.0, 24.0], [46, 24], [46.0, 20.5], 
		[46, 17], [36.0, 17.0], [26, 17], 
		[26.0, 12.5], [26, 8], [32.5, 4.0], 
		[39, 0], [20.0, 0.0], [1, 0], 
		[5.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [30.0, 45.0], 
		[59, 45], [58.5, 37.0], [58, 29], 
		[52.0, 33.5], [46, 38], [36.0, 38.0], 
		[26, 38], [26.0, 31.0], [26, 24], 
		[36.0, 24.0], [46, 24], [46.0, 20.5], 
		[46, 17], [36.0, 17.0], [26, 17], 
		[26.0, 12.5], [26, 8], [32.5, 4.0], 
		[39, 0], [20.0, 0.0], [1, 0], 
		[5.5, 4.0], ]);
}}}

module GoblinOne_contour00x46_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x46_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x46(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x46_skeleton(height);
			GoblinOne_contour00x46_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x46_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x46(steps=2, height) {
	difference() {
		GoblinOne_contour00x46(steps, height);
		
	}
}

GoblinOne_bbox0x46=[[1, 0], [59, 45]];

module GoblinOne_letter0x46(steps=2, height) {
	GoblinOne_chunk10x46(steps, height);
} //end skeleton

module GoblinOne_contour00x47_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 22], [3, 26], [4.0, 29.0], 
		[5, 32], [7.0, 35.0], [9, 38], 
		[12.0, 40.0], [15, 42], [18.5, 43.5], 
		[22, 45], [26.0, 45.5], [30, 46], 
		[34, 46], [36, 46], [38.5, 45.5], 
		[41, 45], [43.5, 44.5], [46, 44], 
		[48.0, 43.5], [50, 43], [52, 42], 
		[53.0, 43.5], [54, 45], [57.5, 45.0], 
		[61, 45], [61.0, 37.5], [61, 30], 
		[57.0, 30.0], [53, 30], [52, 32], 
		[50.0, 34.0], [48, 36], [45.5, 37.0], 
		[43, 38], [40.5, 38.5], [38, 39], 
		[36, 39], [33, 39], [30.5, 38.0], 
		[28, 37], [26.0, 35.0], [24, 33], 
		[22.5, 30.0], [21, 27], [21, 23], 
		[21, 18], [22.5, 15.0], [24, 12], 
		[26.0, 10.0], [28, 8], [31.0, 7.0], 
		[34, 6], [37, 6], [40, 6], 
		[42.0, 6.0], [44, 6], [45, 7], 
		[45.0, 11.0], [45, 15], [40.5, 19.5], 
		[36, 24], [48.5, 24.0], [61, 24], 
		[61.0, 12.0], [61, 0], [57.5, 0.0], 
		[54, 0], [53.0, 1.5], [52, 3], 
		[50, 2], [48.0, 1.0], [46, 0], 
		[44.0, -0.5], [42, -1], [39.5, -1.0], 
		[37, -1], [34, -1], [30, -1], 
		[26.0, -0.5], [22, 0], [18.5, 1.0], 
		[15, 2], [12.0, 4.0], [9, 6], 
		[7.0, 8.5], [5, 11], [4.0, 14.0], 
		[3, 17], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 22], [3, 26], [4.0, 29.0], 
		[5, 32], [7.0, 35.0], [9, 38], 
		[12.0, 40.0], [15, 42], [18.5, 43.5], 
		[22, 45], [26.0, 45.5], [30, 46], 
		[34, 46], [36, 46], [38.5, 45.5], 
		[41, 45], [43.5, 44.5], [46, 44], 
		[48.0, 43.5], [50, 43], [52, 42], 
		[53.0, 43.5], [54, 45], [57.5, 45.0], 
		[61, 45], [61.0, 37.5], [61, 30], 
		[57.0, 30.0], [53, 30], [52, 32], 
		[50.0, 34.0], [48, 36], [45.5, 37.0], 
		[43, 38], [40.5, 38.5], [38, 39], 
		[36, 39], [33, 39], [30.5, 38.0], 
		[28, 37], [26.0, 35.0], [24, 33], 
		[22.5, 30.0], [21, 27], [21, 23], 
		[21, 18], [22.5, 15.0], [24, 12], 
		[26.0, 10.0], [28, 8], [31.0, 7.0], 
		[34, 6], [37, 6], [40, 6], 
		[42.0, 6.0], [44, 6], [45, 7], 
		[45.0, 11.0], [45, 15], [40.5, 19.5], 
		[36, 24], [48.5, 24.0], [61, 24], 
		[61.0, 12.0], [61, 0], [57.5, 0.0], 
		[54, 0], [53.0, 1.5], [52, 3], 
		[50, 2], [48.0, 1.0], [46, 0], 
		[44.0, -0.5], [42, -1], [39.5, -1.0], 
		[37, -1], [34, -1], [30, -1], 
		[26.0, -0.5], [22, 0], [18.5, 1.0], 
		[15, 2], [12.0, 4.0], [9, 6], 
		[7.0, 8.5], [5, 11], [4.0, 14.0], 
		[3, 17], ]);
}}}

module GoblinOne_contour00x47_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([38.5, 45.5], [41, 45], [43.5, 44.5],steps,height);
	BezConic([53, 30], [52, 32], [50.0, 34.0],steps,height);
	BezConic([50.0, 34.0], [48, 36], [45.5, 37.0],steps,height);
	BezConic([45.5, 37.0], [43, 38], [40.5, 38.5],steps,height);
	BezConic([40.5, 38.5], [38, 39], [36, 39],steps,height);
	BezConic([36, 39], [33, 39], [30.5, 38.0],steps,height);
	BezConic([30.5, 38.0], [28, 37], [26.0, 35.0],steps,height);
	BezConic([26.0, 35.0], [24, 33], [22.5, 30.0],steps,height);
	BezConic([22.5, 30.0], [21, 27], [21, 23],steps,height);
	BezConic([21, 23], [21, 18], [22.5, 15.0],steps,height);
	BezConic([22.5, 15.0], [24, 12], [26.0, 10.0],steps,height);
	BezConic([26.0, 10.0], [28, 8], [31.0, 7.0],steps,height);
	BezConic([31.0, 7.0], [34, 6], [37, 6],steps,height);
	BezConic([37, 6], [40, 6], [42.0, 6.0],steps,height);
	BezConic([42.0, 6.0], [44, 6], [45, 7],steps,height);
	BezConic([52, 3], [50, 2], [48.0, 1.0],steps,height);
	BezConic([39.5, -1.0], [37, -1], [34, -1],steps,height);
}
}

module GoblinOne_contour00x47_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 22], [3, 26], [4.0, 29.0],steps,height);
	BezConic([4.0, 29.0], [5, 32], [7.0, 35.0],steps,height);
	BezConic([7.0, 35.0], [9, 38], [12.0, 40.0],steps,height);
	BezConic([12.0, 40.0], [15, 42], [18.5, 43.5],steps,height);
	BezConic([18.5, 43.5], [22, 45], [26.0, 45.5],steps,height);
	BezConic([26.0, 45.5], [30, 46], [34, 46],steps,height);
	BezConic([34, 46], [36, 46], [38.5, 45.5],steps,height);
	BezConic([43.5, 44.5], [46, 44], [48.0, 43.5],steps,height);
	BezConic([48.0, 43.5], [50, 43], [52, 42],steps,height);
	BezConic([48.0, 1.0], [46, 0], [44.0, -0.5],steps,height);
	BezConic([44.0, -0.5], [42, -1], [39.5, -1.0],steps,height);
	BezConic([34, -1], [30, -1], [26.0, -0.5],steps,height);
	BezConic([26.0, -0.5], [22, 0], [18.5, 1.0],steps,height);
	BezConic([18.5, 1.0], [15, 2], [12.0, 4.0],steps,height);
	BezConic([12.0, 4.0], [9, 6], [7.0, 8.5],steps,height);
	BezConic([7.0, 8.5], [5, 11], [4.0, 14.0],steps,height);
	BezConic([4.0, 14.0], [3, 17], [3, 22],steps,height);
}
}

module GoblinOne_contour00x47(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x47_skeleton(height);
			GoblinOne_contour00x47_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x47_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x47(steps=2, height) {
	difference() {
		GoblinOne_contour00x47(steps, height);
		
	}
}

GoblinOne_bbox0x47=[[3, -1], [61, 46]];

module GoblinOne_letter0x47(steps=2, height) {
	GoblinOne_chunk10x47(steps, height);
} //end skeleton

module GoblinOne_contour00x48_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [13.5, 45.0], 
		[26, 45], [26.0, 36.5], [26, 28], 
		[34.5, 28.0], [43, 28], [43.0, 36.5], 
		[43, 45], [55.0, 45.0], [67, 45], 
		[63.0, 41.0], [59, 37], [59.0, 22.5], 
		[59, 8], [63.5, 4.0], [68, 0], 
		[55.5, 0.0], [43, 0], [43.0, 10.5], 
		[43, 21], [34.5, 21.0], [26, 21], 
		[26.0, 10.5], [26, 0], [13.5, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [13.5, 45.0], 
		[26, 45], [26.0, 36.5], [26, 28], 
		[34.5, 28.0], [43, 28], [43.0, 36.5], 
		[43, 45], [55.0, 45.0], [67, 45], 
		[63.0, 41.0], [59, 37], [59.0, 22.5], 
		[59, 8], [63.5, 4.0], [68, 0], 
		[55.5, 0.0], [43, 0], [43.0, 10.5], 
		[43, 21], [34.5, 21.0], [26, 21], 
		[26.0, 10.5], [26, 0], [13.5, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}}}

module GoblinOne_contour00x48_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x48_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x48(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x48_skeleton(height);
			GoblinOne_contour00x48_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x48_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x48(steps=2, height) {
	difference() {
		GoblinOne_contour00x48(steps, height);
		
	}
}

GoblinOne_bbox0x48=[[1, 0], [68, 45]];

module GoblinOne_letter0x48(steps=2, height) {
	GoblinOne_chunk10x48(steps, height);
} //end skeleton

module GoblinOne_contour00x49_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[9, 37], [5.5, 41.0], [2, 45], 
		[13.5, 45.0], [25, 45], [25.0, 26.5], 
		[25, 8], [29.0, 4.0], [33, 0], 
		[21.0, 0.0], [9, 0], [9.0, 18.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[9, 37], [5.5, 41.0], [2, 45], 
		[13.5, 45.0], [25, 45], [25.0, 26.5], 
		[25, 8], [29.0, 4.0], [33, 0], 
		[21.0, 0.0], [9, 0], [9.0, 18.5], 
		 ]);
}}}

module GoblinOne_contour00x49_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x49_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x49(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x49_skeleton(height);
			GoblinOne_contour00x49_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x49_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x49(steps=2, height) {
	difference() {
		GoblinOne_contour00x49(steps, height);
		
	}
}

GoblinOne_bbox0x49=[[2, 0], [33, 45]];

module GoblinOne_letter0x49(steps=2, height) {
	GoblinOne_chunk10x49(steps, height);
} //end skeleton

module GoblinOne_contour00x4a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, 5], [5, 5], [6.5, 5.0], 
		[8, 5], [9, 5], [10, 5], 
		[11.5, 5.0], [13, 5], [14.0, 6.0], 
		[15, 7], [16.0, 8.5], [17, 10], 
		[17, 12], [17.0, 24.5], [17, 37], 
		[13.0, 41.0], [9, 45], [20.5, 45.0], 
		[32, 45], [32.0, 28.0], [32, 11], 
		[32, 7], [31.5, 4.5], [31, 2], 
		[29.0, 0.5], [27, -1], [24.5, -1.5], 
		[22, -2], [18, -2], [16, -2], 
		[13.5, -2.0], [11, -2], [9.0, -1.5], 
		[7, -1], [6.0, 0.0], [5, 1], 
		[4, 1],[4.0, 3.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, 5], [5, 5], [6.5, 5.0], 
		[8, 5], [9, 5], [10, 5], 
		[11.5, 5.0], [13, 5], [14.0, 6.0], 
		[15, 7], [16.0, 8.5], [17, 10], 
		[17, 12], [17.0, 24.5], [17, 37], 
		[13.0, 41.0], [9, 45], [20.5, 45.0], 
		[32, 45], [32.0, 28.0], [32, 11], 
		[32, 7], [31.5, 4.5], [31, 2], 
		[29.0, 0.5], [27, -1], [24.5, -1.5], 
		[22, -2], [18, -2], [16, -2], 
		[13.5, -2.0], [11, -2], [9.0, -1.5], 
		[7, -1], [6.0, 0.0], [5, 1], 
		[4, 1],[4.0, 3.0], ]);
}}}

module GoblinOne_contour00x4a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, 5], [5, 5], [6.5, 5.0],steps,height);
	BezConic([6.5, 5.0], [8, 5], [9, 5],steps,height);
	BezConic([9, 5], [10, 5], [11.5, 5.0],steps,height);
	BezConic([11.5, 5.0], [13, 5], [14.0, 6.0],steps,height);
	BezConic([14.0, 6.0], [15, 7], [16.0, 8.5],steps,height);
	BezConic([16.0, 8.5], [17, 10], [17, 12],steps,height);
	BezConic([18, -2], [16, -2], [13.5, -2.0],steps,height);
	BezConic([6.0, 0.0], [5, 1], [4, 1],steps,height);
}
}

module GoblinOne_contour00x4a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([32, 11], [32, 7], [31.5, 4.5],steps,height);
	BezConic([31.5, 4.5], [31, 2], [29.0, 0.5],steps,height);
	BezConic([29.0, 0.5], [27, -1], [24.5, -1.5],steps,height);
	BezConic([24.5, -1.5], [22, -2], [18, -2],steps,height);
	BezConic([13.5, -2.0], [11, -2], [9.0, -1.5],steps,height);
	BezConic([9.0, -1.5], [7, -1], [6.0, 0.0],steps,height);
}
}

module GoblinOne_contour00x4a(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x4a_skeleton(height);
			GoblinOne_contour00x4a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x4a_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x4a(steps=2, height) {
	difference() {
		GoblinOne_contour00x4a(steps, height);
		
	}
}

GoblinOne_bbox0x4a=[[4, -2], [32, 45]];

module GoblinOne_letter0x4a(steps=2, height) {
	GoblinOne_chunk10x4a(steps, height);
} //end skeleton

module GoblinOne_contour00x4b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [16.0, 45.0], 
		[31, 45], [28.5, 41.0], [26, 37], 
		[26.0, 30.0], [26, 23], [35.0, 30.0], 
		[44, 37], [41.5, 41.0], [39, 45], 
		[52.0, 45.0], [65, 45], [54.0, 36.0], 
		[43, 27], [50.0, 17.5], [57, 8], 
		[61.5, 4.0], [66, 0], [52.0, 0.0], 
		[38, 0], [39.0, 2.0], [40, 4], 
		[35.5, 11.0], [31, 18], [28.5, 16.0], 
		[26, 14], [26.0, 11.0], [26, 8], 
		[29.5, 4.0], [33, 0], [17.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [16.0, 45.0], 
		[31, 45], [28.5, 41.0], [26, 37], 
		[26.0, 30.0], [26, 23], [35.0, 30.0], 
		[44, 37], [41.5, 41.0], [39, 45], 
		[52.0, 45.0], [65, 45], [54.0, 36.0], 
		[43, 27], [50.0, 17.5], [57, 8], 
		[61.5, 4.0], [66, 0], [52.0, 0.0], 
		[38, 0], [39.0, 2.0], [40, 4], 
		[35.5, 11.0], [31, 18], [28.5, 16.0], 
		[26, 14], [26.0, 11.0], [26, 8], 
		[29.5, 4.0], [33, 0], [17.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}}}

module GoblinOne_contour00x4b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x4b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x4b(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x4b_skeleton(height);
			GoblinOne_contour00x4b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x4b_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x4b(steps=2, height) {
	difference() {
		GoblinOne_contour00x4b(steps, height);
		
	}
}

GoblinOne_bbox0x4b=[[1, 0], [66, 45]];

module GoblinOne_letter0x4b(steps=2, height) {
	GoblinOne_chunk10x4b(steps, height);
} //end skeleton

module GoblinOne_contour00x4c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [19.5, 45.0], 
		[38, 45], [32.0, 41.0], [26, 37], 
		[26.0, 22.0], [26, 7], [34.5, 7.0], 
		[43, 7], [49.5, 12.5], [56, 18], 
		[56.0, 9.0], [56, 0], [28.5, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 22.5], [10, 37], 
		[5.5, 41.0], [1, 45], [19.5, 45.0], 
		[38, 45], [32.0, 41.0], [26, 37], 
		[26.0, 22.0], [26, 7], [34.5, 7.0], 
		[43, 7], [49.5, 12.5], [56, 18], 
		[56.0, 9.0], [56, 0], [28.5, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}}}

module GoblinOne_contour00x4c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x4c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x4c(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x4c_skeleton(height);
			GoblinOne_contour00x4c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x4c_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x4c(steps=2, height) {
	difference() {
		GoblinOne_contour00x4c(steps, height);
		
	}
}

GoblinOne_bbox0x4c=[[1, 0], [56, 45]];

module GoblinOne_letter0x4c(steps=2, height) {
	GoblinOne_chunk10x4c(steps, height);
} //end skeleton

module GoblinOne_contour00x4d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[9, 8], [9.0, 22.0], [9, 36], 
		[4.5, 40.5], [0, 45], [11.5, 45.0], 
		[23, 45], [30.5, 33.0], [38, 21], 
		[45.5, 33.0], [53, 45], [65.0, 45.0], 
		[77, 45], [72.0, 41.0], [67, 37], 
		[67.0, 22.5], [67, 8], [71.5, 4.0], 
		[76, 0], [59.0, 0.0], [42, 0], 
		[46.5, 4.0], [51, 8], [51.0, 16.0], 
		[51, 24], [44.5, 12.0], [38, 0], 
		[35.5, 0.0], [33, 0], [25.5, 12.0], 
		[18, 24], [18.0, 16.0], [18, 8], 
		[22.5, 4.0], [27, 0], [14.0, 0.0], 
		[1, 0],[5.0, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[9, 8], [9.0, 22.0], [9, 36], 
		[4.5, 40.5], [0, 45], [11.5, 45.0], 
		[23, 45], [30.5, 33.0], [38, 21], 
		[45.5, 33.0], [53, 45], [65.0, 45.0], 
		[77, 45], [72.0, 41.0], [67, 37], 
		[67.0, 22.5], [67, 8], [71.5, 4.0], 
		[76, 0], [59.0, 0.0], [42, 0], 
		[46.5, 4.0], [51, 8], [51.0, 16.0], 
		[51, 24], [44.5, 12.0], [38, 0], 
		[35.5, 0.0], [33, 0], [25.5, 12.0], 
		[18, 24], [18.0, 16.0], [18, 8], 
		[22.5, 4.0], [27, 0], [14.0, 0.0], 
		[1, 0],[5.0, 4.0], ]);
}}}

module GoblinOne_contour00x4d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x4d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x4d(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x4d_skeleton(height);
			GoblinOne_contour00x4d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x4d_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x4d(steps=2, height) {
	difference() {
		GoblinOne_contour00x4d(steps, height);
		
	}
}

GoblinOne_bbox0x4d=[[0, 0], [77, 45]];

module GoblinOne_letter0x4d(steps=2, height) {
	GoblinOne_chunk10x4d(steps, height);
} //end skeleton

module GoblinOne_contour00x4e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 22.0], [10, 36], 
		[5.0, 40.5], [0, 45], [12.0, 45.0], 
		[24, 45], [36.5, 33.5], [49, 22], 
		[49.0, 29.5], [49, 37], [44.5, 41.0], 
		[40, 45], [53.0, 45.0], [66, 45], 
		[62.0, 41.0], [58, 37], [58.0, 18.5], 
		[58, 0], [53.5, 0.0], [49, 0], 
		[33.5, 14.0], [18, 28], [18.0, 18.0], 
		[18, 8], [23.0, 4.0], [28, 0], 
		[14.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 22.0], [10, 36], 
		[5.0, 40.5], [0, 45], [12.0, 45.0], 
		[24, 45], [36.5, 33.5], [49, 22], 
		[49.0, 29.5], [49, 37], [44.5, 41.0], 
		[40, 45], [53.0, 45.0], [66, 45], 
		[62.0, 41.0], [58, 37], [58.0, 18.5], 
		[58, 0], [53.5, 0.0], [49, 0], 
		[33.5, 14.0], [18, 28], [18.0, 18.0], 
		[18, 8], [23.0, 4.0], [28, 0], 
		[14.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}}}

module GoblinOne_contour00x4e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x4e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x4e(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x4e_skeleton(height);
			GoblinOne_contour00x4e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x4e_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x4e(steps=2, height) {
	difference() {
		GoblinOne_contour00x4e(steps, height);
		
	}
}

GoblinOne_bbox0x4e=[[0, 0], [66, 45]];

module GoblinOne_letter0x4e(steps=2, height) {
	GoblinOne_chunk10x4e(steps, height);
} //end skeleton

module GoblinOne_contour00x4f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 22], [3, 27], [4.0, 30.5], 
		[5, 34], [7.5, 36.5], [10, 39], 
		[12.5, 41.0], [15, 43], [18.5, 44.0], 
		[22, 45], [25.5, 45.5], [29, 46], 
		[32, 46], [36, 46], [39.5, 45.5], 
		[43, 45], [46.5, 44.0], [50, 43], 
		[52.5, 41.0], [55, 39], [57.0, 36.5], 
		[59, 34], [60.5, 30.5], [62, 27], 
		[62, 22], [62, 18], [60.5, 14.5], 
		[59, 11], [57.0, 8.5], [55, 6], 
		[52.0, 4.0], [49, 2], [46.0, 1.0], 
		[43, 0], [39.5, -0.5], [36, -1], 
		[32, -1], [29, -1], [25.5, -0.5], 
		[22, 0], [18.5, 1.0], [15, 2], 
		[12.0, 4.0], [9, 6], [7.0, 8.5], 
		[5, 11], [4.0, 14.5], [3, 18], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 22], [3, 27], [4.0, 30.5], 
		[5, 34], [7.5, 36.5], [10, 39], 
		[12.5, 41.0], [15, 43], [18.5, 44.0], 
		[22, 45], [25.5, 45.5], [29, 46], 
		[32, 46], [36, 46], [39.5, 45.5], 
		[43, 45], [46.5, 44.0], [50, 43], 
		[52.5, 41.0], [55, 39], [57.0, 36.5], 
		[59, 34], [60.5, 30.5], [62, 27], 
		[62, 22], [62, 18], [60.5, 14.5], 
		[59, 11], [57.0, 8.5], [55, 6], 
		[52.0, 4.0], [49, 2], [46.0, 1.0], 
		[43, 0], [39.5, -0.5], [36, -1], 
		[32, -1], [29, -1], [25.5, -0.5], 
		[22, 0], [18.5, 1.0], [15, 2], 
		[12.0, 4.0], [9, 6], [7.0, 8.5], 
		[5, 11], [4.0, 14.5], [3, 18], 
		 ]);
}}}

module GoblinOne_contour00x4f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x4f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 22], [3, 27], [4.0, 30.5],steps,height);
	BezConic([4.0, 30.5], [5, 34], [7.5, 36.5],steps,height);
	BezConic([7.5, 36.5], [10, 39], [12.5, 41.0],steps,height);
	BezConic([12.5, 41.0], [15, 43], [18.5, 44.0],steps,height);
	BezConic([18.5, 44.0], [22, 45], [25.5, 45.5],steps,height);
	BezConic([25.5, 45.5], [29, 46], [32, 46],steps,height);
	BezConic([32, 46], [36, 46], [39.5, 45.5],steps,height);
	BezConic([39.5, 45.5], [43, 45], [46.5, 44.0],steps,height);
	BezConic([46.5, 44.0], [50, 43], [52.5, 41.0],steps,height);
	BezConic([52.5, 41.0], [55, 39], [57.0, 36.5],steps,height);
	BezConic([57.0, 36.5], [59, 34], [60.5, 30.5],steps,height);
	BezConic([60.5, 30.5], [62, 27], [62, 22],steps,height);
	BezConic([62, 22], [62, 18], [60.5, 14.5],steps,height);
	BezConic([60.5, 14.5], [59, 11], [57.0, 8.5],steps,height);
	BezConic([57.0, 8.5], [55, 6], [52.0, 4.0],steps,height);
	BezConic([52.0, 4.0], [49, 2], [46.0, 1.0],steps,height);
	BezConic([46.0, 1.0], [43, 0], [39.5, -0.5],steps,height);
	BezConic([39.5, -0.5], [36, -1], [32, -1],steps,height);
	BezConic([32, -1], [29, -1], [25.5, -0.5],steps,height);
	BezConic([25.5, -0.5], [22, 0], [18.5, 1.0],steps,height);
	BezConic([18.5, 1.0], [15, 2], [12.0, 4.0],steps,height);
	BezConic([12.0, 4.0], [9, 6], [7.0, 8.5],steps,height);
	BezConic([7.0, 8.5], [5, 11], [4.0, 14.5],steps,height);
	BezConic([4.0, 14.5], [3, 18], [3, 22],steps,height);
}
}

module GoblinOne_contour00x4f(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x4f_skeleton(height);
			GoblinOne_contour00x4f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x4f_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x4f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[21, 22], [21, 19], [22.0, 15.5], 
		[23, 12], [24.5, 10.0], [26, 8], 
		[28.0, 6.5], [30, 5], [32, 5], 
		[35, 5], [37.0, 6.5], [39, 8], 
		[40.5, 10.5], [42, 13], [42.5, 16.0], 
		[43, 19], [43, 22], [43, 26], 
		[42.5, 29.0], [42, 32], [40.5, 34.5], 
		[39, 37], [37.0, 38.5], [35, 40], 
		[32, 40], [30, 40], [28.0, 38.5], 
		[26, 37], [24.5, 34.5], [23, 32], 
		[22.0, 29.0],[21, 26], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[21, 22], [21, 19], [22.0, 15.5], 
		[23, 12], [24.5, 10.0], [26, 8], 
		[28.0, 6.5], [30, 5], [32, 5], 
		[35, 5], [37.0, 6.5], [39, 8], 
		[40.5, 10.5], [42, 13], [42.5, 16.0], 
		[43, 19], [43, 22], [43, 26], 
		[42.5, 29.0], [42, 32], [40.5, 34.5], 
		[39, 37], [37.0, 38.5], [35, 40], 
		[32, 40], [30, 40], [28.0, 38.5], 
		[26, 37], [24.5, 34.5], [23, 32], 
		[22.0, 29.0],[21, 26], ]);
}}}

module GoblinOne_contour10x4f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 22], [21, 19], [22.0, 15.5],steps,height);
	BezConic([22.0, 15.5], [23, 12], [24.5, 10.0],steps,height);
	BezConic([24.5, 10.0], [26, 8], [28.0, 6.5],steps,height);
	BezConic([28.0, 6.5], [30, 5], [32, 5],steps,height);
	BezConic([32, 5], [35, 5], [37.0, 6.5],steps,height);
	BezConic([37.0, 6.5], [39, 8], [40.5, 10.5],steps,height);
	BezConic([40.5, 10.5], [42, 13], [42.5, 16.0],steps,height);
	BezConic([42.5, 16.0], [43, 19], [43, 22],steps,height);
	BezConic([43, 22], [43, 26], [42.5, 29.0],steps,height);
	BezConic([42.5, 29.0], [42, 32], [40.5, 34.5],steps,height);
	BezConic([40.5, 34.5], [39, 37], [37.0, 38.5],steps,height);
	BezConic([37.0, 38.5], [35, 40], [32, 40],steps,height);
	BezConic([32, 40], [30, 40], [28.0, 38.5],steps,height);
	BezConic([28.0, 38.5], [26, 37], [24.5, 34.5],steps,height);
	BezConic([24.5, 34.5], [23, 32], [22.0, 29.0],steps,height);
	BezConic([22.0, 29.0], [21, 26], [21, 22],steps,height);
}
}

module GoblinOne_contour10x4f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x4f(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x4f_skeleton(height);
			GoblinOne_contour10x4f_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x4f_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x4f(steps=2, height) {
	difference() {
		GoblinOne_contour00x4f(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x4f(steps, height);
	}
}

GoblinOne_bbox0x4f=[[3, -1], [62, 46]];

module GoblinOne_letter0x4f(steps=2, height) {
	GoblinOne_chunk10x4f(steps, height);
} //end skeleton

module GoblinOne_contour00x50_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[11, 8], [11.0, 22.5], [11, 37], 
		[6.0, 41.0], [1, 45], [4, 45], 
		[7.5, 45.0], [11, 45], [14.5, 45.0], 
		[18, 45], [21.0, 45.0], [24, 45], 
		[27.0, 45.0], [30, 45], [32.0, 45.0], 
		[34, 45], [36, 45], [39, 45], 
		[42.0, 45.0], [45, 45], [48.0, 44.5], 
		[51, 44], [53.5, 43.0], [56, 42], 
		[58.0, 40.0], [60, 38], [61.0, 36.0], 
		[62, 34], [62, 31], [62, 27], 
		[61.0, 25.0], [60, 23], [58.5, 21.0], 
		[57, 19], [54.5, 18.0], [52, 17], 
		[48.5, 16.5], [45, 16], [41.0, 15.5], 
		[37, 15], [33, 15], [32, 15], 
		[30.5, 15.0], [29, 15], [27, 15], 
		[27.0, 11.5], [27, 8], [33.5, 4.0], 
		[40, 0], [20.5, 0.0], [1, 0], 
		[6.0, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[11, 8], [11.0, 22.5], [11, 37], 
		[6.0, 41.0], [1, 45], [4, 45], 
		[7.5, 45.0], [11, 45], [14.5, 45.0], 
		[18, 45], [21.0, 45.0], [24, 45], 
		[27.0, 45.0], [30, 45], [32.0, 45.0], 
		[34, 45], [36, 45], [39, 45], 
		[42.0, 45.0], [45, 45], [48.0, 44.5], 
		[51, 44], [53.5, 43.0], [56, 42], 
		[58.0, 40.0], [60, 38], [61.0, 36.0], 
		[62, 34], [62, 31], [62, 27], 
		[61.0, 25.0], [60, 23], [58.5, 21.0], 
		[57, 19], [54.5, 18.0], [52, 17], 
		[48.5, 16.5], [45, 16], [41.0, 15.5], 
		[37, 15], [33, 15], [32, 15], 
		[30.5, 15.0], [29, 15], [27, 15], 
		[27.0, 11.5], [27, 8], [33.5, 4.0], 
		[40, 0], [20.5, 0.0], [1, 0], 
		[6.0, 4.0], ]);
}}}

module GoblinOne_contour00x50_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([1, 45], [4, 45], [7.5, 45.0],steps,height);
	BezConic([7.5, 45.0], [11, 45], [14.5, 45.0],steps,height);
	BezConic([14.5, 45.0], [18, 45], [21.0, 45.0],steps,height);
	BezConic([21.0, 45.0], [24, 45], [27.0, 45.0],steps,height);
	BezConic([27.0, 45.0], [30, 45], [32.0, 45.0],steps,height);
	BezConic([32.0, 45.0], [34, 45], [36, 45],steps,height);
	BezConic([36, 45], [39, 45], [42.0, 45.0],steps,height);
	BezConic([33, 15], [32, 15], [30.5, 15.0],steps,height);
	BezConic([30.5, 15.0], [29, 15], [27, 15],steps,height);
}
}

module GoblinOne_contour00x50_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([42.0, 45.0], [45, 45], [48.0, 44.5],steps,height);
	BezConic([48.0, 44.5], [51, 44], [53.5, 43.0],steps,height);
	BezConic([53.5, 43.0], [56, 42], [58.0, 40.0],steps,height);
	BezConic([58.0, 40.0], [60, 38], [61.0, 36.0],steps,height);
	BezConic([61.0, 36.0], [62, 34], [62, 31],steps,height);
	BezConic([62, 31], [62, 27], [61.0, 25.0],steps,height);
	BezConic([61.0, 25.0], [60, 23], [58.5, 21.0],steps,height);
	BezConic([58.5, 21.0], [57, 19], [54.5, 18.0],steps,height);
	BezConic([54.5, 18.0], [52, 17], [48.5, 16.5],steps,height);
	BezConic([48.5, 16.5], [45, 16], [41.0, 15.5],steps,height);
	BezConic([41.0, 15.5], [37, 15], [33, 15],steps,height);
}
}

module GoblinOne_contour00x50(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x50_skeleton(height);
			GoblinOne_contour00x50_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x50_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x50_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 22], [35, 22], [37.5, 22.5], 
		[40, 23], [41.5, 24.0], [43, 25], 
		[44.0, 26.5], [45, 28], [45, 31], 
		[45, 33], [44.0, 34.5], [43, 36], 
		[41.5, 37.0], [40, 38], [37.5, 38.0], 
		[35, 38], [32, 38], [29.5, 38.0], 
		[27, 38], [27.0, 30.0], [27, 22], 
		[29.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 22], [35, 22], [37.5, 22.5], 
		[40, 23], [41.5, 24.0], [43, 25], 
		[44.0, 26.5], [45, 28], [45, 31], 
		[45, 33], [44.0, 34.5], [43, 36], 
		[41.5, 37.0], [40, 38], [37.5, 38.0], 
		[35, 38], [32, 38], [29.5, 38.0], 
		[27, 38], [27.0, 30.0], [27, 22], 
		[29.0, 22.0], ]);
}}}

module GoblinOne_contour10x50_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31, 22], [35, 22], [37.5, 22.5],steps,height);
	BezConic([37.5, 22.5], [40, 23], [41.5, 24.0],steps,height);
	BezConic([41.5, 24.0], [43, 25], [44.0, 26.5],steps,height);
	BezConic([44.0, 26.5], [45, 28], [45, 31],steps,height);
	BezConic([45, 31], [45, 33], [44.0, 34.5],steps,height);
	BezConic([44.0, 34.5], [43, 36], [41.5, 37.0],steps,height);
	BezConic([41.5, 37.0], [40, 38], [37.5, 38.0],steps,height);
	BezConic([37.5, 38.0], [35, 38], [32, 38],steps,height);
}
}

module GoblinOne_contour10x50_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x50(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x50_skeleton(height);
			GoblinOne_contour10x50_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x50_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x50(steps=2, height) {
	difference() {
		GoblinOne_contour00x50(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x50(steps, height);
	}
}

GoblinOne_bbox0x50=[[1, 0], [62, 45]];

module GoblinOne_letter0x50(steps=2, height) {
	GoblinOne_chunk10x50(steps, height);
} //end skeleton

module GoblinOne_contour00x51_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 22], [3, 27], [4.0, 30.5], 
		[5, 34], [7.0, 36.5], [9, 39], 
		[12.0, 41.0], [15, 43], [18.5, 44.0], 
		[22, 45], [25.5, 45.5], [29, 46], 
		[32, 46], [36, 46], [39.5, 45.5], 
		[43, 45], [46.0, 44.0], [49, 43], 
		[52.0, 41.0], [55, 39], [57.0, 36.5], 
		[59, 34], [60.5, 30.5], [62, 27], 
		[62, 22], [62, 18], [60.5, 15.0], 
		[59, 12], [57.5, 9.0], [56, 6], 
		[53.0, 4.5], [50, 3], [47, 1], 
		[47, 0], [47.5, -1.0], [48, -2], 
		[48.5, -2.5], [49, -3], [49.5, -3.5], 
		[50, -4], [52, -4], [52, -4], 
		[53.0, -4.0], [54, -4], [54.5, -3.5], 
		[55, -3], [56.0, -3.0], [57, -3], 
		[58, -3], [57.0, -8.0], [56, -13], 
		[56, -13], [55.0, -13.0], [54, -13], 
		[53.0, -13.0], [52, -13], [51.0, -13.0], 
		[50, -13], [49, -13], [46, -13], 
		[44.0, -12.5], [42, -12], [40.5, -10.0], 
		[39, -8], [38.0, -6.0], [37, -4], 
		[37, -1], [36, -1], [34.5, -1.0], 
		[33, -1], [32, -1], [29, -1], 
		[25.5, -0.5], [22, 0], [18.5, 1.0], 
		[15, 2], [12.0, 4.0], [9, 6], 
		[7.0, 8.5], [5, 11], [4.0, 14.5], 
		[3, 18], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 22], [3, 27], [4.0, 30.5], 
		[5, 34], [7.0, 36.5], [9, 39], 
		[12.0, 41.0], [15, 43], [18.5, 44.0], 
		[22, 45], [25.5, 45.5], [29, 46], 
		[32, 46], [36, 46], [39.5, 45.5], 
		[43, 45], [46.0, 44.0], [49, 43], 
		[52.0, 41.0], [55, 39], [57.0, 36.5], 
		[59, 34], [60.5, 30.5], [62, 27], 
		[62, 22], [62, 18], [60.5, 15.0], 
		[59, 12], [57.5, 9.0], [56, 6], 
		[53.0, 4.5], [50, 3], [47, 1], 
		[47, 0], [47.5, -1.0], [48, -2], 
		[48.5, -2.5], [49, -3], [49.5, -3.5], 
		[50, -4], [52, -4], [52, -4], 
		[53.0, -4.0], [54, -4], [54.5, -3.5], 
		[55, -3], [56.0, -3.0], [57, -3], 
		[58, -3], [57.0, -8.0], [56, -13], 
		[56, -13], [55.0, -13.0], [54, -13], 
		[53.0, -13.0], [52, -13], [51.0, -13.0], 
		[50, -13], [49, -13], [46, -13], 
		[44.0, -12.5], [42, -12], [40.5, -10.0], 
		[39, -8], [38.0, -6.0], [37, -4], 
		[37, -1], [36, -1], [34.5, -1.0], 
		[33, -1], [32, -1], [29, -1], 
		[25.5, -0.5], [22, 0], [18.5, 1.0], 
		[15, 2], [12.0, 4.0], [9, 6], 
		[7.0, 8.5], [5, 11], [4.0, 14.5], 
		[3, 18], ]);
}}}

module GoblinOne_contour00x51_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([60.5, 15.0], [59, 12], [57.5, 9.0],steps,height);
	BezConic([53.0, 4.5], [50, 3], [47, 1],steps,height);
	BezConic([47, 1], [47, 0], [47.5, -1.0],steps,height);
	BezConic([47.5, -1.0], [48, -2], [48.5, -2.5],steps,height);
	BezConic([48.5, -2.5], [49, -3], [49.5, -3.5],steps,height);
	BezConic([49.5, -3.5], [50, -4], [52, -4],steps,height);
	BezConic([52, -4], [52, -4], [53.0, -4.0],steps,height);
	BezConic([53.0, -4.0], [54, -4], [54.5, -3.5],steps,height);
	BezConic([56.0, -3.0], [57, -3], [58, -3],steps,height);
	BezConic([56, -13], [56, -13], [55.0, -13.0],steps,height);
	BezConic([55.0, -13.0], [54, -13], [53.0, -13.0],steps,height);
	BezConic([53.0, -13.0], [52, -13], [51.0, -13.0],steps,height);
	BezConic([51.0, -13.0], [50, -13], [49, -13],steps,height);
	BezConic([37, -1], [36, -1], [34.5, -1.0],steps,height);
	BezConic([34.5, -1.0], [33, -1], [32, -1],steps,height);
}
}

module GoblinOne_contour00x51_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 22], [3, 27], [4.0, 30.5],steps,height);
	BezConic([4.0, 30.5], [5, 34], [7.0, 36.5],steps,height);
	BezConic([7.0, 36.5], [9, 39], [12.0, 41.0],steps,height);
	BezConic([12.0, 41.0], [15, 43], [18.5, 44.0],steps,height);
	BezConic([18.5, 44.0], [22, 45], [25.5, 45.5],steps,height);
	BezConic([25.5, 45.5], [29, 46], [32, 46],steps,height);
	BezConic([32, 46], [36, 46], [39.5, 45.5],steps,height);
	BezConic([39.5, 45.5], [43, 45], [46.0, 44.0],steps,height);
	BezConic([46.0, 44.0], [49, 43], [52.0, 41.0],steps,height);
	BezConic([52.0, 41.0], [55, 39], [57.0, 36.5],steps,height);
	BezConic([57.0, 36.5], [59, 34], [60.5, 30.5],steps,height);
	BezConic([60.5, 30.5], [62, 27], [62, 22],steps,height);
	BezConic([62, 22], [62, 18], [60.5, 15.0],steps,height);
	BezConic([57.5, 9.0], [56, 6], [53.0, 4.5],steps,height);
	BezConic([54.5, -3.5], [55, -3], [56.0, -3.0],steps,height);
	BezConic([49, -13], [46, -13], [44.0, -12.5],steps,height);
	BezConic([44.0, -12.5], [42, -12], [40.5, -10.0],steps,height);
	BezConic([40.5, -10.0], [39, -8], [38.0, -6.0],steps,height);
	BezConic([38.0, -6.0], [37, -4], [37, -1],steps,height);
	BezConic([32, -1], [29, -1], [25.5, -0.5],steps,height);
	BezConic([25.5, -0.5], [22, 0], [18.5, 1.0],steps,height);
	BezConic([18.5, 1.0], [15, 2], [12.0, 4.0],steps,height);
	BezConic([12.0, 4.0], [9, 6], [7.0, 8.5],steps,height);
	BezConic([7.0, 8.5], [5, 11], [4.0, 14.5],steps,height);
	BezConic([4.0, 14.5], [3, 18], [3, 22],steps,height);
}
}

module GoblinOne_contour00x51(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x51_skeleton(height);
			GoblinOne_contour00x51_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x51_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x51_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[23, 12], [25, 14], [27.5, 14.5], 
		[30, 15], [33, 15], [36, 15], 
		[38.0, 14.5], [40, 14], [41, 13], 
		[42, 15], [42.5, 17.5], [43, 20], 
		[43, 22], [43, 26], [42.5, 29.0], 
		[42, 32], [40.5, 34.5], [39, 37], 
		[37.0, 38.5], [35, 40], [32, 40], 
		[30, 40], [28.0, 38.5], [26, 37], 
		[24.5, 34.5], [23, 32], [22.0, 29.0], 
		[21, 26], [21, 22], [21, 19], 
		[21.5, 16.5],[22, 14], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[23, 12], [25, 14], [27.5, 14.5], 
		[30, 15], [33, 15], [36, 15], 
		[38.0, 14.5], [40, 14], [41, 13], 
		[42, 15], [42.5, 17.5], [43, 20], 
		[43, 22], [43, 26], [42.5, 29.0], 
		[42, 32], [40.5, 34.5], [39, 37], 
		[37.0, 38.5], [35, 40], [32, 40], 
		[30, 40], [28.0, 38.5], [26, 37], 
		[24.5, 34.5], [23, 32], [22.0, 29.0], 
		[21, 26], [21, 22], [21, 19], 
		[21.5, 16.5],[22, 14], ]);
}}}

module GoblinOne_contour10x51_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([41, 13], [42, 15], [42.5, 17.5],steps,height);
	BezConic([42.5, 17.5], [43, 20], [43, 22],steps,height);
	BezConic([43, 22], [43, 26], [42.5, 29.0],steps,height);
	BezConic([42.5, 29.0], [42, 32], [40.5, 34.5],steps,height);
	BezConic([40.5, 34.5], [39, 37], [37.0, 38.5],steps,height);
	BezConic([37.0, 38.5], [35, 40], [32, 40],steps,height);
	BezConic([32, 40], [30, 40], [28.0, 38.5],steps,height);
	BezConic([28.0, 38.5], [26, 37], [24.5, 34.5],steps,height);
	BezConic([24.5, 34.5], [23, 32], [22.0, 29.0],steps,height);
	BezConic([22.0, 29.0], [21, 26], [21, 22],steps,height);
	BezConic([21, 22], [21, 19], [21.5, 16.5],steps,height);
	BezConic([21.5, 16.5], [22, 14], [23, 12],steps,height);
}
}

module GoblinOne_contour10x51_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23, 12], [25, 14], [27.5, 14.5],steps,height);
	BezConic([27.5, 14.5], [30, 15], [33, 15],steps,height);
	BezConic([33, 15], [36, 15], [38.0, 14.5],steps,height);
	BezConic([38.0, 14.5], [40, 14], [41, 13],steps,height);
}
}

module GoblinOne_contour10x51(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x51_skeleton(height);
			GoblinOne_contour10x51_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x51_additive_curves(steps, height);
	}
}

module GoblinOne_contour20x51_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[26, 8], [27, 7], [28.5, 6.0], 
		[30, 5], [32, 5], [35, 5], 
		[37, 7], [36, 8], [34.5, 9.0], 
		[33, 10], [31, 10], [30, 10], 
		[28.5, 9.5],[27, 9], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[26, 8], [27, 7], [28.5, 6.0], 
		[30, 5], [32, 5], [35, 5], 
		[37, 7], [36, 8], [34.5, 9.0], 
		[33, 10], [31, 10], [30, 10], 
		[28.5, 9.5],[27, 9], ]);
}}}

module GoblinOne_contour20x51_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26, 8], [27, 7], [28.5, 6.0],steps,height);
	BezConic([28.5, 6.0], [30, 5], [32, 5],steps,height);
	BezConic([32, 5], [35, 5], [37, 7],steps,height);
	BezConic([37, 7], [36, 8], [34.5, 9.0],steps,height);
	BezConic([34.5, 9.0], [33, 10], [31, 10],steps,height);
	BezConic([31, 10], [30, 10], [28.5, 9.5],steps,height);
	BezConic([28.5, 9.5], [27, 9], [26, 8],steps,height);
}
}

module GoblinOne_contour20x51_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour20x51(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour20x51_skeleton(height);
			GoblinOne_contour20x51_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x51_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x51(steps=2, height) {
	difference() {
		GoblinOne_contour00x51(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x51(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x51(steps, height);
	}
}

GoblinOne_bbox0x51=[[3, -13], [62, 46]];

module GoblinOne_letter0x51(steps=2, height) {
	GoblinOne_chunk10x51(steps, height);
} //end skeleton

module GoblinOne_contour00x52_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[11, 8], [11.0, 22.5], [11, 37], 
		[6.0, 41.0], [1, 45], [4, 45], 
		[7.0, 45.0], [10, 45], [13.0, 45.0], 
		[16, 45], [19.0, 45.0], [22, 45], 
		[25.0, 45.0], [28, 45], [30.0, 45.0], 
		[32, 45], [33, 45], [36, 45], 
		[39.5, 45.0], [43, 45], [46.0, 44.5], 
		[49, 44], [52.0, 43.0], [55, 42], 
		[57.0, 41.0], [59, 40], [60.5, 37.5], 
		[62, 35], [62, 33], [62, 30], 
		[61.0, 28.5], [60, 27], [58.5, 25.5], 
		[57, 24], [55.0, 23.0], [53, 22], 
		[50, 21], [52, 21], [54.0, 20.0], 
		[56, 19], [57.0, 17.5], [58, 16], 
		[59.0, 14.0], [60, 12], [60, 9], 
		[60.0, 8.0], [60, 7], [64.5, 3.5], 
		[69, 0], [53.5, 0.0], [38, 0], 
		[40.5, 3.5], [43, 7], [43.0, 9.0], 
		[43, 11], [43, 12], [42.5, 13.5], 
		[42, 15], [41.0, 16.0], [40, 17], 
		[39.0, 17.5], [38, 18], [37, 18], 
		[32.0, 18.0], [27, 18], [27.0, 13.0], 
		[27, 8], [30.0, 4.0], [33, 0], 
		[17.0, 0.0], [1, 0], [6.0, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[11, 8], [11.0, 22.5], [11, 37], 
		[6.0, 41.0], [1, 45], [4, 45], 
		[7.0, 45.0], [10, 45], [13.0, 45.0], 
		[16, 45], [19.0, 45.0], [22, 45], 
		[25.0, 45.0], [28, 45], [30.0, 45.0], 
		[32, 45], [33, 45], [36, 45], 
		[39.5, 45.0], [43, 45], [46.0, 44.5], 
		[49, 44], [52.0, 43.0], [55, 42], 
		[57.0, 41.0], [59, 40], [60.5, 37.5], 
		[62, 35], [62, 33], [62, 30], 
		[61.0, 28.5], [60, 27], [58.5, 25.5], 
		[57, 24], [55.0, 23.0], [53, 22], 
		[50, 21], [52, 21], [54.0, 20.0], 
		[56, 19], [57.0, 17.5], [58, 16], 
		[59.0, 14.0], [60, 12], [60, 9], 
		[60.0, 8.0], [60, 7], [64.5, 3.5], 
		[69, 0], [53.5, 0.0], [38, 0], 
		[40.5, 3.5], [43, 7], [43.0, 9.0], 
		[43, 11], [43, 12], [42.5, 13.5], 
		[42, 15], [41.0, 16.0], [40, 17], 
		[39.0, 17.5], [38, 18], [37, 18], 
		[32.0, 18.0], [27, 18], [27.0, 13.0], 
		[27, 8], [30.0, 4.0], [33, 0], 
		[17.0, 0.0], [1, 0], [6.0, 4.0], 
		 ]);
}}}

module GoblinOne_contour00x52_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([1, 45], [4, 45], [7.0, 45.0],steps,height);
	BezConic([7.0, 45.0], [10, 45], [13.0, 45.0],steps,height);
	BezConic([13.0, 45.0], [16, 45], [19.0, 45.0],steps,height);
	BezConic([19.0, 45.0], [22, 45], [25.0, 45.0],steps,height);
	BezConic([25.0, 45.0], [28, 45], [30.0, 45.0],steps,height);
	BezConic([30.0, 45.0], [32, 45], [33, 45],steps,height);
	BezConic([33, 45], [36, 45], [39.5, 45.0],steps,height);
	BezConic([43, 11], [43, 12], [42.5, 13.5],steps,height);
	BezConic([42.5, 13.5], [42, 15], [41.0, 16.0],steps,height);
	BezConic([41.0, 16.0], [40, 17], [39.0, 17.5],steps,height);
	BezConic([39.0, 17.5], [38, 18], [37, 18],steps,height);
}
}

module GoblinOne_contour00x52_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([39.5, 45.0], [43, 45], [46.0, 44.5],steps,height);
	BezConic([46.0, 44.5], [49, 44], [52.0, 43.0],steps,height);
	BezConic([52.0, 43.0], [55, 42], [57.0, 41.0],steps,height);
	BezConic([57.0, 41.0], [59, 40], [60.5, 37.5],steps,height);
	BezConic([60.5, 37.5], [62, 35], [62, 33],steps,height);
	BezConic([62, 33], [62, 30], [61.0, 28.5],steps,height);
	BezConic([61.0, 28.5], [60, 27], [58.5, 25.5],steps,height);
	BezConic([58.5, 25.5], [57, 24], [55.0, 23.0],steps,height);
	BezConic([55.0, 23.0], [53, 22], [50, 21],steps,height);
	BezConic([50, 21], [52, 21], [54.0, 20.0],steps,height);
	BezConic([54.0, 20.0], [56, 19], [57.0, 17.5],steps,height);
	BezConic([57.0, 17.5], [58, 16], [59.0, 14.0],steps,height);
	BezConic([59.0, 14.0], [60, 12], [60, 9],steps,height);
}
}

module GoblinOne_contour00x52(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x52_skeleton(height);
			GoblinOne_contour00x52_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x52_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x52_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[32, 24], [35, 24], [37.5, 24.5], 
		[40, 25], [41.5, 25.5], [43, 26], 
		[44.0, 27.5], [45, 29], [45, 31], 
		[45, 33], [44.5, 34.0], [44, 35], 
		[43.0, 36.0], [42, 37], [40.5, 37.5], 
		[39, 38], [37.5, 38.0], [36, 38], 
		[34.5, 38.0], [33, 38], [32, 38], 
		[29.5, 38.0], [27, 38], [27.0, 31.0], 
		[27, 24],[29.5, 24.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[32, 24], [35, 24], [37.5, 24.5], 
		[40, 25], [41.5, 25.5], [43, 26], 
		[44.0, 27.5], [45, 29], [45, 31], 
		[45, 33], [44.5, 34.0], [44, 35], 
		[43.0, 36.0], [42, 37], [40.5, 37.5], 
		[39, 38], [37.5, 38.0], [36, 38], 
		[34.5, 38.0], [33, 38], [32, 38], 
		[29.5, 38.0], [27, 38], [27.0, 31.0], 
		[27, 24],[29.5, 24.0], ]);
}}}

module GoblinOne_contour10x52_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([32, 24], [35, 24], [37.5, 24.5],steps,height);
	BezConic([37.5, 24.5], [40, 25], [41.5, 25.5],steps,height);
	BezConic([41.5, 25.5], [43, 26], [44.0, 27.5],steps,height);
	BezConic([44.0, 27.5], [45, 29], [45, 31],steps,height);
	BezConic([45, 31], [45, 33], [44.5, 34.0],steps,height);
	BezConic([44.5, 34.0], [44, 35], [43.0, 36.0],steps,height);
	BezConic([43.0, 36.0], [42, 37], [40.5, 37.5],steps,height);
	BezConic([40.5, 37.5], [39, 38], [37.5, 38.0],steps,height);
	BezConic([37.5, 38.0], [36, 38], [34.5, 38.0],steps,height);
	BezConic([34.5, 38.0], [33, 38], [32, 38],steps,height);
}
}

module GoblinOne_contour10x52_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x52(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x52_skeleton(height);
			GoblinOne_contour10x52_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x52_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x52(steps=2, height) {
	difference() {
		GoblinOne_contour00x52(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x52(steps, height);
	}
}

GoblinOne_bbox0x52=[[1, 0], [69, 45]];

module GoblinOne_letter0x52(steps=2, height) {
	GoblinOne_chunk10x52(steps, height);
} //end skeleton

module GoblinOne_contour00x53_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 15], [9, 13], [12.0, 11.5], 
		[15, 10], [19.0, 8.5], [23, 7], 
		[26.5, 6.5], [30, 6], [34, 6], 
		[36, 6], [37.0, 6.0], [38, 6], 
		[39.0, 6.5], [40, 7], [41.0, 7.5], 
		[42, 8], [42, 9], [42, 10], 
		[41.5, 11.0], [41, 12], [39.5, 13.0], 
		[38, 14], [35.0, 14.5], [32, 15], 
		[28, 16], [22, 17], [17.5, 18.0], 
		[13, 19], [10.5, 21.0], [8, 23], 
		[6.5, 25.5], [5, 28], [5, 31], 
		[5, 35], [6.5, 37.5], [8, 40], 
		[11.0, 42.0], [14, 44], [18.0, 45.0], 
		[22, 46], [27, 46], [30, 46], 
		[32.0, 46.0], [34, 46], [36.0, 45.5], 
		[38, 45], [40.0, 44.5], [42, 44], 
		[44, 43], [47.0, 44.5], [50, 46], 
		[52.5, 46.0], [55, 46], [55.0, 38.5], 
		[55, 31], [51, 33], [47.5, 34.5], 
		[44, 36], [41.0, 37.0], [38, 38], 
		[34.5, 38.5], [31, 39], [29, 39], 
		[27, 39], [25.5, 39.0], [24, 39], 
		[23.0, 38.5], [22, 38], [21.0, 37.5], 
		[20, 37], [20, 36], [20, 35], 
		[21.0, 34.0], [22, 33], [23.5, 32.5], 
		[25, 32], [28.0, 31.0], [31, 30], 
		[35, 30], [39, 29], [41.5, 28.5], 
		[44, 28], [46.5, 27.0], [49, 26], 
		[51.0, 25.0], [53, 24], [54.5, 22.5], 
		[56, 21], [57.0, 18.5], [58, 16], 
		[58, 13], [58, 10], [56.0, 7.0], 
		[54, 4], [50.5, 2.0], [47, 0], 
		[43.0, -0.5], [39, -1], [34, -1], 
		[30, -1], [25.5, 0.0], [21, 1], 
		[17, 3], [14.5, 1.5], [12, 0], 
		[9.0, 0.0], [6, 0], [6.0, 7.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 15], [9, 13], [12.0, 11.5], 
		[15, 10], [19.0, 8.5], [23, 7], 
		[26.5, 6.5], [30, 6], [34, 6], 
		[36, 6], [37.0, 6.0], [38, 6], 
		[39.0, 6.5], [40, 7], [41.0, 7.5], 
		[42, 8], [42, 9], [42, 10], 
		[41.5, 11.0], [41, 12], [39.5, 13.0], 
		[38, 14], [35.0, 14.5], [32, 15], 
		[28, 16], [22, 17], [17.5, 18.0], 
		[13, 19], [10.5, 21.0], [8, 23], 
		[6.5, 25.5], [5, 28], [5, 31], 
		[5, 35], [6.5, 37.5], [8, 40], 
		[11.0, 42.0], [14, 44], [18.0, 45.0], 
		[22, 46], [27, 46], [30, 46], 
		[32.0, 46.0], [34, 46], [36.0, 45.5], 
		[38, 45], [40.0, 44.5], [42, 44], 
		[44, 43], [47.0, 44.5], [50, 46], 
		[52.5, 46.0], [55, 46], [55.0, 38.5], 
		[55, 31], [51, 33], [47.5, 34.5], 
		[44, 36], [41.0, 37.0], [38, 38], 
		[34.5, 38.5], [31, 39], [29, 39], 
		[27, 39], [25.5, 39.0], [24, 39], 
		[23.0, 38.5], [22, 38], [21.0, 37.5], 
		[20, 37], [20, 36], [20, 35], 
		[21.0, 34.0], [22, 33], [23.5, 32.5], 
		[25, 32], [28.0, 31.0], [31, 30], 
		[35, 30], [39, 29], [41.5, 28.5], 
		[44, 28], [46.5, 27.0], [49, 26], 
		[51.0, 25.0], [53, 24], [54.5, 22.5], 
		[56, 21], [57.0, 18.5], [58, 16], 
		[58, 13], [58, 10], [56.0, 7.0], 
		[54, 4], [50.5, 2.0], [47, 0], 
		[43.0, -0.5], [39, -1], [34, -1], 
		[30, -1], [25.5, 0.0], [21, 1], 
		[17, 3], [14.5, 1.5], [12, 0], 
		[9.0, 0.0], [6, 0], [6.0, 7.5], 
		 ]);
}}}

module GoblinOne_contour00x53_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 15], [9, 13], [12.0, 11.5],steps,height);
	BezConic([12.0, 11.5], [15, 10], [19.0, 8.5],steps,height);
	BezConic([19.0, 8.5], [23, 7], [26.5, 6.5],steps,height);
	BezConic([26.5, 6.5], [30, 6], [34, 6],steps,height);
	BezConic([34, 6], [36, 6], [37.0, 6.0],steps,height);
	BezConic([37.0, 6.0], [38, 6], [39.0, 6.5],steps,height);
	BezConic([39.0, 6.5], [40, 7], [41.0, 7.5],steps,height);
	BezConic([41.0, 7.5], [42, 8], [42, 9],steps,height);
	BezConic([42, 9], [42, 10], [41.5, 11.0],steps,height);
	BezConic([41.5, 11.0], [41, 12], [39.5, 13.0],steps,height);
	BezConic([39.5, 13.0], [38, 14], [35.0, 14.5],steps,height);
	BezConic([27, 46], [30, 46], [32.0, 46.0],steps,height);
	BezConic([36.0, 45.5], [38, 45], [40.0, 44.5],steps,height);
	BezConic([55, 31], [51, 33], [47.5, 34.5],steps,height);
	BezConic([47.5, 34.5], [44, 36], [41.0, 37.0],steps,height);
	BezConic([41.0, 37.0], [38, 38], [34.5, 38.5],steps,height);
	BezConic([34.5, 38.5], [31, 39], [29, 39],steps,height);
	BezConic([29, 39], [27, 39], [25.5, 39.0],steps,height);
	BezConic([25.5, 39.0], [24, 39], [23.0, 38.5],steps,height);
	BezConic([23.0, 38.5], [22, 38], [21.0, 37.5],steps,height);
	BezConic([21.0, 37.5], [20, 37], [20, 36],steps,height);
	BezConic([20, 36], [20, 35], [21.0, 34.0],steps,height);
	BezConic([21.0, 34.0], [22, 33], [23.5, 32.5],steps,height);
	BezConic([23.5, 32.5], [25, 32], [28.0, 31.0],steps,height);
	BezConic([28.0, 31.0], [31, 30], [35, 30],steps,height);
	BezConic([35, 30], [39, 29], [41.5, 28.5],steps,height);
}
}

module GoblinOne_contour00x53_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35.0, 14.5], [32, 15], [28, 16],steps,height);
	BezConic([28, 16], [22, 17], [17.5, 18.0],steps,height);
	BezConic([17.5, 18.0], [13, 19], [10.5, 21.0],steps,height);
	BezConic([10.5, 21.0], [8, 23], [6.5, 25.5],steps,height);
	BezConic([6.5, 25.5], [5, 28], [5, 31],steps,height);
	BezConic([5, 31], [5, 35], [6.5, 37.5],steps,height);
	BezConic([6.5, 37.5], [8, 40], [11.0, 42.0],steps,height);
	BezConic([11.0, 42.0], [14, 44], [18.0, 45.0],steps,height);
	BezConic([18.0, 45.0], [22, 46], [27, 46],steps,height);
	BezConic([32.0, 46.0], [34, 46], [36.0, 45.5],steps,height);
	BezConic([40.0, 44.5], [42, 44], [44, 43],steps,height);
	BezConic([41.5, 28.5], [44, 28], [46.5, 27.0],steps,height);
	BezConic([46.5, 27.0], [49, 26], [51.0, 25.0],steps,height);
	BezConic([51.0, 25.0], [53, 24], [54.5, 22.5],steps,height);
	BezConic([54.5, 22.5], [56, 21], [57.0, 18.5],steps,height);
	BezConic([57.0, 18.5], [58, 16], [58, 13],steps,height);
	BezConic([58, 13], [58, 10], [56.0, 7.0],steps,height);
	BezConic([56.0, 7.0], [54, 4], [50.5, 2.0],steps,height);
	BezConic([50.5, 2.0], [47, 0], [43.0, -0.5],steps,height);
	BezConic([43.0, -0.5], [39, -1], [34, -1],steps,height);
	BezConic([34, -1], [30, -1], [25.5, 0.0],steps,height);
	BezConic([25.5, 0.0], [21, 1], [17, 3],steps,height);
}
}

module GoblinOne_contour00x53(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x53_skeleton(height);
			GoblinOne_contour00x53_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x53_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x53(steps=2, height) {
	difference() {
		GoblinOne_contour00x53(steps, height);
		
	}
}

GoblinOne_bbox0x53=[[5, -1], [58, 46]];

module GoblinOne_letter0x53(steps=2, height) {
	GoblinOne_chunk10x53(steps, height);
} //end skeleton

module GoblinOne_contour00x54_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[20, 8], [20.0, 23.5], [20, 39], 
		[17.0, 39.0], [14, 39], [8.0, 32.0], 
		[2, 25], [2.0, 35.0], [2, 45], 
		[11.0, 45.0], [20, 45], [20.0, 45.0], 
		[20, 45], [20.0, 45.0], [20, 45], 
		[38.0, 45.0], [56, 45], [55.5, 35.0], 
		[55, 25], [49.0, 32.0], [43, 39], 
		[40.0, 39.0], [37, 39], [37.0, 23.5], 
		[37, 8], [42.5, 4.0], [48, 0], 
		[29.0, 0.0], [10, 0], [15.0, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[20, 8], [20.0, 23.5], [20, 39], 
		[17.0, 39.0], [14, 39], [8.0, 32.0], 
		[2, 25], [2.0, 35.0], [2, 45], 
		[11.0, 45.0], [20, 45], [20.0, 45.0], 
		[20, 45], [20.0, 45.0], [20, 45], 
		[38.0, 45.0], [56, 45], [55.5, 35.0], 
		[55, 25], [49.0, 32.0], [43, 39], 
		[40.0, 39.0], [37, 39], [37.0, 23.5], 
		[37, 8], [42.5, 4.0], [48, 0], 
		[29.0, 0.0], [10, 0], [15.0, 4.0], 
		 ]);
}}}

module GoblinOne_contour00x54_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x54_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x54(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x54_skeleton(height);
			GoblinOne_contour00x54_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x54_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x54(steps=2, height) {
	difference() {
		GoblinOne_contour00x54(steps, height);
		
	}
}

GoblinOne_bbox0x54=[[2, 0], [56, 45]];

module GoblinOne_letter0x54(steps=2, height) {
	GoblinOne_chunk10x54(steps, height);
} //end skeleton

module GoblinOne_contour00x55_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[9, 37], [4.5, 41.0], [0, 45], 
		[16.5, 45.0], [33, 45], [29.0, 41.0], 
		[25, 37], [25.0, 30.0], [25, 23], 
		[25, 18], [26.0, 15.0], [27, 12], 
		[28.0, 10.0], [29, 8], [31.0, 7.0], 
		[33, 6], [36, 6], [38, 6], 
		[39.5, 6.5], [41, 7], [42.0, 7.5], 
		[43, 8], [44.0, 9.5], [45, 11], 
		[45.5, 12.5], [46, 14], [46.5, 16.5], 
		[47, 19], [47, 23], [47.0, 30.0], 
		[47, 37], [43.5, 41.0], [40, 45], 
		[52.0, 45.0], [64, 45], [60.0, 41.0], 
		[56, 37], [56.0, 29.0], [56, 21], 
		[56, 16], [55.0, 13.0], [54, 10], 
		[53.0, 7.5], [52, 5], [50.0, 3.5], 
		[48, 2], [45.5, 1.0], [43, 0], 
		[40.0, -0.5], [37, -1], [34, -1], 
		[27, -1], [22.5, 0.5], [18, 2], 
		[15.0, 4.5], [12, 7], [10.5, 11.0], 
		[9, 15], [9, 21], [9.0, 29.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[9, 37], [4.5, 41.0], [0, 45], 
		[16.5, 45.0], [33, 45], [29.0, 41.0], 
		[25, 37], [25.0, 30.0], [25, 23], 
		[25, 18], [26.0, 15.0], [27, 12], 
		[28.0, 10.0], [29, 8], [31.0, 7.0], 
		[33, 6], [36, 6], [38, 6], 
		[39.5, 6.5], [41, 7], [42.0, 7.5], 
		[43, 8], [44.0, 9.5], [45, 11], 
		[45.5, 12.5], [46, 14], [46.5, 16.5], 
		[47, 19], [47, 23], [47.0, 30.0], 
		[47, 37], [43.5, 41.0], [40, 45], 
		[52.0, 45.0], [64, 45], [60.0, 41.0], 
		[56, 37], [56.0, 29.0], [56, 21], 
		[56, 16], [55.0, 13.0], [54, 10], 
		[53.0, 7.5], [52, 5], [50.0, 3.5], 
		[48, 2], [45.5, 1.0], [43, 0], 
		[40.0, -0.5], [37, -1], [34, -1], 
		[27, -1], [22.5, 0.5], [18, 2], 
		[15.0, 4.5], [12, 7], [10.5, 11.0], 
		[9, 15], [9, 21], [9.0, 29.0], 
		 ]);
}}}

module GoblinOne_contour00x55_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 23], [25, 18], [26.0, 15.0],steps,height);
	BezConic([26.0, 15.0], [27, 12], [28.0, 10.0],steps,height);
	BezConic([28.0, 10.0], [29, 8], [31.0, 7.0],steps,height);
	BezConic([31.0, 7.0], [33, 6], [36, 6],steps,height);
	BezConic([36, 6], [38, 6], [39.5, 6.5],steps,height);
	BezConic([39.5, 6.5], [41, 7], [42.0, 7.5],steps,height);
	BezConic([42.0, 7.5], [43, 8], [44.0, 9.5],steps,height);
	BezConic([44.0, 9.5], [45, 11], [45.5, 12.5],steps,height);
	BezConic([45.5, 12.5], [46, 14], [46.5, 16.5],steps,height);
	BezConic([46.5, 16.5], [47, 19], [47, 23],steps,height);
}
}

module GoblinOne_contour00x55_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([56, 21], [56, 16], [55.0, 13.0],steps,height);
	BezConic([55.0, 13.0], [54, 10], [53.0, 7.5],steps,height);
	BezConic([53.0, 7.5], [52, 5], [50.0, 3.5],steps,height);
	BezConic([50.0, 3.5], [48, 2], [45.5, 1.0],steps,height);
	BezConic([45.5, 1.0], [43, 0], [40.0, -0.5],steps,height);
	BezConic([40.0, -0.5], [37, -1], [34, -1],steps,height);
	BezConic([34, -1], [27, -1], [22.5, 0.5],steps,height);
	BezConic([22.5, 0.5], [18, 2], [15.0, 4.5],steps,height);
	BezConic([15.0, 4.5], [12, 7], [10.5, 11.0],steps,height);
	BezConic([10.5, 11.0], [9, 15], [9, 21],steps,height);
}
}

module GoblinOne_contour00x55(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x55_skeleton(height);
			GoblinOne_contour00x55_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x55_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x55(steps=2, height) {
	difference() {
		GoblinOne_contour00x55(steps, height);
		
	}
}

GoblinOne_bbox0x55=[[0, -1], [64, 45]];

module GoblinOne_letter0x55(steps=2, height) {
	GoblinOne_chunk10x55(steps, height);
} //end skeleton

module GoblinOne_contour00x56_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[9, 37], [4.0, 41.0], [-1, 45], 
		[15.0, 45.0], [31, 45], [28.5, 41.5], 
		[26, 38], [31.0, 25.5], [36, 13], 
		[40.0, 25.5], [44, 38], [41.0, 41.5], 
		[38, 45], [51.0, 45.0], [64, 45], 
		[59.0, 41.5], [54, 38], [47.0, 19.0], 
		[40, 0], [32.0, 0.0], [24, 0], 
		[16.5, 18.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[9, 37], [4.0, 41.0], [-1, 45], 
		[15.0, 45.0], [31, 45], [28.5, 41.5], 
		[26, 38], [31.0, 25.5], [36, 13], 
		[40.0, 25.5], [44, 38], [41.0, 41.5], 
		[38, 45], [51.0, 45.0], [64, 45], 
		[59.0, 41.5], [54, 38], [47.0, 19.0], 
		[40, 0], [32.0, 0.0], [24, 0], 
		[16.5, 18.5], ]);
}}}

module GoblinOne_contour00x56_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x56_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x56(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x56_skeleton(height);
			GoblinOne_contour00x56_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x56_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x56(steps=2, height) {
	difference() {
		GoblinOne_contour00x56(steps, height);
		
	}
}

GoblinOne_bbox0x56=[[-1, 0], [64, 45]];

module GoblinOne_letter0x56(steps=2, height) {
	GoblinOne_chunk10x56(steps, height);
} //end skeleton

module GoblinOne_contour00x57_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 38], [3.0, 41.5], [-1, 45], 
		[13.5, 45.0], [28, 45], [26.0, 41.0], 
		[24, 37], [27.5, 24.0], [31, 11], 
		[34.0, 24.5], [37, 38], [35.0, 41.5], 
		[33, 45], [46.0, 45.0], [59, 45], 
		[57.0, 41.0], [55, 37], [58.5, 24.0], 
		[62, 11], [65.0, 24.0], [68, 37], 
		[66.0, 41.0], [64, 45], [74.5, 45.0], 
		[85, 45], [81.5, 41.5], [78, 38], 
		[72.5, 19.0], [67, 0], [58.0, 0.0], 
		[49, 0], [46.0, 12.0], [43, 24], 
		[40.5, 12.0], [38, 0], [29.0, 0.0], 
		[20, 0],[13.5, 19.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 38], [3.0, 41.5], [-1, 45], 
		[13.5, 45.0], [28, 45], [26.0, 41.0], 
		[24, 37], [27.5, 24.0], [31, 11], 
		[34.0, 24.5], [37, 38], [35.0, 41.5], 
		[33, 45], [46.0, 45.0], [59, 45], 
		[57.0, 41.0], [55, 37], [58.5, 24.0], 
		[62, 11], [65.0, 24.0], [68, 37], 
		[66.0, 41.0], [64, 45], [74.5, 45.0], 
		[85, 45], [81.5, 41.5], [78, 38], 
		[72.5, 19.0], [67, 0], [58.0, 0.0], 
		[49, 0], [46.0, 12.0], [43, 24], 
		[40.5, 12.0], [38, 0], [29.0, 0.0], 
		[20, 0],[13.5, 19.0], ]);
}}}

module GoblinOne_contour00x57_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x57_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x57(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x57_skeleton(height);
			GoblinOne_contour00x57_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x57_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x57(steps=2, height) {
	difference() {
		GoblinOne_contour00x57(steps, height);
		
	}
}

GoblinOne_bbox0x57=[[-1, 0], [85, 45]];

module GoblinOne_letter0x57(steps=2, height) {
	GoblinOne_chunk10x57(steps, height);
} //end skeleton

module GoblinOne_contour00x58_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[13, 10], [18.0, 16.0], [23, 22], 
		[17.5, 29.0], [12, 36], [6.0, 40.5], 
		[0, 45], [16.0, 45.0], [32, 45], 
		[30.5, 43.0], [29, 41], [32.5, 36.0], 
		[36, 31], [39.5, 35.0], [43, 39], 
		[40.0, 42.0], [37, 45], [51.0, 45.0], 
		[65, 45], [58.0, 40.0], [51, 35], 
		[46.5, 29.5], [42, 24], [48.0, 16.5], 
		[54, 9], [60.0, 4.5], [66, 0], 
		[50.0, 0.0], [34, 0], [35.5, 2.0], 
		[37, 4], [33.0, 9.5], [29, 15], 
		[25.5, 10.5], [22, 6], [25.0, 3.0], 
		[28, 0], [14.0, 0.0], [0, 0], 
		[6.5, 5.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[13, 10], [18.0, 16.0], [23, 22], 
		[17.5, 29.0], [12, 36], [6.0, 40.5], 
		[0, 45], [16.0, 45.0], [32, 45], 
		[30.5, 43.0], [29, 41], [32.5, 36.0], 
		[36, 31], [39.5, 35.0], [43, 39], 
		[40.0, 42.0], [37, 45], [51.0, 45.0], 
		[65, 45], [58.0, 40.0], [51, 35], 
		[46.5, 29.5], [42, 24], [48.0, 16.5], 
		[54, 9], [60.0, 4.5], [66, 0], 
		[50.0, 0.0], [34, 0], [35.5, 2.0], 
		[37, 4], [33.0, 9.5], [29, 15], 
		[25.5, 10.5], [22, 6], [25.0, 3.0], 
		[28, 0], [14.0, 0.0], [0, 0], 
		[6.5, 5.0], ]);
}}}

module GoblinOne_contour00x58_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x58_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x58(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x58_skeleton(height);
			GoblinOne_contour00x58_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x58_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x58(steps=2, height) {
	difference() {
		GoblinOne_contour00x58(steps, height);
		
	}
}

GoblinOne_bbox0x58=[[0, 0], [66, 45]];

module GoblinOne_letter0x58(steps=2, height) {
	GoblinOne_chunk10x58(steps, height);
} //end skeleton

module GoblinOne_contour00x59_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[23, 8], [23.0, 11.0], [23, 14], 
		[15.5, 25.5], [8, 37], [3.5, 41.0], 
		[-1, 45], [14.5, 45.0], [30, 45], 
		[27.5, 42.0], [25, 39], [29.5, 31.0], 
		[34, 23], [37.5, 31.0], [41, 39], 
		[38.5, 42.0], [36, 45], [49.0, 45.0], 
		[62, 45], [57.0, 41.0], [52, 37], 
		[45.5, 25.5], [39, 14], [39.0, 11.0], 
		[39, 8], [43.0, 4.0], [47, 0], 
		[31.0, 0.0], [15, 0], [19.0, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[23, 8], [23.0, 11.0], [23, 14], 
		[15.5, 25.5], [8, 37], [3.5, 41.0], 
		[-1, 45], [14.5, 45.0], [30, 45], 
		[27.5, 42.0], [25, 39], [29.5, 31.0], 
		[34, 23], [37.5, 31.0], [41, 39], 
		[38.5, 42.0], [36, 45], [49.0, 45.0], 
		[62, 45], [57.0, 41.0], [52, 37], 
		[45.5, 25.5], [39, 14], [39.0, 11.0], 
		[39, 8], [43.0, 4.0], [47, 0], 
		[31.0, 0.0], [15, 0], [19.0, 4.0], 
		 ]);
}}}

module GoblinOne_contour00x59_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x59_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x59(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x59_skeleton(height);
			GoblinOne_contour00x59_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x59_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x59(steps=2, height) {
	difference() {
		GoblinOne_contour00x59(steps, height);
		
	}
}

GoblinOne_bbox0x59=[[-1, 0], [62, 45]];

module GoblinOne_letter0x59(steps=2, height) {
	GoblinOne_chunk10x59(steps, height);
} //end skeleton

module GoblinOne_contour00x5a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[29, 38], [22.0, 38.0], [15, 38], 
		[10.0, 31.5], [5, 25], [5.0, 35.0], 
		[5, 45], [29.5, 45.0], [54, 45], 
		[41.0, 26.0], [28, 7], [36.0, 7.0], 
		[44, 7], [49.0, 13.5], [54, 20], 
		[54.0, 10.0], [54, 0], [28.0, 0.0], 
		[2, 0],[15.5, 19.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[29, 38], [22.0, 38.0], [15, 38], 
		[10.0, 31.5], [5, 25], [5.0, 35.0], 
		[5, 45], [29.5, 45.0], [54, 45], 
		[41.0, 26.0], [28, 7], [36.0, 7.0], 
		[44, 7], [49.0, 13.5], [54, 20], 
		[54.0, 10.0], [54, 0], [28.0, 0.0], 
		[2, 0],[15.5, 19.0], ]);
}}}

module GoblinOne_contour00x5a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5a(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x5a_skeleton(height);
			GoblinOne_contour00x5a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x5a_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x5a(steps=2, height) {
	difference() {
		GoblinOne_contour00x5a(steps, height);
		
	}
}

GoblinOne_bbox0x5a=[[2, 0], [54, 45]];

module GoblinOne_letter0x5a(steps=2, height) {
	GoblinOne_chunk10x5a(steps, height);
} //end skeleton

module GoblinOne_contour00x5b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 52], [17.5, 52.0], [28, 52], 
		[28.0, 49.0], [28, 46], [23.0, 46.0], 
		[18, 46], [18.0, 22.5], [18, -1], 
		[23.0, -1.0], [28, -1], [28.0, -4.0], 
		[28, -7], [17.5, -7.0], [7, -7], 
		[7.0, 22.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 52], [17.5, 52.0], [28, 52], 
		[28.0, 49.0], [28, 46], [23.0, 46.0], 
		[18, 46], [18.0, 22.5], [18, -1], 
		[23.0, -1.0], [28, -1], [28.0, -4.0], 
		[28, -7], [17.5, -7.0], [7, -7], 
		[7.0, 22.5], ]);
}}}

module GoblinOne_contour00x5b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5b(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x5b_skeleton(height);
			GoblinOne_contour00x5b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x5b_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x5b(steps=2, height) {
	difference() {
		GoblinOne_contour00x5b(steps, height);
		
	}
}

GoblinOne_bbox0x5b=[[7, -7], [28, 52]];

module GoblinOne_letter0x5b(steps=2, height) {
	GoblinOne_chunk10x5b(steps, height);
} //end skeleton

module GoblinOne_contour00x5c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 49], [7.0, 49.0], [11, 49], 
		[18.5, 22.0], [26, -5], [21.5, -5.0], 
		[17, -5],[10.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 49], [7.0, 49.0], [11, 49], 
		[18.5, 22.0], [26, -5], [21.5, -5.0], 
		[17, -5],[10.0, 22.0], ]);
}}}

module GoblinOne_contour00x5c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5c(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x5c_skeleton(height);
			GoblinOne_contour00x5c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x5c_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x5c(steps=2, height) {
	difference() {
		GoblinOne_contour00x5c(steps, height);
		
	}
}

GoblinOne_bbox0x5c=[[3, -5], [26, 49]];

module GoblinOne_letter0x5c(steps=2, height) {
	GoblinOne_chunk10x5c(steps, height);
} //end skeleton

module GoblinOne_contour00x5d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, -1], [12.0, 22.5], [12, 46], 
		[7.5, 46.0], [3, 46], [3.0, 49.0], 
		[3, 52], [13.0, 52.0], [23, 52], 
		[23.0, 22.5], [23, -7], [13.0, -7.0], 
		[3, -7], [3.0, -4.0], [3, -1], 
		[7.5, -1.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, -1], [12.0, 22.5], [12, 46], 
		[7.5, 46.0], [3, 46], [3.0, 49.0], 
		[3, 52], [13.0, 52.0], [23, 52], 
		[23.0, 22.5], [23, -7], [13.0, -7.0], 
		[3, -7], [3.0, -4.0], [3, -1], 
		[7.5, -1.0], ]);
}}}

module GoblinOne_contour00x5d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5d(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x5d_skeleton(height);
			GoblinOne_contour00x5d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x5d_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x5d(steps=2, height) {
	difference() {
		GoblinOne_contour00x5d(steps, height);
		
	}
}

GoblinOne_bbox0x5d=[[3, -7], [23, 52]];

module GoblinOne_letter0x5d(steps=2, height) {
	GoblinOne_chunk10x5d(steps, height);
} //end skeleton

module GoblinOne_contour00x5e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 14], [13.0, 30.0], [23, 46], 
		[33.0, 30.0], [43, 14], [39.5, 12.0], 
		[36, 10], [29.5, 21.5], [23, 33], 
		[16.0, 21.5], [9, 10], [6.0, 12.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 14], [13.0, 30.0], [23, 46], 
		[33.0, 30.0], [43, 14], [39.5, 12.0], 
		[36, 10], [29.5, 21.5], [23, 33], 
		[16.0, 21.5], [9, 10], [6.0, 12.0], 
		 ]);
}}}

module GoblinOne_contour00x5e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5e(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x5e_skeleton(height);
			GoblinOne_contour00x5e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x5e_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x5e(steps=2, height) {
	difference() {
		GoblinOne_contour00x5e(steps, height);
		
	}
}

GoblinOne_bbox0x5e=[[3, 10], [43, 46]];

module GoblinOne_letter0x5e(steps=2, height) {
	GoblinOne_chunk10x5e(steps, height);
} //end skeleton

module GoblinOne_contour00x5f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[48, -2], [48.0, -5.5], [48, -9], 
		[23.5, -9.0], [-1, -9], [-1.0, -5.5], 
		[-1, -2],[23.5, -2.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[48, -2], [48.0, -5.5], [48, -9], 
		[23.5, -9.0], [-1, -9], [-1.0, -5.5], 
		[-1, -2],[23.5, -2.0], ]);
}}}

module GoblinOne_contour00x5f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x5f(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x5f_skeleton(height);
			GoblinOne_contour00x5f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x5f_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x5f(steps=2, height) {
	difference() {
		GoblinOne_contour00x5f(steps, height);
		
	}
}

GoblinOne_bbox0x5f=[[-1, -9], [48, -2]];

module GoblinOne_letter0x5f(steps=2, height) {
	GoblinOne_chunk10x5f(steps, height);
} //end skeleton

module GoblinOne_contour00x60_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 51], [11.0, 51.0], [19, 51], 
		[23.5, 44.5], [28, 38], [25.0, 38.0], 
		[22, 38],[12.5, 44.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 51], [11.0, 51.0], [19, 51], 
		[23.5, 44.5], [28, 38], [25.0, 38.0], 
		[22, 38],[12.5, 44.5], ]);
}}}

module GoblinOne_contour00x60_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x60_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x60(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x60_skeleton(height);
			GoblinOne_contour00x60_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x60_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x60(steps=2, height) {
	difference() {
		GoblinOne_contour00x60(steps, height);
		
	}
}

GoblinOne_bbox0x60=[[3, 38], [28, 51]];

module GoblinOne_letter0x60(steps=2, height) {
	GoblinOne_chunk10x60(steps, height);
} //end skeleton

module GoblinOne_contour00x61_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 8], [3, 11], [4.0, 12.5], 
		[5, 14], [7.0, 15.5], [9, 17], 
		[11.0, 17.5], [13, 18], [15.5, 18.5], 
		[18, 19], [21.0, 19.5], [24, 20], 
		[27, 20], [28, 20], [29.5, 20.0], 
		[31, 20], [33, 20], [33, 22], 
		[32.5, 23.5], [32, 25], [31.5, 26.5], 
		[31, 28], [29.5, 28.5], [28, 29], 
		[26, 29], [25, 29], [23.5, 28.5], 
		[22, 28], [21.0, 27.5], [20, 27], 
		[19.0, 25.5], [18, 24], [18, 23], 
		[11.5, 24.0], [5, 25], [5, 27], 
		[6.0, 28.5], [7, 30], [8.5, 31.5], 
		[10, 33], [12.0, 33.5], [14, 34], 
		[16.5, 34.5], [19, 35], [21.5, 35.5], 
		[24, 36], [27, 36], [30, 36], 
		[32.5, 35.5], [35, 35], [37.5, 34.5], 
		[40, 34], [42.0, 33.0], [44, 32], 
		[45.5, 30.0], [47, 28], [48.0, 25.5], 
		[49, 23], [49, 20], [49.0, 14.5], 
		[49, 9], [49, 6], [50.0, 5.0], 
		[51, 4], [53, 4], [53.0, 2.5], 
		[53, 1], [53, 0], [52.5, 0.0], 
		[52, 0], [50.5, -0.5], [49, -1], 
		[47.5, -1.0], [46, -1], [45, -1], 
		[42, -1], [40.5, -1.0], [39, -1], 
		[37.5, -0.5], [36, 0], [35.0, 1.0], 
		[34, 2], [34, 4], [32, 3], 
		[30.0, 2.0], [28, 1], [26.0, 0.0], 
		[24, -1], [21.5, -1.0], [19, -1], 
		[17, -1], [15, -1], [13.5, -1.0], 
		[12, -1], [10.5, -0.5], [9, 0], 
		[7.5, 0.5], [6, 1], [5.0, 2.0], 
		[4, 3], [3.5, 4.5], [3, 6], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 8], [3, 11], [4.0, 12.5], 
		[5, 14], [7.0, 15.5], [9, 17], 
		[11.0, 17.5], [13, 18], [15.5, 18.5], 
		[18, 19], [21.0, 19.5], [24, 20], 
		[27, 20], [28, 20], [29.5, 20.0], 
		[31, 20], [33, 20], [33, 22], 
		[32.5, 23.5], [32, 25], [31.5, 26.5], 
		[31, 28], [29.5, 28.5], [28, 29], 
		[26, 29], [25, 29], [23.5, 28.5], 
		[22, 28], [21.0, 27.5], [20, 27], 
		[19.0, 25.5], [18, 24], [18, 23], 
		[11.5, 24.0], [5, 25], [5, 27], 
		[6.0, 28.5], [7, 30], [8.5, 31.5], 
		[10, 33], [12.0, 33.5], [14, 34], 
		[16.5, 34.5], [19, 35], [21.5, 35.5], 
		[24, 36], [27, 36], [30, 36], 
		[32.5, 35.5], [35, 35], [37.5, 34.5], 
		[40, 34], [42.0, 33.0], [44, 32], 
		[45.5, 30.0], [47, 28], [48.0, 25.5], 
		[49, 23], [49, 20], [49.0, 14.5], 
		[49, 9], [49, 6], [50.0, 5.0], 
		[51, 4], [53, 4], [53.0, 2.5], 
		[53, 1], [53, 0], [52.5, 0.0], 
		[52, 0], [50.5, -0.5], [49, -1], 
		[47.5, -1.0], [46, -1], [45, -1], 
		[42, -1], [40.5, -1.0], [39, -1], 
		[37.5, -0.5], [36, 0], [35.0, 1.0], 
		[34, 2], [34, 4], [32, 3], 
		[30.0, 2.0], [28, 1], [26.0, 0.0], 
		[24, -1], [21.5, -1.0], [19, -1], 
		[17, -1], [15, -1], [13.5, -1.0], 
		[12, -1], [10.5, -0.5], [9, 0], 
		[7.5, 0.5], [6, 1], [5.0, 2.0], 
		[4, 3], [3.5, 4.5], [3, 6], 
		 ]);
}}}

module GoblinOne_contour00x61_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([27, 20], [28, 20], [29.5, 20.0],steps,height);
	BezConic([29.5, 20.0], [31, 20], [33, 20],steps,height);
	BezConic([33, 20], [33, 22], [32.5, 23.5],steps,height);
	BezConic([32.5, 23.5], [32, 25], [31.5, 26.5],steps,height);
	BezConic([31.5, 26.5], [31, 28], [29.5, 28.5],steps,height);
	BezConic([29.5, 28.5], [28, 29], [26, 29],steps,height);
	BezConic([26, 29], [25, 29], [23.5, 28.5],steps,height);
	BezConic([23.5, 28.5], [22, 28], [21.0, 27.5],steps,height);
	BezConic([21.0, 27.5], [20, 27], [19.0, 25.5],steps,height);
	BezConic([19.0, 25.5], [18, 24], [18, 23],steps,height);
	BezConic([49, 9], [49, 6], [50.0, 5.0],steps,height);
	BezConic([50.0, 5.0], [51, 4], [53, 4],steps,height);
	BezConic([52.5, 0.0], [52, 0], [50.5, -0.5],steps,height);
	BezConic([47.5, -1.0], [46, -1], [45, -1],steps,height);
	BezConic([45, -1], [42, -1], [40.5, -1.0],steps,height);
	BezConic([34, 4], [32, 3], [30.0, 2.0],steps,height);
	BezConic([30.0, 2.0], [28, 1], [26.0, 0.0],steps,height);
	BezConic([21.5, -1.0], [19, -1], [17, -1],steps,height);
	BezConic([17, -1], [15, -1], [13.5, -1.0],steps,height);
	BezConic([10.5, -0.5], [9, 0], [7.5, 0.5],steps,height);
}
}

module GoblinOne_contour00x61_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 8], [3, 11], [4.0, 12.5],steps,height);
	BezConic([4.0, 12.5], [5, 14], [7.0, 15.5],steps,height);
	BezConic([7.0, 15.5], [9, 17], [11.0, 17.5],steps,height);
	BezConic([11.0, 17.5], [13, 18], [15.5, 18.5],steps,height);
	BezConic([15.5, 18.5], [18, 19], [21.0, 19.5],steps,height);
	BezConic([21.0, 19.5], [24, 20], [27, 20],steps,height);
	BezConic([5, 25], [5, 27], [6.0, 28.5],steps,height);
	BezConic([6.0, 28.5], [7, 30], [8.5, 31.5],steps,height);
	BezConic([8.5, 31.5], [10, 33], [12.0, 33.5],steps,height);
	BezConic([12.0, 33.5], [14, 34], [16.5, 34.5],steps,height);
	BezConic([16.5, 34.5], [19, 35], [21.5, 35.5],steps,height);
	BezConic([21.5, 35.5], [24, 36], [27, 36],steps,height);
	BezConic([27, 36], [30, 36], [32.5, 35.5],steps,height);
	BezConic([32.5, 35.5], [35, 35], [37.5, 34.5],steps,height);
	BezConic([37.5, 34.5], [40, 34], [42.0, 33.0],steps,height);
	BezConic([42.0, 33.0], [44, 32], [45.5, 30.0],steps,height);
	BezConic([45.5, 30.0], [47, 28], [48.0, 25.5],steps,height);
	BezConic([48.0, 25.5], [49, 23], [49, 20],steps,height);
	BezConic([53, 1], [53, 0], [52.5, 0.0],steps,height);
	BezConic([50.5, -0.5], [49, -1], [47.5, -1.0],steps,height);
	BezConic([40.5, -1.0], [39, -1], [37.5, -0.5],steps,height);
	BezConic([37.5, -0.5], [36, 0], [35.0, 1.0],steps,height);
	BezConic([35.0, 1.0], [34, 2], [34, 4],steps,height);
	BezConic([26.0, 0.0], [24, -1], [21.5, -1.0],steps,height);
	BezConic([13.5, -1.0], [12, -1], [10.5, -0.5],steps,height);
	BezConic([7.5, 0.5], [6, 1], [5.0, 2.0],steps,height);
	BezConic([5.0, 2.0], [4, 3], [3.5, 4.5],steps,height);
	BezConic([3.5, 4.5], [3, 6], [3, 8],steps,height);
}
}

module GoblinOne_contour00x61(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x61_skeleton(height);
			GoblinOne_contour00x61_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x61_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x61_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 9], [19, 9], [19.5, 8.0], 
		[20, 7], [20.5, 6.5], [21, 6], 
		[22.0, 6.0], [23, 6], [25, 6], 
		[26, 6], [27.5, 6.0], [29, 6], 
		[30.0, 7.0], [31, 8], [32.0, 9.0], 
		[33, 10], [33, 11], [33.0, 12.5], 
		[33, 14], [33, 14], [32.5, 14.0], 
		[32, 14], [31, 14], [28, 14], 
		[25.5, 14.0], [23, 14], [21.5, 13.0], 
		[20, 12], [19.5, 11.5], [19, 11], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 9], [19, 9], [19.5, 8.0], 
		[20, 7], [20.5, 6.5], [21, 6], 
		[22.0, 6.0], [23, 6], [25, 6], 
		[26, 6], [27.5, 6.0], [29, 6], 
		[30.0, 7.0], [31, 8], [32.0, 9.0], 
		[33, 10], [33, 11], [33.0, 12.5], 
		[33, 14], [33, 14], [32.5, 14.0], 
		[32, 14], [31, 14], [28, 14], 
		[25.5, 14.0], [23, 14], [21.5, 13.0], 
		[20, 12], [19.5, 11.5], [19, 11], 
		 ]);
}}}

module GoblinOne_contour10x61_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19.5, 8.0], [20, 7], [20.5, 6.5],steps,height);
	BezConic([20.5, 6.5], [21, 6], [22.0, 6.0],steps,height);
	BezConic([22.0, 6.0], [23, 6], [25, 6],steps,height);
	BezConic([25, 6], [26, 6], [27.5, 6.0],steps,height);
	BezConic([27.5, 6.0], [29, 6], [30.0, 7.0],steps,height);
	BezConic([30.0, 7.0], [31, 8], [32.0, 9.0],steps,height);
	BezConic([32.0, 9.0], [33, 10], [33, 11],steps,height);
	BezConic([33, 14], [33, 14], [32.5, 14.0],steps,height);
	BezConic([32.5, 14.0], [32, 14], [31, 14],steps,height);
	BezConic([31, 14], [28, 14], [25.5, 14.0],steps,height);
	BezConic([25.5, 14.0], [23, 14], [21.5, 13.0],steps,height);
	BezConic([21.5, 13.0], [20, 12], [19.5, 11.5],steps,height);
	BezConic([19.5, 11.5], [19, 11], [19, 9],steps,height);
}
}

module GoblinOne_contour10x61_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19, 9], [19, 9], [19.5, 8.0],steps,height);
}
}

module GoblinOne_contour10x61(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x61_skeleton(height);
			GoblinOne_contour10x61_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x61_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x61(steps=2, height) {
	difference() {
		GoblinOne_contour00x61(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x61(steps, height);
	}
}

GoblinOne_bbox0x61=[[3, -1], [53, 36]];

module GoblinOne_letter0x61(steps=2, height) {
	GoblinOne_chunk10x61(steps, height);
} //end skeleton

module GoblinOne_contour00x62_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 25.0], [10, 42], 
		[6.0, 45.5], [2, 49], [13.5, 49.5], 
		[25, 50], [25.0, 39.5], [25, 29], 
		[27, 32], [30.5, 34.0], [34, 36], 
		[39, 36], [43, 36], [47.0, 34.5], 
		[51, 33], [53.5, 30.5], [56, 28], 
		[57.0, 24.5], [58, 21], [58, 17], 
		[58, 13], [57.0, 10.0], [56, 7], 
		[53.5, 4.5], [51, 2], [47.5, 0.5], 
		[44, -1], [39, -1], [34, -1], 
		[30.5, 0.5], [27, 2], [25, 6], 
		[25.0, 3.0], [25, 0], [13.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 25.0], [10, 42], 
		[6.0, 45.5], [2, 49], [13.5, 49.5], 
		[25, 50], [25.0, 39.5], [25, 29], 
		[27, 32], [30.5, 34.0], [34, 36], 
		[39, 36], [43, 36], [47.0, 34.5], 
		[51, 33], [53.5, 30.5], [56, 28], 
		[57.0, 24.5], [58, 21], [58, 17], 
		[58, 13], [57.0, 10.0], [56, 7], 
		[53.5, 4.5], [51, 2], [47.5, 0.5], 
		[44, -1], [39, -1], [34, -1], 
		[30.5, 0.5], [27, 2], [25, 6], 
		[25.0, 3.0], [25, 0], [13.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}}}

module GoblinOne_contour00x62_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x62_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 29], [27, 32], [30.5, 34.0],steps,height);
	BezConic([30.5, 34.0], [34, 36], [39, 36],steps,height);
	BezConic([39, 36], [43, 36], [47.0, 34.5],steps,height);
	BezConic([47.0, 34.5], [51, 33], [53.5, 30.5],steps,height);
	BezConic([53.5, 30.5], [56, 28], [57.0, 24.5],steps,height);
	BezConic([57.0, 24.5], [58, 21], [58, 17],steps,height);
	BezConic([58, 17], [58, 13], [57.0, 10.0],steps,height);
	BezConic([57.0, 10.0], [56, 7], [53.5, 4.5],steps,height);
	BezConic([53.5, 4.5], [51, 2], [47.5, 0.5],steps,height);
	BezConic([47.5, 0.5], [44, -1], [39, -1],steps,height);
	BezConic([39, -1], [34, -1], [30.5, 0.5],steps,height);
	BezConic([30.5, 0.5], [27, 2], [25, 6],steps,height);
}
}

module GoblinOne_contour00x62(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x62_skeleton(height);
			GoblinOne_contour00x62_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x62_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x62_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, 17], [25, 14], [25.5, 12.5], 
		[26, 11], [27.5, 9.5], [29, 8], 
		[30.5, 7.5], [32, 7], [33, 7], 
		[35, 7], [36.5, 7.5], [38, 8], 
		[39.5, 9.5], [41, 11], [41.5, 13.0], 
		[42, 15], [42, 17], [42, 20], 
		[41.5, 22.0], [41, 24], [39.5, 25.5], 
		[38, 27], [36.5, 27.5], [35, 28], 
		[33, 28], [32, 28], [30.5, 27.5], 
		[29, 27], [27.5, 25.5], [26, 24], 
		[25.5, 22.0],[25, 20], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, 17], [25, 14], [25.5, 12.5], 
		[26, 11], [27.5, 9.5], [29, 8], 
		[30.5, 7.5], [32, 7], [33, 7], 
		[35, 7], [36.5, 7.5], [38, 8], 
		[39.5, 9.5], [41, 11], [41.5, 13.0], 
		[42, 15], [42, 17], [42, 20], 
		[41.5, 22.0], [41, 24], [39.5, 25.5], 
		[38, 27], [36.5, 27.5], [35, 28], 
		[33, 28], [32, 28], [30.5, 27.5], 
		[29, 27], [27.5, 25.5], [26, 24], 
		[25.5, 22.0],[25, 20], ]);
}}}

module GoblinOne_contour10x62_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 17], [25, 14], [25.5, 12.5],steps,height);
	BezConic([25.5, 12.5], [26, 11], [27.5, 9.5],steps,height);
	BezConic([27.5, 9.5], [29, 8], [30.5, 7.5],steps,height);
	BezConic([30.5, 7.5], [32, 7], [33, 7],steps,height);
	BezConic([33, 7], [35, 7], [36.5, 7.5],steps,height);
	BezConic([36.5, 7.5], [38, 8], [39.5, 9.5],steps,height);
	BezConic([39.5, 9.5], [41, 11], [41.5, 13.0],steps,height);
	BezConic([41.5, 13.0], [42, 15], [42, 17],steps,height);
	BezConic([42, 17], [42, 20], [41.5, 22.0],steps,height);
	BezConic([41.5, 22.0], [41, 24], [39.5, 25.5],steps,height);
	BezConic([39.5, 25.5], [38, 27], [36.5, 27.5],steps,height);
	BezConic([36.5, 27.5], [35, 28], [33, 28],steps,height);
	BezConic([33, 28], [32, 28], [30.5, 27.5],steps,height);
	BezConic([30.5, 27.5], [29, 27], [27.5, 25.5],steps,height);
	BezConic([27.5, 25.5], [26, 24], [25.5, 22.0],steps,height);
	BezConic([25.5, 22.0], [25, 20], [25, 17],steps,height);
}
}

module GoblinOne_contour10x62_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x62(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x62_skeleton(height);
			GoblinOne_contour10x62_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x62_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x62(steps=2, height) {
	difference() {
		GoblinOne_contour00x62(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x62(steps, height);
	}
}

GoblinOne_bbox0x62=[[1, -1], [58, 50]];

module GoblinOne_letter0x62(steps=2, height) {
	GoblinOne_chunk10x62(steps, height);
} //end skeleton

module GoblinOne_contour00x63_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 18], [3, 22], [5.0, 25.5], 
		[7, 29], [10.5, 31.0], [14, 33], 
		[18.5, 34.5], [23, 36], [28, 36], 
		[33, 36], [37.0, 35.0], [41, 34], 
		[43, 32], [46.5, 34.0], [50, 36], 
		[50.0, 28.5], [50, 21], [46.0, 20.5], 
		[42, 20], [42, 22], [40.5, 23.5], 
		[39, 25], [38.0, 26.5], [37, 28], 
		[35.0, 28.5], [33, 29], [31, 29], 
		[29, 29], [27.0, 28.5], [25, 28], 
		[23.5, 27.0], [22, 26], [21.0, 23.5], 
		[20, 21], [20, 18], [20, 15], 
		[21.0, 12.5], [22, 10], [23.5, 8.5], 
		[25, 7], [27.0, 6.5], [29, 6], 
		[32, 6], [34, 6], [36.0, 6.5], 
		[38, 7], [40.0, 7.5], [42, 8], 
		[44.0, 9.0], [46, 10], [48, 12], 
		[49.5, 10.5], [51, 9], [50, 7], 
		[48.0, 5.0], [46, 3], [43.0, 1.5], 
		[40, 0], [36.5, -0.5], [33, -1], 
		[29, -1], [23, -1], [18.0, 0.0], 
		[13, 1], [10.0, 3.5], [7, 6], 
		[5.0, 9.5],[3, 13], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 18], [3, 22], [5.0, 25.5], 
		[7, 29], [10.5, 31.0], [14, 33], 
		[18.5, 34.5], [23, 36], [28, 36], 
		[33, 36], [37.0, 35.0], [41, 34], 
		[43, 32], [46.5, 34.0], [50, 36], 
		[50.0, 28.5], [50, 21], [46.0, 20.5], 
		[42, 20], [42, 22], [40.5, 23.5], 
		[39, 25], [38.0, 26.5], [37, 28], 
		[35.0, 28.5], [33, 29], [31, 29], 
		[29, 29], [27.0, 28.5], [25, 28], 
		[23.5, 27.0], [22, 26], [21.0, 23.5], 
		[20, 21], [20, 18], [20, 15], 
		[21.0, 12.5], [22, 10], [23.5, 8.5], 
		[25, 7], [27.0, 6.5], [29, 6], 
		[32, 6], [34, 6], [36.0, 6.5], 
		[38, 7], [40.0, 7.5], [42, 8], 
		[44.0, 9.0], [46, 10], [48, 12], 
		[49.5, 10.5], [51, 9], [50, 7], 
		[48.0, 5.0], [46, 3], [43.0, 1.5], 
		[40, 0], [36.5, -0.5], [33, -1], 
		[29, -1], [23, -1], [18.0, 0.0], 
		[13, 1], [10.0, 3.5], [7, 6], 
		[5.0, 9.5],[3, 13], ]);
}}}

module GoblinOne_contour00x63_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([42, 20], [42, 22], [40.5, 23.5],steps,height);
	BezConic([38.0, 26.5], [37, 28], [35.0, 28.5],steps,height);
	BezConic([35.0, 28.5], [33, 29], [31, 29],steps,height);
	BezConic([31, 29], [29, 29], [27.0, 28.5],steps,height);
	BezConic([27.0, 28.5], [25, 28], [23.5, 27.0],steps,height);
	BezConic([23.5, 27.0], [22, 26], [21.0, 23.5],steps,height);
	BezConic([21.0, 23.5], [20, 21], [20, 18],steps,height);
	BezConic([20, 18], [20, 15], [21.0, 12.5],steps,height);
	BezConic([21.0, 12.5], [22, 10], [23.5, 8.5],steps,height);
	BezConic([23.5, 8.5], [25, 7], [27.0, 6.5],steps,height);
	BezConic([27.0, 6.5], [29, 6], [32, 6],steps,height);
	BezConic([32, 6], [34, 6], [36.0, 6.5],steps,height);
	BezConic([36.0, 6.5], [38, 7], [40.0, 7.5],steps,height);
	BezConic([40.0, 7.5], [42, 8], [44.0, 9.0],steps,height);
	BezConic([44.0, 9.0], [46, 10], [48, 12],steps,height);
}
}

module GoblinOne_contour00x63_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 18], [3, 22], [5.0, 25.5],steps,height);
	BezConic([5.0, 25.5], [7, 29], [10.5, 31.0],steps,height);
	BezConic([10.5, 31.0], [14, 33], [18.5, 34.5],steps,height);
	BezConic([18.5, 34.5], [23, 36], [28, 36],steps,height);
	BezConic([28, 36], [33, 36], [37.0, 35.0],steps,height);
	BezConic([37.0, 35.0], [41, 34], [43, 32],steps,height);
	BezConic([40.5, 23.5], [39, 25], [38.0, 26.5],steps,height);
	BezConic([51, 9], [50, 7], [48.0, 5.0],steps,height);
	BezConic([48.0, 5.0], [46, 3], [43.0, 1.5],steps,height);
	BezConic([43.0, 1.5], [40, 0], [36.5, -0.5],steps,height);
	BezConic([36.5, -0.5], [33, -1], [29, -1],steps,height);
	BezConic([29, -1], [23, -1], [18.0, 0.0],steps,height);
	BezConic([18.0, 0.0], [13, 1], [10.0, 3.5],steps,height);
	BezConic([10.0, 3.5], [7, 6], [5.0, 9.5],steps,height);
	BezConic([5.0, 9.5], [3, 13], [3, 18],steps,height);
}
}

module GoblinOne_contour00x63(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x63_skeleton(height);
			GoblinOne_contour00x63_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x63_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x63(steps=2, height) {
	difference() {
		GoblinOne_contour00x63(steps, height);
		
	}
}

GoblinOne_bbox0x63=[[3, -1], [51, 36]];

module GoblinOne_letter0x63(steps=2, height) {
	GoblinOne_chunk10x63(steps, height);
} //end skeleton

module GoblinOne_contour00x64_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 17], [3, 21], [4.5, 24.5], 
		[6, 28], [8.5, 30.5], [11, 33], 
		[14.5, 34.5], [18, 36], [22, 36], 
		[25, 36], [27.0, 35.5], [29, 35], 
		[31.0, 34.0], [33, 33], [34.5, 32.0], 
		[36, 31], [37, 29], [37.0, 35.5], 
		[37, 42], [33.0, 45.5], [29, 49], 
		[40.5, 49.5], [52, 50], [52.0, 29.0], 
		[52, 8], [56.0, 4.0], [60, 0], 
		[48.5, 0.0], [37, 0], [37.0, 3.0], 
		[37, 6], [35, 2], [31.5, 0.5], 
		[28, -1], [23, -1], [18, -1], 
		[14.0, 0.5], [10, 2], [7.5, 4.5], 
		[5, 7], [4.0, 10.0], [3, 13], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 17], [3, 21], [4.5, 24.5], 
		[6, 28], [8.5, 30.5], [11, 33], 
		[14.5, 34.5], [18, 36], [22, 36], 
		[25, 36], [27.0, 35.5], [29, 35], 
		[31.0, 34.0], [33, 33], [34.5, 32.0], 
		[36, 31], [37, 29], [37.0, 35.5], 
		[37, 42], [33.0, 45.5], [29, 49], 
		[40.5, 49.5], [52, 50], [52.0, 29.0], 
		[52, 8], [56.0, 4.0], [60, 0], 
		[48.5, 0.0], [37, 0], [37.0, 3.0], 
		[37, 6], [35, 2], [31.5, 0.5], 
		[28, -1], [23, -1], [18, -1], 
		[14.0, 0.5], [10, 2], [7.5, 4.5], 
		[5, 7], [4.0, 10.0], [3, 13], 
		 ]);
}}}

module GoblinOne_contour00x64_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x64_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 17], [3, 21], [4.5, 24.5],steps,height);
	BezConic([4.5, 24.5], [6, 28], [8.5, 30.5],steps,height);
	BezConic([8.5, 30.5], [11, 33], [14.5, 34.5],steps,height);
	BezConic([14.5, 34.5], [18, 36], [22, 36],steps,height);
	BezConic([22, 36], [25, 36], [27.0, 35.5],steps,height);
	BezConic([27.0, 35.5], [29, 35], [31.0, 34.0],steps,height);
	BezConic([31.0, 34.0], [33, 33], [34.5, 32.0],steps,height);
	BezConic([34.5, 32.0], [36, 31], [37, 29],steps,height);
	BezConic([37, 6], [35, 2], [31.5, 0.5],steps,height);
	BezConic([31.5, 0.5], [28, -1], [23, -1],steps,height);
	BezConic([23, -1], [18, -1], [14.0, 0.5],steps,height);
	BezConic([14.0, 0.5], [10, 2], [7.5, 4.5],steps,height);
	BezConic([7.5, 4.5], [5, 7], [4.0, 10.0],steps,height);
	BezConic([4.0, 10.0], [3, 13], [3, 17],steps,height);
}
}

module GoblinOne_contour00x64(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x64_skeleton(height);
			GoblinOne_contour00x64_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x64_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x64_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[20, 17], [20, 15], [20.5, 13.0], 
		[21, 11], [22.0, 9.5], [23, 8], 
		[24.5, 7.5], [26, 7], [28, 7], 
		[30, 7], [31.5, 7.5], [33, 8], 
		[34.0, 9.5], [35, 11], [36.0, 12.5], 
		[37, 14], [37, 17], [37, 20], 
		[36.0, 22.0], [35, 24], [34.0, 25.5], 
		[33, 27], [31.5, 27.5], [30, 28], 
		[28, 28], [26, 28], [24.5, 27.5], 
		[23, 27], [22.0, 25.5], [21, 24], 
		[20.5, 22.0],[20, 20], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[20, 17], [20, 15], [20.5, 13.0], 
		[21, 11], [22.0, 9.5], [23, 8], 
		[24.5, 7.5], [26, 7], [28, 7], 
		[30, 7], [31.5, 7.5], [33, 8], 
		[34.0, 9.5], [35, 11], [36.0, 12.5], 
		[37, 14], [37, 17], [37, 20], 
		[36.0, 22.0], [35, 24], [34.0, 25.5], 
		[33, 27], [31.5, 27.5], [30, 28], 
		[28, 28], [26, 28], [24.5, 27.5], 
		[23, 27], [22.0, 25.5], [21, 24], 
		[20.5, 22.0],[20, 20], ]);
}}}

module GoblinOne_contour10x64_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 17], [20, 15], [20.5, 13.0],steps,height);
	BezConic([20.5, 13.0], [21, 11], [22.0, 9.5],steps,height);
	BezConic([22.0, 9.5], [23, 8], [24.5, 7.5],steps,height);
	BezConic([24.5, 7.5], [26, 7], [28, 7],steps,height);
	BezConic([28, 7], [30, 7], [31.5, 7.5],steps,height);
	BezConic([31.5, 7.5], [33, 8], [34.0, 9.5],steps,height);
	BezConic([34.0, 9.5], [35, 11], [36.0, 12.5],steps,height);
	BezConic([36.0, 12.5], [37, 14], [37, 17],steps,height);
	BezConic([37, 17], [37, 20], [36.0, 22.0],steps,height);
	BezConic([36.0, 22.0], [35, 24], [34.0, 25.5],steps,height);
	BezConic([34.0, 25.5], [33, 27], [31.5, 27.5],steps,height);
	BezConic([31.5, 27.5], [30, 28], [28, 28],steps,height);
	BezConic([28, 28], [26, 28], [24.5, 27.5],steps,height);
	BezConic([24.5, 27.5], [23, 27], [22.0, 25.5],steps,height);
	BezConic([22.0, 25.5], [21, 24], [20.5, 22.0],steps,height);
	BezConic([20.5, 22.0], [20, 20], [20, 17],steps,height);
}
}

module GoblinOne_contour10x64_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x64(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x64_skeleton(height);
			GoblinOne_contour10x64_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x64_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x64(steps=2, height) {
	difference() {
		GoblinOne_contour00x64(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x64(steps, height);
	}
}

GoblinOne_bbox0x64=[[3, -1], [60, 50]];

module GoblinOne_letter0x64(steps=2, height) {
	GoblinOne_chunk10x64(steps, height);
} //end skeleton

module GoblinOne_contour00x65_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 17], [3, 21], [4.0, 23.5], 
		[5, 26], [7.0, 28.5], [9, 31], 
		[11.5, 32.0], [14, 33], [17.0, 34.0], 
		[20, 35], [23.0, 35.5], [26, 36], 
		[29, 36], [33, 36], [37.0, 35.0], 
		[41, 34], [44.0, 31.5], [47, 29], 
		[48.5, 25.5], [50, 22], [50, 17], 
		[35.0, 17.0], [20, 17], [20, 14], 
		[21.0, 12.0], [22, 10], [23.5, 8.5], 
		[25, 7], [27.0, 6.5], [29, 6], 
		[31, 6], [33, 6], [35.0, 6.0], 
		[37, 6], [39.5, 7.0], [42, 8], 
		[44.0, 9.0], [46, 10], [47, 12], 
		[48.5, 10.5], [50, 9], [50, 7], 
		[48.5, 5.5], [47, 4], [45.0, 3.0], 
		[43, 2], [41.0, 1.0], [39, 0], 
		[37.0, -0.5], [35, -1], [32.5, -1.0], 
		[30, -1], [28, -1], [22, -1], 
		[17.5, 0.0], [13, 1], [10.0, 3.5], 
		[7, 6], [5.0, 9.0], [3, 12], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 17], [3, 21], [4.0, 23.5], 
		[5, 26], [7.0, 28.5], [9, 31], 
		[11.5, 32.0], [14, 33], [17.0, 34.0], 
		[20, 35], [23.0, 35.5], [26, 36], 
		[29, 36], [33, 36], [37.0, 35.0], 
		[41, 34], [44.0, 31.5], [47, 29], 
		[48.5, 25.5], [50, 22], [50, 17], 
		[35.0, 17.0], [20, 17], [20, 14], 
		[21.0, 12.0], [22, 10], [23.5, 8.5], 
		[25, 7], [27.0, 6.5], [29, 6], 
		[31, 6], [33, 6], [35.0, 6.0], 
		[37, 6], [39.5, 7.0], [42, 8], 
		[44.0, 9.0], [46, 10], [47, 12], 
		[48.5, 10.5], [50, 9], [50, 7], 
		[48.5, 5.5], [47, 4], [45.0, 3.0], 
		[43, 2], [41.0, 1.0], [39, 0], 
		[37.0, -0.5], [35, -1], [32.5, -1.0], 
		[30, -1], [28, -1], [22, -1], 
		[17.5, 0.0], [13, 1], [10.0, 3.5], 
		[7, 6], [5.0, 9.0], [3, 12], 
		 ]);
}}}

module GoblinOne_contour00x65_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 17], [20, 14], [21.0, 12.0],steps,height);
	BezConic([21.0, 12.0], [22, 10], [23.5, 8.5],steps,height);
	BezConic([23.5, 8.5], [25, 7], [27.0, 6.5],steps,height);
	BezConic([27.0, 6.5], [29, 6], [31, 6],steps,height);
	BezConic([31, 6], [33, 6], [35.0, 6.0],steps,height);
	BezConic([35.0, 6.0], [37, 6], [39.5, 7.0],steps,height);
	BezConic([39.5, 7.0], [42, 8], [44.0, 9.0],steps,height);
	BezConic([44.0, 9.0], [46, 10], [47, 12],steps,height);
	BezConic([45.0, 3.0], [43, 2], [41.0, 1.0],steps,height);
	BezConic([32.5, -1.0], [30, -1], [28, -1],steps,height);
}
}

module GoblinOne_contour00x65_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 17], [3, 21], [4.0, 23.5],steps,height);
	BezConic([4.0, 23.5], [5, 26], [7.0, 28.5],steps,height);
	BezConic([7.0, 28.5], [9, 31], [11.5, 32.0],steps,height);
	BezConic([11.5, 32.0], [14, 33], [17.0, 34.0],steps,height);
	BezConic([17.0, 34.0], [20, 35], [23.0, 35.5],steps,height);
	BezConic([23.0, 35.5], [26, 36], [29, 36],steps,height);
	BezConic([29, 36], [33, 36], [37.0, 35.0],steps,height);
	BezConic([37.0, 35.0], [41, 34], [44.0, 31.5],steps,height);
	BezConic([44.0, 31.5], [47, 29], [48.5, 25.5],steps,height);
	BezConic([48.5, 25.5], [50, 22], [50, 17],steps,height);
	BezConic([50, 9], [50, 7], [48.5, 5.5],steps,height);
	BezConic([48.5, 5.5], [47, 4], [45.0, 3.0],steps,height);
	BezConic([41.0, 1.0], [39, 0], [37.0, -0.5],steps,height);
	BezConic([37.0, -0.5], [35, -1], [32.5, -1.0],steps,height);
	BezConic([28, -1], [22, -1], [17.5, 0.0],steps,height);
	BezConic([17.5, 0.0], [13, 1], [10.0, 3.5],steps,height);
	BezConic([10.0, 3.5], [7, 6], [5.0, 9.0],steps,height);
	BezConic([5.0, 9.0], [3, 12], [3, 17],steps,height);
}
}

module GoblinOne_contour00x65(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x65_skeleton(height);
			GoblinOne_contour00x65_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x65_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x65_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[35, 22], [35, 24], [34.5, 25.5], 
		[34, 27], [33.0, 28.0], [32, 29], 
		[31.0, 29.5], [30, 30], [28, 30], 
		[25, 30], [23.0, 28.0], [21, 26], 
		[20, 22],[27.5, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[35, 22], [35, 24], [34.5, 25.5], 
		[34, 27], [33.0, 28.0], [32, 29], 
		[31.0, 29.5], [30, 30], [28, 30], 
		[25, 30], [23.0, 28.0], [21, 26], 
		[20, 22],[27.5, 22.0], ]);
}}}

module GoblinOne_contour10x65_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35, 22], [35, 24], [34.5, 25.5],steps,height);
	BezConic([34.5, 25.5], [34, 27], [33.0, 28.0],steps,height);
	BezConic([33.0, 28.0], [32, 29], [31.0, 29.5],steps,height);
	BezConic([31.0, 29.5], [30, 30], [28, 30],steps,height);
	BezConic([28, 30], [25, 30], [23.0, 28.0],steps,height);
	BezConic([23.0, 28.0], [21, 26], [20, 22],steps,height);
}
}

module GoblinOne_contour10x65_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x65(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x65_skeleton(height);
			GoblinOne_contour10x65_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x65_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x65(steps=2, height) {
	difference() {
		GoblinOne_contour00x65(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x65(steps, height);
	}
}

GoblinOne_bbox0x65=[[3, -1], [50, 36]];

module GoblinOne_letter0x65(steps=2, height) {
	GoblinOne_chunk10x65(steps, height);
} //end skeleton

module GoblinOne_contour00x66_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 18.0], [10, 28], 
		[6.0, 28.0], [2, 28], [2.0, 31.5], 
		[2, 35], [6.0, 35.0], [10, 35], 
		[10.0, 37.0], [10, 39], [10, 43], 
		[11.5, 46.0], [13, 49], [16.0, 51.0], 
		[19, 53], [22.5, 54.0], [26, 55], 
		[30, 55], [32, 55], [33.5, 54.5], 
		[35, 54], [37.0, 54.0], [39, 54], 
		[41.0, 53.0], [43, 52], [44.0, 51.0], 
		[45, 50], [46.0, 48.5], [47, 47], 
		[47, 45], [47, 45], [47.0, 44.5], 
		[47, 44], [47, 44], [41.0, 42.5], 
		[35, 41], [36, 42], [36.0, 42.5], 
		[36, 43], [36, 43], [36, 44], 
		[35.5, 45.0], [35, 46], [34.5, 47.0], 
		[34, 48], [33.0, 48.5], [32, 49], 
		[30, 49], [28, 49], [27.0, 48.0], 
		[26, 47], [25.5, 45.0], [25, 43], 
		[25.0, 41.0], [25, 39], [25, 36], 
		[25.0, 35.5], [25, 35], [30.5, 35.0], 
		[36, 35], [36.0, 31.5], [36, 28], 
		[30.5, 28.0], [25, 28], [25.0, 18.0], 
		[25, 8], [30.5, 4.0], [36, 0], 
		[18.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 18.0], [10, 28], 
		[6.0, 28.0], [2, 28], [2.0, 31.5], 
		[2, 35], [6.0, 35.0], [10, 35], 
		[10.0, 37.0], [10, 39], [10, 43], 
		[11.5, 46.0], [13, 49], [16.0, 51.0], 
		[19, 53], [22.5, 54.0], [26, 55], 
		[30, 55], [32, 55], [33.5, 54.5], 
		[35, 54], [37.0, 54.0], [39, 54], 
		[41.0, 53.0], [43, 52], [44.0, 51.0], 
		[45, 50], [46.0, 48.5], [47, 47], 
		[47, 45], [47, 45], [47.0, 44.5], 
		[47, 44], [47, 44], [41.0, 42.5], 
		[35, 41], [36, 42], [36.0, 42.5], 
		[36, 43], [36, 43], [36, 44], 
		[35.5, 45.0], [35, 46], [34.5, 47.0], 
		[34, 48], [33.0, 48.5], [32, 49], 
		[30, 49], [28, 49], [27.0, 48.0], 
		[26, 47], [25.5, 45.0], [25, 43], 
		[25.0, 41.0], [25, 39], [25, 36], 
		[25.0, 35.5], [25, 35], [30.5, 35.0], 
		[36, 35], [36.0, 31.5], [36, 28], 
		[30.5, 28.0], [25, 28], [25.0, 18.0], 
		[25, 8], [30.5, 4.0], [36, 0], 
		[18.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}}}

module GoblinOne_contour00x66_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([33.5, 54.5], [35, 54], [37.0, 54.0],steps,height);
	BezConic([47.0, 44.5], [47, 44], [47, 44],steps,height);
	BezConic([35, 41], [36, 42], [36.0, 42.5],steps,height);
	BezConic([36.0, 42.5], [36, 43], [36, 43],steps,height);
	BezConic([36, 43], [36, 44], [35.5, 45.0],steps,height);
	BezConic([35.5, 45.0], [35, 46], [34.5, 47.0],steps,height);
	BezConic([34.5, 47.0], [34, 48], [33.0, 48.5],steps,height);
	BezConic([33.0, 48.5], [32, 49], [30, 49],steps,height);
	BezConic([30, 49], [28, 49], [27.0, 48.0],steps,height);
	BezConic([27.0, 48.0], [26, 47], [25.5, 45.0],steps,height);
	BezConic([25.5, 45.0], [25, 43], [25.0, 41.0],steps,height);
	BezConic([25.0, 41.0], [25, 39], [25, 36],steps,height);
}
}

module GoblinOne_contour00x66_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([10, 39], [10, 43], [11.5, 46.0],steps,height);
	BezConic([11.5, 46.0], [13, 49], [16.0, 51.0],steps,height);
	BezConic([16.0, 51.0], [19, 53], [22.5, 54.0],steps,height);
	BezConic([22.5, 54.0], [26, 55], [30, 55],steps,height);
	BezConic([30, 55], [32, 55], [33.5, 54.5],steps,height);
	BezConic([37.0, 54.0], [39, 54], [41.0, 53.0],steps,height);
	BezConic([41.0, 53.0], [43, 52], [44.0, 51.0],steps,height);
	BezConic([44.0, 51.0], [45, 50], [46.0, 48.5],steps,height);
	BezConic([46.0, 48.5], [47, 47], [47, 45],steps,height);
	BezConic([47, 45], [47, 45], [47.0, 44.5],steps,height);
}
}

module GoblinOne_contour00x66(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x66_skeleton(height);
			GoblinOne_contour00x66_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x66_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x66(steps=2, height) {
	difference() {
		GoblinOne_contour00x66(steps, height);
		
	}
}

GoblinOne_bbox0x66=[[1, 0], [47, 55]];

module GoblinOne_letter0x66(steps=2, height) {
	GoblinOne_chunk10x66(steps, height);
} //end skeleton

module GoblinOne_contour00x67_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[1, -7], [1, -5], [2.0, -4.0], 
		[3, -3], [4.5, -2.0], [6, -1], 
		[8.0, -0.5], [10, 0], [12, 1], 
		[10, 1], [8.5, 1.5], [7, 2], 
		[6.0, 3.0], [5, 4], [4.5, 4.5], 
		[4, 5], [4, 6], [4, 8], 
		[4.5, 9.0], [5, 10], [6.5, 10.5], 
		[8, 11], [9.5, 11.5], [11, 12], 
		[13, 12], [11, 13], [9.5, 14.0], 
		[8, 15], [7.0, 16.5], [6, 18], 
		[5.5, 19.5], [5, 21], [5, 23], 
		[5, 26], [7.0, 28.5], [9, 31], 
		[11.5, 32.5], [14, 34], [18.0, 35.0], 
		[22, 36], [26, 36], [29, 36], 
		[32.5, 35.0], [36, 34], [39, 33], 
		[39, 35], [40.0, 36.0], [41, 37], 
		[42.5, 38.0], [44, 39], [45.5, 39.5], 
		[47, 40], [48, 40], [50, 40], 
		[51.5, 39.5], [53, 39], [54.5, 38.0], 
		[56, 37], [56.5, 36.0], [57, 35], 
		[57, 33], [57, 32], [57.0, 31.5], 
		[57, 31], [56, 30], [52.0, 29.0], 
		[48, 28], [49, 29], [49, 29], 
		[49, 30], [48.5, 31.0], [48, 32], 
		[47.5, 32.5], [47, 33], [46.5, 33.0], 
		[46, 33], [45, 33], [44, 33], 
		[43.5, 32.5], [43, 32], [42, 31], 
		[44, 29], [45.0, 27.0], [46, 25], 
		[46, 23], [46, 20], [44.0, 17.5], 
		[42, 15], [39.5, 13.0], [37, 11], 
		[33.0, 10.5], [29, 10], [25, 10], 
		[21, 10], [16, 11], [16, 11], 
		[15.5, 10.5], [15, 10], [15, 10], 
		[15, 9], [16.0, 8.5], [17, 8], 
		[19.0, 7.5], [21, 7], [24.0, 7.0], 
		[27, 7], [31, 7], [38, 7], 
		[42.5, 6.5], [47, 6], [49.5, 4.5], 
		[52, 3], [53.0, 1.0], [54, -1], 
		[54, -3], [54, -6], [52.0, -8.5], 
		[50, -11], [46.5, -12.5], [43, -14], 
		[38.0, -14.5], [33, -15], [26, -15], 
		[20, -15], [15.5, -14.5], [11, -14], 
		[8.0, -13.0], [5, -12], [3.0, -10.5], 
		[1, -9], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[1, -7], [1, -5], [2.0, -4.0], 
		[3, -3], [4.5, -2.0], [6, -1], 
		[8.0, -0.5], [10, 0], [12, 1], 
		[10, 1], [8.5, 1.5], [7, 2], 
		[6.0, 3.0], [5, 4], [4.5, 4.5], 
		[4, 5], [4, 6], [4, 8], 
		[4.5, 9.0], [5, 10], [6.5, 10.5], 
		[8, 11], [9.5, 11.5], [11, 12], 
		[13, 12], [11, 13], [9.5, 14.0], 
		[8, 15], [7.0, 16.5], [6, 18], 
		[5.5, 19.5], [5, 21], [5, 23], 
		[5, 26], [7.0, 28.5], [9, 31], 
		[11.5, 32.5], [14, 34], [18.0, 35.0], 
		[22, 36], [26, 36], [29, 36], 
		[32.5, 35.0], [36, 34], [39, 33], 
		[39, 35], [40.0, 36.0], [41, 37], 
		[42.5, 38.0], [44, 39], [45.5, 39.5], 
		[47, 40], [48, 40], [50, 40], 
		[51.5, 39.5], [53, 39], [54.5, 38.0], 
		[56, 37], [56.5, 36.0], [57, 35], 
		[57, 33], [57, 32], [57.0, 31.5], 
		[57, 31], [56, 30], [52.0, 29.0], 
		[48, 28], [49, 29], [49, 29], 
		[49, 30], [48.5, 31.0], [48, 32], 
		[47.5, 32.5], [47, 33], [46.5, 33.0], 
		[46, 33], [45, 33], [44, 33], 
		[43.5, 32.5], [43, 32], [42, 31], 
		[44, 29], [45.0, 27.0], [46, 25], 
		[46, 23], [46, 20], [44.0, 17.5], 
		[42, 15], [39.5, 13.0], [37, 11], 
		[33.0, 10.5], [29, 10], [25, 10], 
		[21, 10], [16, 11], [16, 11], 
		[15.5, 10.5], [15, 10], [15, 10], 
		[15, 9], [16.0, 8.5], [17, 8], 
		[19.0, 7.5], [21, 7], [24.0, 7.0], 
		[27, 7], [31, 7], [38, 7], 
		[42.5, 6.5], [47, 6], [49.5, 4.5], 
		[52, 3], [53.0, 1.0], [54, -1], 
		[54, -3], [54, -6], [52.0, -8.5], 
		[50, -11], [46.5, -12.5], [43, -14], 
		[38.0, -14.5], [33, -15], [26, -15], 
		[20, -15], [15.5, -14.5], [11, -14], 
		[8.0, -13.0], [5, -12], [3.0, -10.5], 
		[1, -9], ]);
}}}

module GoblinOne_contour00x67_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8.0, -0.5], [10, 0], [12, 1],steps,height);
	BezConic([6.0, 3.0], [5, 4], [4.5, 4.5],steps,height);
	BezConic([6.5, 10.5], [8, 11], [9.5, 11.5],steps,height);
	BezConic([57, 33], [57, 32], [57.0, 31.5],steps,height);
	BezConic([48, 28], [49, 29], [49, 29],steps,height);
	BezConic([49, 29], [49, 30], [48.5, 31.0],steps,height);
	BezConic([48.5, 31.0], [48, 32], [47.5, 32.5],steps,height);
	BezConic([47.5, 32.5], [47, 33], [46.5, 33.0],steps,height);
	BezConic([46.5, 33.0], [46, 33], [45, 33],steps,height);
	BezConic([45, 33], [44, 33], [43.5, 32.5],steps,height);
	BezConic([43.5, 32.5], [43, 32], [42, 31],steps,height);
	BezConic([15.5, 10.5], [15, 10], [15, 10],steps,height);
	BezConic([15, 10], [15, 9], [16.0, 8.5],steps,height);
	BezConic([16.0, 8.5], [17, 8], [19.0, 7.5],steps,height);
	BezConic([19.0, 7.5], [21, 7], [24.0, 7.0],steps,height);
	BezConic([24.0, 7.0], [27, 7], [31, 7],steps,height);
}
}

module GoblinOne_contour00x67_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([1, -7], [1, -5], [2.0, -4.0],steps,height);
	BezConic([2.0, -4.0], [3, -3], [4.5, -2.0],steps,height);
	BezConic([4.5, -2.0], [6, -1], [8.0, -0.5],steps,height);
	BezConic([12, 1], [10, 1], [8.5, 1.5],steps,height);
	BezConic([8.5, 1.5], [7, 2], [6.0, 3.0],steps,height);
	BezConic([4.5, 4.5], [4, 5], [4, 6],steps,height);
	BezConic([4, 6], [4, 8], [4.5, 9.0],steps,height);
	BezConic([4.5, 9.0], [5, 10], [6.5, 10.5],steps,height);
	BezConic([9.5, 11.5], [11, 12], [13, 12],steps,height);
	BezConic([13, 12], [11, 13], [9.5, 14.0],steps,height);
	BezConic([9.5, 14.0], [8, 15], [7.0, 16.5],steps,height);
	BezConic([7.0, 16.5], [6, 18], [5.5, 19.5],steps,height);
	BezConic([5.5, 19.5], [5, 21], [5, 23],steps,height);
	BezConic([5, 23], [5, 26], [7.0, 28.5],steps,height);
	BezConic([7.0, 28.5], [9, 31], [11.5, 32.5],steps,height);
	BezConic([11.5, 32.5], [14, 34], [18.0, 35.0],steps,height);
	BezConic([18.0, 35.0], [22, 36], [26, 36],steps,height);
	BezConic([26, 36], [29, 36], [32.5, 35.0],steps,height);
	BezConic([32.5, 35.0], [36, 34], [39, 33],steps,height);
	BezConic([39, 33], [39, 35], [40.0, 36.0],steps,height);
	BezConic([40.0, 36.0], [41, 37], [42.5, 38.0],steps,height);
	BezConic([42.5, 38.0], [44, 39], [45.5, 39.5],steps,height);
	BezConic([45.5, 39.5], [47, 40], [48, 40],steps,height);
	BezConic([48, 40], [50, 40], [51.5, 39.5],steps,height);
	BezConic([51.5, 39.5], [53, 39], [54.5, 38.0],steps,height);
	BezConic([54.5, 38.0], [56, 37], [56.5, 36.0],steps,height);
	BezConic([56.5, 36.0], [57, 35], [57, 33],steps,height);
	BezConic([57.0, 31.5], [57, 31], [56, 30],steps,height);
	BezConic([42, 31], [44, 29], [45.0, 27.0],steps,height);
	BezConic([45.0, 27.0], [46, 25], [46, 23],steps,height);
	BezConic([46, 23], [46, 20], [44.0, 17.5],steps,height);
	BezConic([44.0, 17.5], [42, 15], [39.5, 13.0],steps,height);
	BezConic([39.5, 13.0], [37, 11], [33.0, 10.5],steps,height);
	BezConic([33.0, 10.5], [29, 10], [25, 10],steps,height);
	BezConic([25, 10], [21, 10], [16, 11],steps,height);
	BezConic([16, 11], [16, 11], [15.5, 10.5],steps,height);
	BezConic([31, 7], [38, 7], [42.5, 6.5],steps,height);
	BezConic([42.5, 6.5], [47, 6], [49.5, 4.5],steps,height);
	BezConic([49.5, 4.5], [52, 3], [53.0, 1.0],steps,height);
	BezConic([53.0, 1.0], [54, -1], [54, -3],steps,height);
	BezConic([54, -3], [54, -6], [52.0, -8.5],steps,height);
	BezConic([52.0, -8.5], [50, -11], [46.5, -12.5],steps,height);
	BezConic([46.5, -12.5], [43, -14], [38.0, -14.5],steps,height);
	BezConic([38.0, -14.5], [33, -15], [26, -15],steps,height);
	BezConic([26, -15], [20, -15], [15.5, -14.5],steps,height);
	BezConic([15.5, -14.5], [11, -14], [8.0, -13.0],steps,height);
	BezConic([8.0, -13.0], [5, -12], [3.0, -10.5],steps,height);
	BezConic([3.0, -10.5], [1, -9], [1, -7],steps,height);
}
}

module GoblinOne_contour00x67(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x67_skeleton(height);
			GoblinOne_contour00x67_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x67_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x67_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 23], [18, 21], [19.0, 19.5], 
		[20, 18], [21.0, 17.5], [22, 17], 
		[23.0, 16.5], [24, 16], [26, 16], 
		[27, 16], [28.5, 16.5], [30, 17], 
		[31.0, 17.5], [32, 18], [32.5, 19.5], 
		[33, 21], [33, 23], [33, 25], 
		[32.5, 26.0], [32, 27], [31.0, 28.0], 
		[30, 29], [28.5, 29.5], [27, 30], 
		[26, 30], [24, 30], [23.0, 29.5], 
		[22, 29], [21.0, 28.0], [20, 27], 
		[19.0, 26.0],[18, 25], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 23], [18, 21], [19.0, 19.5], 
		[20, 18], [21.0, 17.5], [22, 17], 
		[23.0, 16.5], [24, 16], [26, 16], 
		[27, 16], [28.5, 16.5], [30, 17], 
		[31.0, 17.5], [32, 18], [32.5, 19.5], 
		[33, 21], [33, 23], [33, 25], 
		[32.5, 26.0], [32, 27], [31.0, 28.0], 
		[30, 29], [28.5, 29.5], [27, 30], 
		[26, 30], [24, 30], [23.0, 29.5], 
		[22, 29], [21.0, 28.0], [20, 27], 
		[19.0, 26.0],[18, 25], ]);
}}}

module GoblinOne_contour10x67_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 23], [18, 21], [19.0, 19.5],steps,height);
	BezConic([19.0, 19.5], [20, 18], [21.0, 17.5],steps,height);
	BezConic([21.0, 17.5], [22, 17], [23.0, 16.5],steps,height);
	BezConic([23.0, 16.5], [24, 16], [26, 16],steps,height);
	BezConic([26, 16], [27, 16], [28.5, 16.5],steps,height);
	BezConic([28.5, 16.5], [30, 17], [31.0, 17.5],steps,height);
	BezConic([31.0, 17.5], [32, 18], [32.5, 19.5],steps,height);
	BezConic([32.5, 19.5], [33, 21], [33, 23],steps,height);
	BezConic([33, 23], [33, 25], [32.5, 26.0],steps,height);
	BezConic([32.5, 26.0], [32, 27], [31.0, 28.0],steps,height);
	BezConic([31.0, 28.0], [30, 29], [28.5, 29.5],steps,height);
	BezConic([28.5, 29.5], [27, 30], [26, 30],steps,height);
	BezConic([26, 30], [24, 30], [23.0, 29.5],steps,height);
	BezConic([23.0, 29.5], [22, 29], [21.0, 28.0],steps,height);
	BezConic([19.0, 26.0], [18, 25], [18, 23],steps,height);
}
}

module GoblinOne_contour10x67_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21.0, 28.0], [20, 27], [19.0, 26.0],steps,height);
}
}

module GoblinOne_contour10x67(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x67_skeleton(height);
			GoblinOne_contour10x67_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x67_additive_curves(steps, height);
	}
}

module GoblinOne_contour20x67_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[17, -4], [17, -5], [17.0, -6.0], 
		[17, -7], [18.5, -7.5], [20, -8], 
		[22.0, -8.5], [24, -9], [27, -9], 
		[29, -9], [31.5, -9.0], [34, -9], 
		[36.0, -8.5], [38, -8], [39.0, -7.0], 
		[40, -6], [40, -5], [40, -4], 
		[39.5, -3.0], [39, -2], [37.0, -1.5], 
		[35, -1], [32.0, -0.5], [29, 0], 
		[24, 0], [22, 0], [21.0, 0.0], 
		[20, 0], [19, 0], [18, -1], 
		[17.5, -2.0],[17, -3], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[17, -4], [17, -5], [17.0, -6.0], 
		[17, -7], [18.5, -7.5], [20, -8], 
		[22.0, -8.5], [24, -9], [27, -9], 
		[29, -9], [31.5, -9.0], [34, -9], 
		[36.0, -8.5], [38, -8], [39.0, -7.0], 
		[40, -6], [40, -5], [40, -4], 
		[39.5, -3.0], [39, -2], [37.0, -1.5], 
		[35, -1], [32.0, -0.5], [29, 0], 
		[24, 0], [22, 0], [21.0, 0.0], 
		[20, 0], [19, 0], [18, -1], 
		[17.5, -2.0],[17, -3], ]);
}}}

module GoblinOne_contour20x67_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, -4], [17, -5], [17.0, -6.0],steps,height);
	BezConic([17.0, -6.0], [17, -7], [18.5, -7.5],steps,height);
	BezConic([18.5, -7.5], [20, -8], [22.0, -8.5],steps,height);
	BezConic([22.0, -8.5], [24, -9], [27, -9],steps,height);
	BezConic([27, -9], [29, -9], [31.5, -9.0],steps,height);
	BezConic([31.5, -9.0], [34, -9], [36.0, -8.5],steps,height);
	BezConic([36.0, -8.5], [38, -8], [39.0, -7.0],steps,height);
	BezConic([39.0, -7.0], [40, -6], [40, -5],steps,height);
	BezConic([40, -5], [40, -4], [39.5, -3.0],steps,height);
	BezConic([39.5, -3.0], [39, -2], [37.0, -1.5],steps,height);
	BezConic([37.0, -1.5], [35, -1], [32.0, -0.5],steps,height);
	BezConic([32.0, -0.5], [29, 0], [24, 0],steps,height);
	BezConic([24, 0], [22, 0], [21.0, 0.0],steps,height);
	BezConic([21.0, 0.0], [20, 0], [19, 0],steps,height);
	BezConic([19, 0], [18, -1], [17.5, -2.0],steps,height);
	BezConic([17.5, -2.0], [17, -3], [17, -4],steps,height);
}
}

module GoblinOne_contour20x67_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour20x67(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour20x67_skeleton(height);
			GoblinOne_contour20x67_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x67_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x67(steps=2, height) {
	difference() {
		GoblinOne_contour00x67(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x67(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour20x67(steps, height);
	}
}

GoblinOne_bbox0x67=[[1, -15], [57, 40]];

module GoblinOne_letter0x67(steps=2, height) {
	GoblinOne_chunk10x67(steps, height);
} //end skeleton

module GoblinOne_contour00x68_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 25.0], [10, 42], 
		[6.0, 45.5], [2, 49], [13.5, 49.5], 
		[25, 50], [25.0, 39.0], [25, 28], 
		[27, 32], [30.5, 34.0], [34, 36], 
		[39, 36], [43, 36], [45.5, 35.0], 
		[48, 34], [50.0, 31.5], [52, 29], 
		[53.0, 26.0], [54, 23], [54, 18], 
		[54.0, 13.0], [54, 8], [58.5, 4.0], 
		[63, 0], [48.0, 0.0], [33, 0], 
		[36.0, 4.0], [39, 8], [39.0, 13.0], 
		[39, 18], [39, 20], [38.5, 21.5], 
		[38, 23], [37.5, 24.5], [37, 26], 
		[35.5, 26.5], [34, 27], [33, 27], 
		[31, 27], [29.5, 26.5], [28, 26], 
		[27.0, 24.5], [26, 23], [25.5, 21.0], 
		[25, 19], [25, 16], [25.0, 12.0], 
		[25, 8], [27.5, 4.0], [30, 0], 
		[15.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 25.0], [10, 42], 
		[6.0, 45.5], [2, 49], [13.5, 49.5], 
		[25, 50], [25.0, 39.0], [25, 28], 
		[27, 32], [30.5, 34.0], [34, 36], 
		[39, 36], [43, 36], [45.5, 35.0], 
		[48, 34], [50.0, 31.5], [52, 29], 
		[53.0, 26.0], [54, 23], [54, 18], 
		[54.0, 13.0], [54, 8], [58.5, 4.0], 
		[63, 0], [48.0, 0.0], [33, 0], 
		[36.0, 4.0], [39, 8], [39.0, 13.0], 
		[39, 18], [39, 20], [38.5, 21.5], 
		[38, 23], [37.5, 24.5], [37, 26], 
		[35.5, 26.5], [34, 27], [33, 27], 
		[31, 27], [29.5, 26.5], [28, 26], 
		[27.0, 24.5], [26, 23], [25.5, 21.0], 
		[25, 19], [25, 16], [25.0, 12.0], 
		[25, 8], [27.5, 4.0], [30, 0], 
		[15.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}}}

module GoblinOne_contour00x68_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([39, 18], [39, 20], [38.5, 21.5],steps,height);
	BezConic([38.5, 21.5], [38, 23], [37.5, 24.5],steps,height);
	BezConic([37.5, 24.5], [37, 26], [35.5, 26.5],steps,height);
	BezConic([35.5, 26.5], [34, 27], [33, 27],steps,height);
	BezConic([33, 27], [31, 27], [29.5, 26.5],steps,height);
	BezConic([29.5, 26.5], [28, 26], [27.0, 24.5],steps,height);
	BezConic([27.0, 24.5], [26, 23], [25.5, 21.0],steps,height);
	BezConic([25.5, 21.0], [25, 19], [25, 16],steps,height);
}
}

module GoblinOne_contour00x68_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 28], [27, 32], [30.5, 34.0],steps,height);
	BezConic([30.5, 34.0], [34, 36], [39, 36],steps,height);
	BezConic([39, 36], [43, 36], [45.5, 35.0],steps,height);
	BezConic([45.5, 35.0], [48, 34], [50.0, 31.5],steps,height);
	BezConic([50.0, 31.5], [52, 29], [53.0, 26.0],steps,height);
	BezConic([53.0, 26.0], [54, 23], [54, 18],steps,height);
}
}

module GoblinOne_contour00x68(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x68_skeleton(height);
			GoblinOne_contour00x68_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x68_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x68(steps=2, height) {
	difference() {
		GoblinOne_contour00x68(steps, height);
		
	}
}

GoblinOne_bbox0x68=[[1, 0], [63, 50]];

module GoblinOne_letter0x68(steps=2, height) {
	GoblinOne_chunk10x68(steps, height);
} //end skeleton

module GoblinOne_contour00x69_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, 39], [15, 39], [13.5, 39.5], 
		[12, 40], [10.5, 41.0], [9, 42], 
		[8.5, 43.5], [8, 45], [8, 47], 
		[8, 48], [8.5, 49.5], [9, 51], 
		[10.5, 52.5], [12, 54], [13.5, 54.5], 
		[15, 55], [16, 55], [18, 55], 
		[19.5, 54.5], [21, 54], [22.0, 52.5], 
		[23, 51], [23.5, 49.5], [24, 48], 
		[24, 47], [24, 45], [23.5, 43.5], 
		[23, 42], [22.0, 41.0], [21, 40], 
		[19.5, 39.5],[18, 39], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, 39], [15, 39], [13.5, 39.5], 
		[12, 40], [10.5, 41.0], [9, 42], 
		[8.5, 43.5], [8, 45], [8, 47], 
		[8, 48], [8.5, 49.5], [9, 51], 
		[10.5, 52.5], [12, 54], [13.5, 54.5], 
		[15, 55], [16, 55], [18, 55], 
		[19.5, 54.5], [21, 54], [22.0, 52.5], 
		[23, 51], [23.5, 49.5], [24, 48], 
		[24, 47], [24, 45], [23.5, 43.5], 
		[23, 42], [22.0, 41.0], [21, 40], 
		[19.5, 39.5],[18, 39], ]);
}}}

module GoblinOne_contour00x69_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x69_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, 39], [15, 39], [13.5, 39.5],steps,height);
	BezConic([13.5, 39.5], [12, 40], [10.5, 41.0],steps,height);
	BezConic([10.5, 41.0], [9, 42], [8.5, 43.5],steps,height);
	BezConic([8.5, 43.5], [8, 45], [8, 47],steps,height);
	BezConic([8, 47], [8, 48], [8.5, 49.5],steps,height);
	BezConic([8.5, 49.5], [9, 51], [10.5, 52.5],steps,height);
	BezConic([10.5, 52.5], [12, 54], [13.5, 54.5],steps,height);
	BezConic([13.5, 54.5], [15, 55], [16, 55],steps,height);
	BezConic([16, 55], [18, 55], [19.5, 54.5],steps,height);
	BezConic([19.5, 54.5], [21, 54], [22.0, 52.5],steps,height);
	BezConic([22.0, 52.5], [23, 51], [23.5, 49.5],steps,height);
	BezConic([23.5, 49.5], [24, 48], [24, 47],steps,height);
	BezConic([24, 47], [24, 45], [23.5, 43.5],steps,height);
	BezConic([23.5, 43.5], [23, 42], [22.0, 41.0],steps,height);
	BezConic([22.0, 41.0], [21, 40], [19.5, 39.5],steps,height);
	BezConic([19.5, 39.5], [18, 39], [16, 39],steps,height);
}
}

module GoblinOne_contour00x69(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x69_skeleton(height);
			GoblinOne_contour00x69_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x69_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x69_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 17.5], [10, 27], 
		[6.0, 30.5], [2, 34], [13.0, 34.5], 
		[24, 35], [24.0, 21.5], [24, 8], 
		[28.5, 4.0], [33, 0], [17.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 17.5], [10, 27], 
		[6.0, 30.5], [2, 34], [13.0, 34.5], 
		[24, 35], [24.0, 21.5], [24, 8], 
		[28.5, 4.0], [33, 0], [17.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}}}

module GoblinOne_contour10x69_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x69_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x69(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x69_skeleton(height);
			GoblinOne_contour10x69_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x69_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x69(steps=2, height) {
	difference() {
		GoblinOne_contour00x69(steps, height);
		
	}
}

module GoblinOne_chunk20x69(steps=2, height) {
	difference() {
		GoblinOne_contour10x69(steps, height);
		
	}
}

GoblinOne_bbox0x69=[[1, 0], [33, 55]];

module GoblinOne_letter0x69(steps=2, height) {
	GoblinOne_chunk10x69(steps, height);
	GoblinOne_chunk20x69(steps, height);
} //end skeleton

module GoblinOne_contour00x6a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 39], [17, 39], [15.5, 39.5], 
		[14, 40], [12.5, 41.0], [11, 42], 
		[10.5, 43.5], [10, 45], [10, 47], 
		[10, 48], [10.5, 49.5], [11, 51], 
		[12.5, 52.5], [14, 54], [15.5, 54.5], 
		[17, 55], [18, 55], [20, 55], 
		[21.5, 54.5], [23, 54], [24.0, 52.5], 
		[25, 51], [25.5, 49.5], [26, 48], 
		[26, 47], [26, 45], [25.5, 43.5], 
		[25, 42], [24.0, 41.0], [23, 40], 
		[21.5, 39.5],[20, 39], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 39], [17, 39], [15.5, 39.5], 
		[14, 40], [12.5, 41.0], [11, 42], 
		[10.5, 43.5], [10, 45], [10, 47], 
		[10, 48], [10.5, 49.5], [11, 51], 
		[12.5, 52.5], [14, 54], [15.5, 54.5], 
		[17, 55], [18, 55], [20, 55], 
		[21.5, 54.5], [23, 54], [24.0, 52.5], 
		[25, 51], [25.5, 49.5], [26, 48], 
		[26, 47], [26, 45], [25.5, 43.5], 
		[25, 42], [24.0, 41.0], [23, 40], 
		[21.5, 39.5],[20, 39], ]);
}}}

module GoblinOne_contour00x6a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x6a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 39], [17, 39], [15.5, 39.5],steps,height);
	BezConic([15.5, 39.5], [14, 40], [12.5, 41.0],steps,height);
	BezConic([12.5, 41.0], [11, 42], [10.5, 43.5],steps,height);
	BezConic([10.5, 43.5], [10, 45], [10, 47],steps,height);
	BezConic([10, 47], [10, 48], [10.5, 49.5],steps,height);
	BezConic([10.5, 49.5], [11, 51], [12.5, 52.5],steps,height);
	BezConic([12.5, 52.5], [14, 54], [15.5, 54.5],steps,height);
	BezConic([15.5, 54.5], [17, 55], [18, 55],steps,height);
	BezConic([18, 55], [20, 55], [21.5, 54.5],steps,height);
	BezConic([21.5, 54.5], [23, 54], [24.0, 52.5],steps,height);
	BezConic([24.0, 52.5], [25, 51], [25.5, 49.5],steps,height);
	BezConic([25.5, 49.5], [26, 48], [26, 47],steps,height);
	BezConic([26, 47], [26, 45], [25.5, 43.5],steps,height);
	BezConic([25.5, 43.5], [25, 42], [24.0, 41.0],steps,height);
	BezConic([24.0, 41.0], [23, 40], [21.5, 39.5],steps,height);
	BezConic([21.5, 39.5], [20, 39], [18, 39],steps,height);
}
}

module GoblinOne_contour00x6a(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x6a_skeleton(height);
			GoblinOne_contour00x6a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x6a_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x6a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[4, -2], [3, -3], [3, -4], 
		[3, -5], [3.5, -6.5], [4, -8], 
		[4.5, -8.5], [5, -9], [6.0, -9.5], 
		[7, -10], [8, -10], [9, -10], 
		[10.0, -9.5], [11, -9], [11.5, -7.5], 
		[12, -6], [12.0, -4.5], [12, -3], 
		[12, -1], [12.0, 13.0], [12, 27], 
		[8.0, 30.5], [4, 34], [15.5, 34.5], 
		[27, 35], [27.0, 16.5], [27, -2], 
		[27, -6], [25.5, -9.0], [24, -12], 
		[21.5, -13.5], [19, -15], [16.0, -16.0], 
		[13, -17], [9, -17], [7, -17], 
		[4.5, -16.0], [2, -15], [0.0, -14.0], 
		[-2, -13], [-3.0, -11.0], [-4, -9], 
		[-4, -6], [-4, -6], [-4.0, -5.5], 
		[-4, -5], [-4, -5], [0.0, -3.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[4, -2], [3, -3], [3, -4], 
		[3, -5], [3.5, -6.5], [4, -8], 
		[4.5, -8.5], [5, -9], [6.0, -9.5], 
		[7, -10], [8, -10], [9, -10], 
		[10.0, -9.5], [11, -9], [11.5, -7.5], 
		[12, -6], [12.0, -4.5], [12, -3], 
		[12, -1], [12.0, 13.0], [12, 27], 
		[8.0, 30.5], [4, 34], [15.5, 34.5], 
		[27, 35], [27.0, 16.5], [27, -2], 
		[27, -6], [25.5, -9.0], [24, -12], 
		[21.5, -13.5], [19, -15], [16.0, -16.0], 
		[13, -17], [9, -17], [7, -17], 
		[4.5, -16.0], [2, -15], [0.0, -14.0], 
		[-2, -13], [-3.0, -11.0], [-4, -9], 
		[-4, -6], [-4, -6], [-4.0, -5.5], 
		[-4, -5], [-4, -5], [0.0, -3.5], 
		 ]);
}}}

module GoblinOne_contour10x6a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, -2], [3, -3], [3, -4],steps,height);
	BezConic([3, -4], [3, -5], [3.5, -6.5],steps,height);
	BezConic([3.5, -6.5], [4, -8], [4.5, -8.5],steps,height);
	BezConic([4.5, -8.5], [5, -9], [6.0, -9.5],steps,height);
	BezConic([6.0, -9.5], [7, -10], [8, -10],steps,height);
	BezConic([8, -10], [9, -10], [10.0, -9.5],steps,height);
	BezConic([10.0, -9.5], [11, -9], [11.5, -7.5],steps,height);
	BezConic([11.5, -7.5], [12, -6], [12.0, -4.5],steps,height);
	BezConic([12.0, -4.5], [12, -3], [12, -1],steps,height);
	BezConic([-4, -6], [-4, -6], [-4.0, -5.5],steps,height);
	BezConic([-4.0, -5.5], [-4, -5], [-4, -5],steps,height);
}
}

module GoblinOne_contour10x6a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([27, -2], [27, -6], [25.5, -9.0],steps,height);
	BezConic([25.5, -9.0], [24, -12], [21.5, -13.5],steps,height);
	BezConic([21.5, -13.5], [19, -15], [16.0, -16.0],steps,height);
	BezConic([16.0, -16.0], [13, -17], [9, -17],steps,height);
	BezConic([9, -17], [7, -17], [4.5, -16.0],steps,height);
	BezConic([4.5, -16.0], [2, -15], [0.0, -14.0],steps,height);
	BezConic([0.0, -14.0], [-2, -13], [-3.0, -11.0],steps,height);
	BezConic([-3.0, -11.0], [-4, -9], [-4, -6],steps,height);
}
}

module GoblinOne_contour10x6a(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x6a_skeleton(height);
			GoblinOne_contour10x6a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x6a_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x6a(steps=2, height) {
	difference() {
		GoblinOne_contour00x6a(steps, height);
		
	}
}

module GoblinOne_chunk20x6a(steps=2, height) {
	difference() {
		GoblinOne_contour10x6a(steps, height);
		
	}
}

GoblinOne_bbox0x6a=[[-4, -17], [27, 55]];

module GoblinOne_letter0x6a(steps=2, height) {
	GoblinOne_chunk10x6a(steps, height);
	GoblinOne_chunk20x6a(steps, height);
} //end skeleton

module GoblinOne_contour00x6b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 25.0], [10, 42], 
		[6.0, 45.5], [2, 49], [13.0, 49.5], 
		[24, 50], [24.0, 34.5], [24, 19], 
		[30.0, 23.5], [36, 28], [33.5, 31.5], 
		[31, 35], [43.0, 35.0], [55, 35], 
		[46.5, 28.0], [38, 21], [45.5, 13.0], 
		[53, 5], [56.0, 2.5], [59, 0], 
		[45.5, 0.0], [32, 0], [33.5, 2.5], 
		[35, 5], [31.0, 9.0], [27, 13], 
		[25.5, 12.0], [24, 11], [24.0, 9.0], 
		[24, 7], [26.5, 3.5], [29, 0], 
		[15.0, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 25.0], [10, 42], 
		[6.0, 45.5], [2, 49], [13.0, 49.5], 
		[24, 50], [24.0, 34.5], [24, 19], 
		[30.0, 23.5], [36, 28], [33.5, 31.5], 
		[31, 35], [43.0, 35.0], [55, 35], 
		[46.5, 28.0], [38, 21], [45.5, 13.0], 
		[53, 5], [56.0, 2.5], [59, 0], 
		[45.5, 0.0], [32, 0], [33.5, 2.5], 
		[35, 5], [31.0, 9.0], [27, 13], 
		[25.5, 12.0], [24, 11], [24.0, 9.0], 
		[24, 7], [26.5, 3.5], [29, 0], 
		[15.0, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}}}

module GoblinOne_contour00x6b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x6b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x6b(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x6b_skeleton(height);
			GoblinOne_contour00x6b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x6b_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x6b(steps=2, height) {
	difference() {
		GoblinOne_contour00x6b(steps, height);
		
	}
}

GoblinOne_bbox0x6b=[[1, 0], [59, 50]];

module GoblinOne_letter0x6b(steps=2, height) {
	GoblinOne_chunk10x6b(steps, height);
} //end skeleton

module GoblinOne_contour00x6c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 25.0], [10, 42], 
		[6.0, 45.5], [2, 49], [13.0, 49.5], 
		[24, 50], [24.0, 29.0], [24, 8], 
		[28.5, 4.0], [33, 0], [17.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 25.0], [10, 42], 
		[6.0, 45.5], [2, 49], [13.0, 49.5], 
		[24, 50], [24.0, 29.0], [24, 8], 
		[28.5, 4.0], [33, 0], [17.0, 0.0], 
		[1, 0],[5.5, 4.0], ]);
}}}

module GoblinOne_contour00x6c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x6c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x6c(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x6c_skeleton(height);
			GoblinOne_contour00x6c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x6c_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x6c(steps=2, height) {
	difference() {
		GoblinOne_contour00x6c(steps, height);
		
	}
}

GoblinOne_bbox0x6c=[[1, 0], [33, 50]];

module GoblinOne_letter0x6c(steps=2, height) {
	GoblinOne_chunk10x6c(steps, height);
} //end skeleton

module GoblinOne_contour00x6d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 17.5], [10, 27], 
		[6.0, 30.5], [2, 34], [13.0, 34.5], 
		[24, 35], [24.0, 31.5], [24, 28], 
		[26, 32], [30.0, 34.0], [34, 36], 
		[38, 36], [44, 36], [47.0, 33.5], 
		[50, 31], [51, 27], [53, 31], 
		[57.0, 33.5], [61, 36], [66, 36], 
		[70, 36], [72.5, 35.0], [75, 34], 
		[76.5, 31.5], [78, 29], [79.0, 26.0], 
		[80, 23], [80, 18], [80.0, 13.0], 
		[80, 8], [80.0, 8.0], [80, 8], 
		[84.0, 4.0], [88, 0], [74.0, 0.0], 
		[60, 0], [63.0, 4.0], [66, 8], 
		[66.0, 13.0], [66, 18], [66, 20], 
		[65.5, 21.5], [65, 23], [64.5, 24.5], 
		[64, 26], [63.0, 26.5], [62, 27], 
		[60, 27], [57, 27], [55.0, 25.0], 
		[53, 23], [52, 20], [52, 19], 
		[52.0, 19.0], [52, 19], [52, 18], 
		[52.0, 13.0], [52, 8], [55.0, 4.0], 
		[58, 0], [45.0, 0.0], [32, 0], 
		[35.0, 4.0], [38, 8], [38.0, 13.0], 
		[38, 18], [38, 20], [37.5, 21.5], 
		[37, 23], [36.5, 24.5], [36, 26], 
		[35.0, 26.5], [34, 27], [32, 27], 
		[30, 27], [28.5, 26.5], [27, 26], 
		[26.0, 24.5], [25, 23], [24.5, 21.0], 
		[24, 19], [24, 16], [24.0, 12.0], 
		[24, 8], [27.0, 4.0], [30, 0], 
		[15.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 17.5], [10, 27], 
		[6.0, 30.5], [2, 34], [13.0, 34.5], 
		[24, 35], [24.0, 31.5], [24, 28], 
		[26, 32], [30.0, 34.0], [34, 36], 
		[38, 36], [44, 36], [47.0, 33.5], 
		[50, 31], [51, 27], [53, 31], 
		[57.0, 33.5], [61, 36], [66, 36], 
		[70, 36], [72.5, 35.0], [75, 34], 
		[76.5, 31.5], [78, 29], [79.0, 26.0], 
		[80, 23], [80, 18], [80.0, 13.0], 
		[80, 8], [80.0, 8.0], [80, 8], 
		[84.0, 4.0], [88, 0], [74.0, 0.0], 
		[60, 0], [63.0, 4.0], [66, 8], 
		[66.0, 13.0], [66, 18], [66, 20], 
		[65.5, 21.5], [65, 23], [64.5, 24.5], 
		[64, 26], [63.0, 26.5], [62, 27], 
		[60, 27], [57, 27], [55.0, 25.0], 
		[53, 23], [52, 20], [52, 19], 
		[52.0, 19.0], [52, 19], [52, 18], 
		[52.0, 13.0], [52, 8], [55.0, 4.0], 
		[58, 0], [45.0, 0.0], [32, 0], 
		[35.0, 4.0], [38, 8], [38.0, 13.0], 
		[38, 18], [38, 20], [37.5, 21.5], 
		[37, 23], [36.5, 24.5], [36, 26], 
		[35.0, 26.5], [34, 27], [32, 27], 
		[30, 27], [28.5, 26.5], [27, 26], 
		[26.0, 24.5], [25, 23], [24.5, 21.0], 
		[24, 19], [24, 16], [24.0, 12.0], 
		[24, 8], [27.0, 4.0], [30, 0], 
		[15.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}}}

module GoblinOne_contour00x6d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([66, 18], [66, 20], [65.5, 21.5],steps,height);
	BezConic([65.5, 21.5], [65, 23], [64.5, 24.5],steps,height);
	BezConic([64.5, 24.5], [64, 26], [63.0, 26.5],steps,height);
	BezConic([63.0, 26.5], [62, 27], [60, 27],steps,height);
	BezConic([60, 27], [57, 27], [55.0, 25.0],steps,height);
	BezConic([55.0, 25.0], [53, 23], [52, 20],steps,height);
	BezConic([52, 20], [52, 19], [52.0, 19.0],steps,height);
	BezConic([38, 18], [38, 20], [37.5, 21.5],steps,height);
	BezConic([36.5, 24.5], [36, 26], [35.0, 26.5],steps,height);
	BezConic([35.0, 26.5], [34, 27], [32, 27],steps,height);
	BezConic([32, 27], [30, 27], [28.5, 26.5],steps,height);
	BezConic([28.5, 26.5], [27, 26], [26.0, 24.5],steps,height);
	BezConic([26.0, 24.5], [25, 23], [24.5, 21.0],steps,height);
	BezConic([24.5, 21.0], [24, 19], [24, 16],steps,height);
}
}

module GoblinOne_contour00x6d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 28], [26, 32], [30.0, 34.0],steps,height);
	BezConic([30.0, 34.0], [34, 36], [38, 36],steps,height);
	BezConic([38, 36], [44, 36], [47.0, 33.5],steps,height);
	BezConic([47.0, 33.5], [50, 31], [51, 27],steps,height);
	BezConic([51, 27], [53, 31], [57.0, 33.5],steps,height);
	BezConic([57.0, 33.5], [61, 36], [66, 36],steps,height);
	BezConic([66, 36], [70, 36], [72.5, 35.0],steps,height);
	BezConic([72.5, 35.0], [75, 34], [76.5, 31.5],steps,height);
	BezConic([76.5, 31.5], [78, 29], [79.0, 26.0],steps,height);
	BezConic([79.0, 26.0], [80, 23], [80, 18],steps,height);
	BezConic([52.0, 19.0], [52, 19], [52, 18],steps,height);
	BezConic([37.5, 21.5], [37, 23], [36.5, 24.5],steps,height);
}
}

module GoblinOne_contour00x6d(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x6d_skeleton(height);
			GoblinOne_contour00x6d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x6d_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x6d(steps=2, height) {
	difference() {
		GoblinOne_contour00x6d(steps, height);
		
	}
}

GoblinOne_bbox0x6d=[[1, 0], [88, 36]];

module GoblinOne_letter0x6d(steps=2, height) {
	GoblinOne_chunk10x6d(steps, height);
} //end skeleton

module GoblinOne_contour00x6e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 17.5], [10, 27], 
		[6.0, 30.5], [2, 34], [13.5, 34.5], 
		[25, 35], [25.0, 31.5], [25, 28], 
		[27, 32], [30.5, 34.0], [34, 36], 
		[39, 36], [43, 36], [45.5, 35.0], 
		[48, 34], [50.0, 31.5], [52, 29], 
		[53.0, 26.0], [54, 23], [54, 18], 
		[54.0, 13.0], [54, 8], [58.5, 4.0], 
		[63, 0], [48.0, 0.0], [33, 0], 
		[36.0, 4.0], [39, 8], [39.0, 13.0], 
		[39, 18], [39, 20], [38.5, 21.5], 
		[38, 23], [37.5, 24.5], [37, 26], 
		[35.5, 26.5], [34, 27], [33, 27], 
		[31, 27], [29.5, 26.5], [28, 26], 
		[27.0, 24.5], [26, 23], [25.5, 21.0], 
		[25, 19], [25, 16], [25.0, 12.0], 
		[25, 8], [27.5, 4.0], [30, 0], 
		[15.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 17.5], [10, 27], 
		[6.0, 30.5], [2, 34], [13.5, 34.5], 
		[25, 35], [25.0, 31.5], [25, 28], 
		[27, 32], [30.5, 34.0], [34, 36], 
		[39, 36], [43, 36], [45.5, 35.0], 
		[48, 34], [50.0, 31.5], [52, 29], 
		[53.0, 26.0], [54, 23], [54, 18], 
		[54.0, 13.0], [54, 8], [58.5, 4.0], 
		[63, 0], [48.0, 0.0], [33, 0], 
		[36.0, 4.0], [39, 8], [39.0, 13.0], 
		[39, 18], [39, 20], [38.5, 21.5], 
		[38, 23], [37.5, 24.5], [37, 26], 
		[35.5, 26.5], [34, 27], [33, 27], 
		[31, 27], [29.5, 26.5], [28, 26], 
		[27.0, 24.5], [26, 23], [25.5, 21.0], 
		[25, 19], [25, 16], [25.0, 12.0], 
		[25, 8], [27.5, 4.0], [30, 0], 
		[15.5, 0.0], [1, 0], [5.5, 4.0], 
		 ]);
}}}

module GoblinOne_contour00x6e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([39, 18], [39, 20], [38.5, 21.5],steps,height);
	BezConic([38.5, 21.5], [38, 23], [37.5, 24.5],steps,height);
	BezConic([37.5, 24.5], [37, 26], [35.5, 26.5],steps,height);
	BezConic([35.5, 26.5], [34, 27], [33, 27],steps,height);
	BezConic([33, 27], [31, 27], [29.5, 26.5],steps,height);
	BezConic([29.5, 26.5], [28, 26], [27.0, 24.5],steps,height);
	BezConic([27.0, 24.5], [26, 23], [25.5, 21.0],steps,height);
	BezConic([25.5, 21.0], [25, 19], [25, 16],steps,height);
}
}

module GoblinOne_contour00x6e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 28], [27, 32], [30.5, 34.0],steps,height);
	BezConic([30.5, 34.0], [34, 36], [39, 36],steps,height);
	BezConic([39, 36], [43, 36], [45.5, 35.0],steps,height);
	BezConic([45.5, 35.0], [48, 34], [50.0, 31.5],steps,height);
	BezConic([50.0, 31.5], [52, 29], [53.0, 26.0],steps,height);
	BezConic([53.0, 26.0], [54, 23], [54, 18],steps,height);
}
}

module GoblinOne_contour00x6e(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x6e_skeleton(height);
			GoblinOne_contour00x6e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x6e_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x6e(steps=2, height) {
	difference() {
		GoblinOne_contour00x6e(steps, height);
		
	}
}

GoblinOne_bbox0x6e=[[1, 0], [63, 36]];

module GoblinOne_letter0x6e(steps=2, height) {
	GoblinOne_chunk10x6e(steps, height);
} //end skeleton

module GoblinOne_contour00x6f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 17], [3, 22], [5.0, 25.5], 
		[7, 29], [10.5, 31.5], [14, 34], 
		[18.5, 35.0], [23, 36], [29, 36], 
		[34, 36], [39.0, 35.0], [44, 34], 
		[47.5, 31.5], [51, 29], [53.0, 25.5], 
		[55, 22], [55, 17], [55, 12], 
		[53.0, 8.5], [51, 5], [47.5, 3.0], 
		[44, 1], [39.0, 0.0], [34, -1], 
		[29, -1], [23, -1], [18.5, 0.0], 
		[14, 1], [10.5, 3.0], [7, 5], 
		[5.0, 8.5],[3, 12], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 17], [3, 22], [5.0, 25.5], 
		[7, 29], [10.5, 31.5], [14, 34], 
		[18.5, 35.0], [23, 36], [29, 36], 
		[34, 36], [39.0, 35.0], [44, 34], 
		[47.5, 31.5], [51, 29], [53.0, 25.5], 
		[55, 22], [55, 17], [55, 12], 
		[53.0, 8.5], [51, 5], [47.5, 3.0], 
		[44, 1], [39.0, 0.0], [34, -1], 
		[29, -1], [23, -1], [18.5, 0.0], 
		[14, 1], [10.5, 3.0], [7, 5], 
		[5.0, 8.5],[3, 12], ]);
}}}

module GoblinOne_contour00x6f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x6f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 17], [3, 22], [5.0, 25.5],steps,height);
	BezConic([5.0, 25.5], [7, 29], [10.5, 31.5],steps,height);
	BezConic([10.5, 31.5], [14, 34], [18.5, 35.0],steps,height);
	BezConic([18.5, 35.0], [23, 36], [29, 36],steps,height);
	BezConic([29, 36], [34, 36], [39.0, 35.0],steps,height);
	BezConic([39.0, 35.0], [44, 34], [47.5, 31.5],steps,height);
	BezConic([47.5, 31.5], [51, 29], [53.0, 25.5],steps,height);
	BezConic([53.0, 25.5], [55, 22], [55, 17],steps,height);
	BezConic([55, 17], [55, 12], [53.0, 8.5],steps,height);
	BezConic([53.0, 8.5], [51, 5], [47.5, 3.0],steps,height);
	BezConic([47.5, 3.0], [44, 1], [39.0, 0.0],steps,height);
	BezConic([39.0, 0.0], [34, -1], [29, -1],steps,height);
	BezConic([29, -1], [23, -1], [18.5, 0.0],steps,height);
	BezConic([18.5, 0.0], [14, 1], [10.5, 3.0],steps,height);
	BezConic([10.5, 3.0], [7, 5], [5.0, 8.5],steps,height);
	BezConic([5.0, 8.5], [3, 12], [3, 17],steps,height);
}
}

module GoblinOne_contour00x6f(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x6f_skeleton(height);
			GoblinOne_contour00x6f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x6f_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x6f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[20, 17], [20, 14], [20.5, 12.0], 
		[21, 10], [22.5, 8.0], [24, 6], 
		[25.5, 5.5], [27, 5], [29, 5], 
		[31, 5], [32.5, 5.5], [34, 6], 
		[35.5, 8.0], [37, 10], [37.5, 12.0], 
		[38, 14], [38, 17], [38, 20], 
		[37.5, 22.5], [37, 25], [35.5, 26.5], 
		[34, 28], [32.5, 29.0], [31, 30], 
		[29, 30], [27, 30], [25.5, 29.0], 
		[24, 28], [22.5, 26.5], [21, 25], 
		[20.5, 22.5],[20, 20], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[20, 17], [20, 14], [20.5, 12.0], 
		[21, 10], [22.5, 8.0], [24, 6], 
		[25.5, 5.5], [27, 5], [29, 5], 
		[31, 5], [32.5, 5.5], [34, 6], 
		[35.5, 8.0], [37, 10], [37.5, 12.0], 
		[38, 14], [38, 17], [38, 20], 
		[37.5, 22.5], [37, 25], [35.5, 26.5], 
		[34, 28], [32.5, 29.0], [31, 30], 
		[29, 30], [27, 30], [25.5, 29.0], 
		[24, 28], [22.5, 26.5], [21, 25], 
		[20.5, 22.5],[20, 20], ]);
}}}

module GoblinOne_contour10x6f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 17], [20, 14], [20.5, 12.0],steps,height);
	BezConic([20.5, 12.0], [21, 10], [22.5, 8.0],steps,height);
	BezConic([22.5, 8.0], [24, 6], [25.5, 5.5],steps,height);
	BezConic([25.5, 5.5], [27, 5], [29, 5],steps,height);
	BezConic([29, 5], [31, 5], [32.5, 5.5],steps,height);
	BezConic([32.5, 5.5], [34, 6], [35.5, 8.0],steps,height);
	BezConic([35.5, 8.0], [37, 10], [37.5, 12.0],steps,height);
	BezConic([37.5, 12.0], [38, 14], [38, 17],steps,height);
	BezConic([38, 17], [38, 20], [37.5, 22.5],steps,height);
	BezConic([37.5, 22.5], [37, 25], [35.5, 26.5],steps,height);
	BezConic([35.5, 26.5], [34, 28], [32.5, 29.0],steps,height);
	BezConic([32.5, 29.0], [31, 30], [29, 30],steps,height);
	BezConic([29, 30], [27, 30], [25.5, 29.0],steps,height);
	BezConic([25.5, 29.0], [24, 28], [22.5, 26.5],steps,height);
	BezConic([22.5, 26.5], [21, 25], [20.5, 22.5],steps,height);
	BezConic([20.5, 22.5], [20, 20], [20, 17],steps,height);
}
}

module GoblinOne_contour10x6f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x6f(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x6f_skeleton(height);
			GoblinOne_contour10x6f_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x6f_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x6f(steps=2, height) {
	difference() {
		GoblinOne_contour00x6f(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x6f(steps, height);
	}
}

GoblinOne_bbox0x6f=[[3, -1], [55, 36]];

module GoblinOne_letter0x6f(steps=2, height) {
	GoblinOne_chunk10x6f(steps, height);
} //end skeleton

module GoblinOne_contour00x70_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 26], [5.5, 30.0], [1, 34], 
		[13.0, 34.5], [25, 35], [25.0, 32.0], 
		[25, 29], [27, 32], [30.5, 34.0], 
		[34, 36], [39, 36], [43, 36], 
		[47.0, 34.5], [51, 33], [53.5, 30.5], 
		[56, 28], [57.0, 24.5], [58, 21], 
		[58, 17], [58, 13], [57.0, 10.0], 
		[56, 7], [53.5, 4.5], [51, 2], 
		[47.5, 0.5], [44, -1], [39, -1], 
		[34, -1], [30.5, 0.5], [27, 2], 
		[25, 6], [25.0, 0.0], [25, -6], 
		[30.5, -10.0], [36, -14], [18.5, -14.0], 
		[1, -14], [5.5, -10.0], [10, -6], 
		[10.0, 10.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 26], [5.5, 30.0], [1, 34], 
		[13.0, 34.5], [25, 35], [25.0, 32.0], 
		[25, 29], [27, 32], [30.5, 34.0], 
		[34, 36], [39, 36], [43, 36], 
		[47.0, 34.5], [51, 33], [53.5, 30.5], 
		[56, 28], [57.0, 24.5], [58, 21], 
		[58, 17], [58, 13], [57.0, 10.0], 
		[56, 7], [53.5, 4.5], [51, 2], 
		[47.5, 0.5], [44, -1], [39, -1], 
		[34, -1], [30.5, 0.5], [27, 2], 
		[25, 6], [25.0, 0.0], [25, -6], 
		[30.5, -10.0], [36, -14], [18.5, -14.0], 
		[1, -14], [5.5, -10.0], [10, -6], 
		[10.0, 10.0], ]);
}}}

module GoblinOne_contour00x70_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x70_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 29], [27, 32], [30.5, 34.0],steps,height);
	BezConic([30.5, 34.0], [34, 36], [39, 36],steps,height);
	BezConic([39, 36], [43, 36], [47.0, 34.5],steps,height);
	BezConic([47.0, 34.5], [51, 33], [53.5, 30.5],steps,height);
	BezConic([53.5, 30.5], [56, 28], [57.0, 24.5],steps,height);
	BezConic([57.0, 24.5], [58, 21], [58, 17],steps,height);
	BezConic([58, 17], [58, 13], [57.0, 10.0],steps,height);
	BezConic([57.0, 10.0], [56, 7], [53.5, 4.5],steps,height);
	BezConic([53.5, 4.5], [51, 2], [47.5, 0.5],steps,height);
	BezConic([47.5, 0.5], [44, -1], [39, -1],steps,height);
	BezConic([39, -1], [34, -1], [30.5, 0.5],steps,height);
	BezConic([30.5, 0.5], [27, 2], [25, 6],steps,height);
}
}

module GoblinOne_contour00x70(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x70_skeleton(height);
			GoblinOne_contour00x70_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x70_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x70_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, 17], [25, 14], [25.5, 12.5], 
		[26, 11], [27.5, 9.5], [29, 8], 
		[30.5, 7.5], [32, 7], [33, 7], 
		[35, 7], [36.5, 7.5], [38, 8], 
		[39.5, 9.5], [41, 11], [41.5, 13.0], 
		[42, 15], [42, 17], [42, 20], 
		[41.5, 22.0], [41, 24], [39.5, 25.5], 
		[38, 27], [36.5, 27.5], [35, 28], 
		[33, 28], [32, 28], [30.5, 27.5], 
		[29, 27], [27.5, 25.5], [26, 24], 
		[25.5, 22.0],[25, 20], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, 17], [25, 14], [25.5, 12.5], 
		[26, 11], [27.5, 9.5], [29, 8], 
		[30.5, 7.5], [32, 7], [33, 7], 
		[35, 7], [36.5, 7.5], [38, 8], 
		[39.5, 9.5], [41, 11], [41.5, 13.0], 
		[42, 15], [42, 17], [42, 20], 
		[41.5, 22.0], [41, 24], [39.5, 25.5], 
		[38, 27], [36.5, 27.5], [35, 28], 
		[33, 28], [32, 28], [30.5, 27.5], 
		[29, 27], [27.5, 25.5], [26, 24], 
		[25.5, 22.0],[25, 20], ]);
}}}

module GoblinOne_contour10x70_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 17], [25, 14], [25.5, 12.5],steps,height);
	BezConic([25.5, 12.5], [26, 11], [27.5, 9.5],steps,height);
	BezConic([27.5, 9.5], [29, 8], [30.5, 7.5],steps,height);
	BezConic([30.5, 7.5], [32, 7], [33, 7],steps,height);
	BezConic([33, 7], [35, 7], [36.5, 7.5],steps,height);
	BezConic([36.5, 7.5], [38, 8], [39.5, 9.5],steps,height);
	BezConic([39.5, 9.5], [41, 11], [41.5, 13.0],steps,height);
	BezConic([41.5, 13.0], [42, 15], [42, 17],steps,height);
	BezConic([42, 17], [42, 20], [41.5, 22.0],steps,height);
	BezConic([41.5, 22.0], [41, 24], [39.5, 25.5],steps,height);
	BezConic([39.5, 25.5], [38, 27], [36.5, 27.5],steps,height);
	BezConic([36.5, 27.5], [35, 28], [33, 28],steps,height);
	BezConic([33, 28], [32, 28], [30.5, 27.5],steps,height);
	BezConic([30.5, 27.5], [29, 27], [27.5, 25.5],steps,height);
	BezConic([27.5, 25.5], [26, 24], [25.5, 22.0],steps,height);
	BezConic([25.5, 22.0], [25, 20], [25, 17],steps,height);
}
}

module GoblinOne_contour10x70_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x70(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x70_skeleton(height);
			GoblinOne_contour10x70_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x70_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x70(steps=2, height) {
	difference() {
		GoblinOne_contour00x70(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x70(steps, height);
	}
}

GoblinOne_bbox0x70=[[1, -14], [58, 36]];

module GoblinOne_letter0x70(steps=2, height) {
	GoblinOne_chunk10x70(steps, height);
} //end skeleton

module GoblinOne_contour00x71_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 17], [3, 22], [4.5, 25.5], 
		[6, 29], [9.0, 31.0], [12, 33], 
		[15.5, 34.5], [19, 36], [23, 36], 
		[26, 36], [28.5, 35.5], [31, 35], 
		[33.0, 34.0], [35, 33], [37.0, 31.5], 
		[39, 30], [40, 27], [46.0, 31.0], 
		[52, 35], [52.0, 14.5], [52, -6], 
		[56.0, -10.0], [60, -14], [42.5, -14.0], 
		[25, -14], [31.0, -10.0], [37, -6], 
		[37.0, 0.0], [37, 6], [36, 4], 
		[34.5, 2.5], [33, 1], [31.0, 0.5], 
		[29, 0], [27.0, -0.5], [25, -1], 
		[23, -1], [18, -1], [14.0, 0.5], 
		[10, 2], [7.5, 4.5], [5, 7], 
		[4.0, 10.0],[3, 13], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 17], [3, 22], [4.5, 25.5], 
		[6, 29], [9.0, 31.0], [12, 33], 
		[15.5, 34.5], [19, 36], [23, 36], 
		[26, 36], [28.5, 35.5], [31, 35], 
		[33.0, 34.0], [35, 33], [37.0, 31.5], 
		[39, 30], [40, 27], [46.0, 31.0], 
		[52, 35], [52.0, 14.5], [52, -6], 
		[56.0, -10.0], [60, -14], [42.5, -14.0], 
		[25, -14], [31.0, -10.0], [37, -6], 
		[37.0, 0.0], [37, 6], [36, 4], 
		[34.5, 2.5], [33, 1], [31.0, 0.5], 
		[29, 0], [27.0, -0.5], [25, -1], 
		[23, -1], [18, -1], [14.0, 0.5], 
		[10, 2], [7.5, 4.5], [5, 7], 
		[4.0, 10.0],[3, 13], ]);
}}}

module GoblinOne_contour00x71_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31.0, 0.5], [29, 0], [27.0, -0.5],steps,height);
}
}

module GoblinOne_contour00x71_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 17], [3, 22], [4.5, 25.5],steps,height);
	BezConic([4.5, 25.5], [6, 29], [9.0, 31.0],steps,height);
	BezConic([9.0, 31.0], [12, 33], [15.5, 34.5],steps,height);
	BezConic([15.5, 34.5], [19, 36], [23, 36],steps,height);
	BezConic([23, 36], [26, 36], [28.5, 35.5],steps,height);
	BezConic([28.5, 35.5], [31, 35], [33.0, 34.0],steps,height);
	BezConic([33.0, 34.0], [35, 33], [37.0, 31.5],steps,height);
	BezConic([37.0, 31.5], [39, 30], [40, 27],steps,height);
	BezConic([37, 6], [36, 4], [34.5, 2.5],steps,height);
	BezConic([34.5, 2.5], [33, 1], [31.0, 0.5],steps,height);
	BezConic([27.0, -0.5], [25, -1], [23, -1],steps,height);
	BezConic([23, -1], [18, -1], [14.0, 0.5],steps,height);
	BezConic([14.0, 0.5], [10, 2], [7.5, 4.5],steps,height);
	BezConic([7.5, 4.5], [5, 7], [4.0, 10.0],steps,height);
	BezConic([4.0, 10.0], [3, 13], [3, 17],steps,height);
}
}

module GoblinOne_contour00x71(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x71_skeleton(height);
			GoblinOne_contour00x71_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x71_subtractive_curves(steps, height);
	}
}

module GoblinOne_contour10x71_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[20, 17], [20, 15], [20.5, 13.0], 
		[21, 11], [22.0, 9.5], [23, 8], 
		[24.5, 7.5], [26, 7], [28, 7], 
		[30, 7], [31.5, 7.5], [33, 8], 
		[34.0, 9.5], [35, 11], [36.0, 12.5], 
		[37, 14], [37, 17], [37, 20], 
		[36.0, 22.0], [35, 24], [34.0, 25.5], 
		[33, 27], [31.5, 27.5], [30, 28], 
		[28, 28], [26, 28], [24.5, 27.5], 
		[23, 27], [22.0, 25.5], [21, 24], 
		[20.5, 22.0],[20, 20], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[20, 17], [20, 15], [20.5, 13.0], 
		[21, 11], [22.0, 9.5], [23, 8], 
		[24.5, 7.5], [26, 7], [28, 7], 
		[30, 7], [31.5, 7.5], [33, 8], 
		[34.0, 9.5], [35, 11], [36.0, 12.5], 
		[37, 14], [37, 17], [37, 20], 
		[36.0, 22.0], [35, 24], [34.0, 25.5], 
		[33, 27], [31.5, 27.5], [30, 28], 
		[28, 28], [26, 28], [24.5, 27.5], 
		[23, 27], [22.0, 25.5], [21, 24], 
		[20.5, 22.0],[20, 20], ]);
}}}

module GoblinOne_contour10x71_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 17], [20, 15], [20.5, 13.0],steps,height);
	BezConic([20.5, 13.0], [21, 11], [22.0, 9.5],steps,height);
	BezConic([22.0, 9.5], [23, 8], [24.5, 7.5],steps,height);
	BezConic([24.5, 7.5], [26, 7], [28, 7],steps,height);
	BezConic([28, 7], [30, 7], [31.5, 7.5],steps,height);
	BezConic([31.5, 7.5], [33, 8], [34.0, 9.5],steps,height);
	BezConic([34.0, 9.5], [35, 11], [36.0, 12.5],steps,height);
	BezConic([36.0, 12.5], [37, 14], [37, 17],steps,height);
	BezConic([37, 17], [37, 20], [36.0, 22.0],steps,height);
	BezConic([36.0, 22.0], [35, 24], [34.0, 25.5],steps,height);
	BezConic([34.0, 25.5], [33, 27], [31.5, 27.5],steps,height);
	BezConic([31.5, 27.5], [30, 28], [28, 28],steps,height);
	BezConic([28, 28], [26, 28], [24.5, 27.5],steps,height);
	BezConic([24.5, 27.5], [23, 27], [22.0, 25.5],steps,height);
	BezConic([22.0, 25.5], [21, 24], [20.5, 22.0],steps,height);
	BezConic([20.5, 22.0], [20, 20], [20, 17],steps,height);
}
}

module GoblinOne_contour10x71_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour10x71(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour10x71_skeleton(height);
			GoblinOne_contour10x71_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x71_additive_curves(steps, height);
	}
}

module GoblinOne_chunk10x71(steps=2, height) {
	difference() {
		GoblinOne_contour00x71(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour10x71(steps, height);
	}
}

GoblinOne_bbox0x71=[[3, -14], [60, 36]];

module GoblinOne_letter0x71(steps=2, height) {
	GoblinOne_chunk10x71(steps, height);
} //end skeleton

module GoblinOne_contour00x72_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 8], [10.0, 17.5], [10, 27], 
		[6.0, 30.5], [2, 34], [13.5, 34.5], 
		[25, 35], [25.0, 31.5], [25, 28], 
		[26, 30], [27.5, 31.5], [29, 33], 
		[31.0, 34.0], [33, 35], [35.0, 35.5], 
		[37, 36], [38, 36], [41, 36], 
		[43.0, 35.0], [45, 34], [46.0, 32.5], 
		[47, 31], [47.5, 29.0], [48, 27], 
		[48, 24], [48, 23], [48.0, 22.5], 
		[48, 22], [48, 21], [42.5, 20.5], 
		[37, 20], [37, 20], [37.0, 20.5], 
		[37, 21], [37, 22], [37, 23], 
		[36.5, 24.0], [36, 25], [35.5, 26.0], 
		[35, 27], [34.0, 27.0], [33, 27], 
		[32, 27], [31, 27], [30.0, 26.5], 
		[29, 26], [28.0, 25.5], [27, 25], 
		[26.5, 23.5], [26, 22], [25.5, 21.0], 
		[25, 20], [25.0, 19.0], [25, 18], 
		[25, 17], [25.0, 12.5], [25, 8], 
		[30.5, 4.0], [36, 0], [19.0, 0.0], 
		[2, 0],[6.0, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 8], [10.0, 17.5], [10, 27], 
		[6.0, 30.5], [2, 34], [13.5, 34.5], 
		[25, 35], [25.0, 31.5], [25, 28], 
		[26, 30], [27.5, 31.5], [29, 33], 
		[31.0, 34.0], [33, 35], [35.0, 35.5], 
		[37, 36], [38, 36], [41, 36], 
		[43.0, 35.0], [45, 34], [46.0, 32.5], 
		[47, 31], [47.5, 29.0], [48, 27], 
		[48, 24], [48, 23], [48.0, 22.5], 
		[48, 22], [48, 21], [42.5, 20.5], 
		[37, 20], [37, 20], [37.0, 20.5], 
		[37, 21], [37, 22], [37, 23], 
		[36.5, 24.0], [36, 25], [35.5, 26.0], 
		[35, 27], [34.0, 27.0], [33, 27], 
		[32, 27], [31, 27], [30.0, 26.5], 
		[29, 26], [28.0, 25.5], [27, 25], 
		[26.5, 23.5], [26, 22], [25.5, 21.0], 
		[25, 20], [25.0, 19.0], [25, 18], 
		[25, 17], [25.0, 12.5], [25, 8], 
		[30.5, 4.0], [36, 0], [19.0, 0.0], 
		[2, 0],[6.0, 4.0], ]);
}}}

module GoblinOne_contour00x72_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([48, 24], [48, 23], [48.0, 22.5],steps,height);
	BezConic([48.0, 22.5], [48, 22], [48, 21],steps,height);
	BezConic([37, 20], [37, 20], [37.0, 20.5],steps,height);
	BezConic([37.0, 20.5], [37, 21], [37, 22],steps,height);
	BezConic([37, 22], [37, 23], [36.5, 24.0],steps,height);
	BezConic([36.5, 24.0], [36, 25], [35.5, 26.0],steps,height);
	BezConic([35.5, 26.0], [35, 27], [34.0, 27.0],steps,height);
	BezConic([34.0, 27.0], [33, 27], [32, 27],steps,height);
	BezConic([32, 27], [31, 27], [30.0, 26.5],steps,height);
	BezConic([28.0, 25.5], [27, 25], [26.5, 23.5],steps,height);
	BezConic([25.5, 21.0], [25, 20], [25.0, 19.0],steps,height);
	BezConic([25.0, 19.0], [25, 18], [25, 17],steps,height);
}
}

module GoblinOne_contour00x72_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 28], [26, 30], [27.5, 31.5],steps,height);
	BezConic([27.5, 31.5], [29, 33], [31.0, 34.0],steps,height);
	BezConic([31.0, 34.0], [33, 35], [35.0, 35.5],steps,height);
	BezConic([35.0, 35.5], [37, 36], [38, 36],steps,height);
	BezConic([38, 36], [41, 36], [43.0, 35.0],steps,height);
	BezConic([43.0, 35.0], [45, 34], [46.0, 32.5],steps,height);
	BezConic([46.0, 32.5], [47, 31], [47.5, 29.0],steps,height);
	BezConic([47.5, 29.0], [48, 27], [48, 24],steps,height);
	BezConic([30.0, 26.5], [29, 26], [28.0, 25.5],steps,height);
	BezConic([26.5, 23.5], [26, 22], [25.5, 21.0],steps,height);
}
}

module GoblinOne_contour00x72(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x72_skeleton(height);
			GoblinOne_contour00x72_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x72_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x72(steps=2, height) {
	difference() {
		GoblinOne_contour00x72(steps, height);
		
	}
}

GoblinOne_bbox0x72=[[2, 0], [48, 36]];

module GoblinOne_letter0x72(steps=2, height) {
	GoblinOne_chunk10x72(steps, height);
} //end skeleton

module GoblinOne_contour00x73_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 13], [8, 11], [10.5, 10.0], 
		[13, 9], [16.0, 8.0], [19, 7], 
		[22.0, 6.0], [25, 5], [29, 5], 
		[30, 5], [31.0, 5.5], [32, 6], 
		[33.0, 6.0], [34, 6], [34.5, 7.0], 
		[35, 8], [35, 8], [35, 9], 
		[34.5, 9.5], [34, 10], [33.0, 10.5], 
		[32, 11], [29.5, 11.5], [27, 12], 
		[24, 12], [22, 12], [19.5, 12.5], 
		[17, 13], [15.0, 13.5], [13, 14], 
		[11.0, 14.5], [9, 15], [7.5, 16.5], 
		[6, 18], [5.0, 19.5], [4, 21], 
		[4, 24], [4, 27], [5.5, 29.0], 
		[7, 31], [9.5, 32.5], [12, 34], 
		[15.5, 35.0], [19, 36], [22, 36], 
		[26, 36], [30.0, 35.0], [34, 34], 
		[38, 32], [42.0, 34.0], [46, 36], 
		[46.0, 29.5], [46, 23], [43, 25], 
		[40.5, 26.0], [38, 27], [35.0, 28.0], 
		[32, 29], [29.5, 29.0], [27, 29], 
		[25, 29], [23, 29], [22.0, 29.0], 
		[21, 29], [20.0, 28.5], [19, 28], 
		[18.5, 27.5], [18, 27], [18, 27], 
		[18, 26], [18.5, 25.5], [19, 25], 
		[20.0, 25.0], [21, 25], [23.5, 24.5], 
		[26, 24], [30, 23], [34, 23], 
		[37.0, 22.5], [40, 22], [43.0, 20.5], 
		[46, 19], [47.5, 17.0], [49, 15], 
		[49, 12], [49, 9], [48.0, 7.5], 
		[47, 6], [45.5, 4.5], [44, 3], 
		[42.5, 2.0], [41, 1], [38.5, 0.0], 
		[36, -1], [34.0, -1.0], [32, -1], 
		[30, -1], [26, -1], [22.0, 0.0], 
		[18, 1], [14, 3], [10.0, 1.0], 
		[6, -1],[6.0, 6.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 13], [8, 11], [10.5, 10.0], 
		[13, 9], [16.0, 8.0], [19, 7], 
		[22.0, 6.0], [25, 5], [29, 5], 
		[30, 5], [31.0, 5.5], [32, 6], 
		[33.0, 6.0], [34, 6], [34.5, 7.0], 
		[35, 8], [35, 8], [35, 9], 
		[34.5, 9.5], [34, 10], [33.0, 10.5], 
		[32, 11], [29.5, 11.5], [27, 12], 
		[24, 12], [22, 12], [19.5, 12.5], 
		[17, 13], [15.0, 13.5], [13, 14], 
		[11.0, 14.5], [9, 15], [7.5, 16.5], 
		[6, 18], [5.0, 19.5], [4, 21], 
		[4, 24], [4, 27], [5.5, 29.0], 
		[7, 31], [9.5, 32.5], [12, 34], 
		[15.5, 35.0], [19, 36], [22, 36], 
		[26, 36], [30.0, 35.0], [34, 34], 
		[38, 32], [42.0, 34.0], [46, 36], 
		[46.0, 29.5], [46, 23], [43, 25], 
		[40.5, 26.0], [38, 27], [35.0, 28.0], 
		[32, 29], [29.5, 29.0], [27, 29], 
		[25, 29], [23, 29], [22.0, 29.0], 
		[21, 29], [20.0, 28.5], [19, 28], 
		[18.5, 27.5], [18, 27], [18, 27], 
		[18, 26], [18.5, 25.5], [19, 25], 
		[20.0, 25.0], [21, 25], [23.5, 24.5], 
		[26, 24], [30, 23], [34, 23], 
		[37.0, 22.5], [40, 22], [43.0, 20.5], 
		[46, 19], [47.5, 17.0], [49, 15], 
		[49, 12], [49, 9], [48.0, 7.5], 
		[47, 6], [45.5, 4.5], [44, 3], 
		[42.5, 2.0], [41, 1], [38.5, 0.0], 
		[36, -1], [34.0, -1.0], [32, -1], 
		[30, -1], [26, -1], [22.0, 0.0], 
		[18, 1], [14, 3], [10.0, 1.0], 
		[6, -1],[6.0, 6.0], ]);
}}}

module GoblinOne_contour00x73_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 13], [8, 11], [10.5, 10.0],steps,height);
	BezConic([10.5, 10.0], [13, 9], [16.0, 8.0],steps,height);
	BezConic([16.0, 8.0], [19, 7], [22.0, 6.0],steps,height);
	BezConic([22.0, 6.0], [25, 5], [29, 5],steps,height);
	BezConic([29, 5], [30, 5], [31.0, 5.5],steps,height);
	BezConic([33.0, 6.0], [34, 6], [34.5, 7.0],steps,height);
	BezConic([34.5, 7.0], [35, 8], [35, 8],steps,height);
	BezConic([35, 8], [35, 9], [34.5, 9.5],steps,height);
	BezConic([34.5, 9.5], [34, 10], [33.0, 10.5],steps,height);
	BezConic([33.0, 10.5], [32, 11], [29.5, 11.5],steps,height);
	BezConic([29.5, 11.5], [27, 12], [24, 12],steps,height);
	BezConic([15.0, 13.5], [13, 14], [11.0, 14.5],steps,height);
	BezConic([46, 23], [43, 25], [40.5, 26.0],steps,height);
	BezConic([40.5, 26.0], [38, 27], [35.0, 28.0],steps,height);
	BezConic([35.0, 28.0], [32, 29], [29.5, 29.0],steps,height);
	BezConic([29.5, 29.0], [27, 29], [25, 29],steps,height);
	BezConic([25, 29], [23, 29], [22.0, 29.0],steps,height);
	BezConic([22.0, 29.0], [21, 29], [20.0, 28.5],steps,height);
	BezConic([20.0, 28.5], [19, 28], [18.5, 27.5],steps,height);
	BezConic([18.5, 27.5], [18, 27], [18, 27],steps,height);
	BezConic([18, 27], [18, 26], [18.5, 25.5],steps,height);
	BezConic([18.5, 25.5], [19, 25], [20.0, 25.0],steps,height);
	BezConic([34.0, -1.0], [32, -1], [30, -1],steps,height);
}
}

module GoblinOne_contour00x73_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31.0, 5.5], [32, 6], [33.0, 6.0],steps,height);
	BezConic([24, 12], [22, 12], [19.5, 12.5],steps,height);
	BezConic([19.5, 12.5], [17, 13], [15.0, 13.5],steps,height);
	BezConic([11.0, 14.5], [9, 15], [7.5, 16.5],steps,height);
	BezConic([7.5, 16.5], [6, 18], [5.0, 19.5],steps,height);
	BezConic([5.0, 19.5], [4, 21], [4, 24],steps,height);
	BezConic([4, 24], [4, 27], [5.5, 29.0],steps,height);
	BezConic([5.5, 29.0], [7, 31], [9.5, 32.5],steps,height);
	BezConic([9.5, 32.5], [12, 34], [15.5, 35.0],steps,height);
	BezConic([15.5, 35.0], [19, 36], [22, 36],steps,height);
	BezConic([22, 36], [26, 36], [30.0, 35.0],steps,height);
	BezConic([30.0, 35.0], [34, 34], [38, 32],steps,height);
	BezConic([20.0, 25.0], [21, 25], [23.5, 24.5],steps,height);
	BezConic([23.5, 24.5], [26, 24], [30, 23],steps,height);
	BezConic([30, 23], [34, 23], [37.0, 22.5],steps,height);
	BezConic([37.0, 22.5], [40, 22], [43.0, 20.5],steps,height);
	BezConic([43.0, 20.5], [46, 19], [47.5, 17.0],steps,height);
	BezConic([47.5, 17.0], [49, 15], [49, 12],steps,height);
	BezConic([49, 12], [49, 9], [48.0, 7.5],steps,height);
	BezConic([48.0, 7.5], [47, 6], [45.5, 4.5],steps,height);
	BezConic([45.5, 4.5], [44, 3], [42.5, 2.0],steps,height);
	BezConic([42.5, 2.0], [41, 1], [38.5, 0.0],steps,height);
	BezConic([38.5, 0.0], [36, -1], [34.0, -1.0],steps,height);
	BezConic([30, -1], [26, -1], [22.0, 0.0],steps,height);
	BezConic([22.0, 0.0], [18, 1], [14, 3],steps,height);
}
}

module GoblinOne_contour00x73(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x73_skeleton(height);
			GoblinOne_contour00x73_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x73_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x73(steps=2, height) {
	difference() {
		GoblinOne_contour00x73(steps, height);
		
	}
}

GoblinOne_bbox0x73=[[4, -1], [49, 36]];

module GoblinOne_letter0x73(steps=2, height) {
	GoblinOne_chunk10x73(steps, height);
} //end skeleton

module GoblinOne_contour00x74_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 28], [4.5, 28.0], [2, 28], 
		[2.0, 30.5], [2, 33], [4, 33], 
		[6.0, 33.5], [8, 34], [9.5, 35.5], 
		[11, 37], [12.5, 38.0], [14, 39], 
		[15.0, 41.0], [16, 43], [16.5, 44.5], 
		[17, 46], [17, 48], [20.0, 48.0], 
		[23, 48], [23.0, 41.5], [23, 35], 
		[30.5, 35.0], [38, 35], [38.0, 31.5], 
		[38, 28], [30.5, 28.0], [23, 28], 
		[23.0, 21.0], [23, 14], [23, 11], 
		[23.5, 9.5], [24, 8], [25.0, 7.0], 
		[26, 6], [27.5, 6.0], [29, 6], 
		[30, 6], [34, 6], [35.5, 7.5], 
		[37, 9], [37, 13], [37, 13], 
		[37.0, 13.5], [37, 14], [37, 14], 
		[40.0, 13.5], [43, 13], [43, 12], 
		[43, 11], [43, 9], [42.0, 7.0], 
		[41, 5], [40.0, 3.5], [39, 2], 
		[37.0, 1.5], [35, 1], [33.0, 0.0], 
		[31, -1], [29.0, -1.0], [27, -1], 
		[25, -1], [21, -1], [17.5, -0.5], 
		[14, 0], [12.0, 2.0], [10, 4], 
		[8.5, 7.0], [7, 10], [7, 14], 
		[7.0, 21.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 28], [4.5, 28.0], [2, 28], 
		[2.0, 30.5], [2, 33], [4, 33], 
		[6.0, 33.5], [8, 34], [9.5, 35.5], 
		[11, 37], [12.5, 38.0], [14, 39], 
		[15.0, 41.0], [16, 43], [16.5, 44.5], 
		[17, 46], [17, 48], [20.0, 48.0], 
		[23, 48], [23.0, 41.5], [23, 35], 
		[30.5, 35.0], [38, 35], [38.0, 31.5], 
		[38, 28], [30.5, 28.0], [23, 28], 
		[23.0, 21.0], [23, 14], [23, 11], 
		[23.5, 9.5], [24, 8], [25.0, 7.0], 
		[26, 6], [27.5, 6.0], [29, 6], 
		[30, 6], [34, 6], [35.5, 7.5], 
		[37, 9], [37, 13], [37, 13], 
		[37.0, 13.5], [37, 14], [37, 14], 
		[40.0, 13.5], [43, 13], [43, 12], 
		[43, 11], [43, 9], [42.0, 7.0], 
		[41, 5], [40.0, 3.5], [39, 2], 
		[37.0, 1.5], [35, 1], [33.0, 0.0], 
		[31, -1], [29.0, -1.0], [27, -1], 
		[25, -1], [21, -1], [17.5, -0.5], 
		[14, 0], [12.0, 2.0], [10, 4], 
		[8.5, 7.0], [7, 10], [7, 14], 
		[7.0, 21.0], ]);
}}}

module GoblinOne_contour00x74_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([2, 33], [4, 33], [6.0, 33.5],steps,height);
	BezConic([6.0, 33.5], [8, 34], [9.5, 35.5],steps,height);
	BezConic([12.5, 38.0], [14, 39], [15.0, 41.0],steps,height);
	BezConic([15.0, 41.0], [16, 43], [16.5, 44.5],steps,height);
	BezConic([16.5, 44.5], [17, 46], [17, 48],steps,height);
	BezConic([23, 14], [23, 11], [23.5, 9.5],steps,height);
	BezConic([23.5, 9.5], [24, 8], [25.0, 7.0],steps,height);
	BezConic([25.0, 7.0], [26, 6], [27.5, 6.0],steps,height);
	BezConic([27.5, 6.0], [29, 6], [30, 6],steps,height);
	BezConic([30, 6], [34, 6], [35.5, 7.5],steps,height);
	BezConic([35.5, 7.5], [37, 9], [37, 13],steps,height);
	BezConic([37, 13], [37, 13], [37.0, 13.5],steps,height);
	BezConic([37.0, 13.5], [37, 14], [37, 14],steps,height);
	BezConic([43, 13], [43, 12], [43, 11],steps,height);
	BezConic([37.0, 1.5], [35, 1], [33.0, 0.0],steps,height);
	BezConic([29.0, -1.0], [27, -1], [25, -1],steps,height);
}
}

module GoblinOne_contour00x74_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([9.5, 35.5], [11, 37], [12.5, 38.0],steps,height);
	BezConic([43, 11], [43, 9], [42.0, 7.0],steps,height);
	BezConic([42.0, 7.0], [41, 5], [40.0, 3.5],steps,height);
	BezConic([40.0, 3.5], [39, 2], [37.0, 1.5],steps,height);
	BezConic([33.0, 0.0], [31, -1], [29.0, -1.0],steps,height);
	BezConic([25, -1], [21, -1], [17.5, -0.5],steps,height);
	BezConic([17.5, -0.5], [14, 0], [12.0, 2.0],steps,height);
	BezConic([12.0, 2.0], [10, 4], [8.5, 7.0],steps,height);
	BezConic([8.5, 7.0], [7, 10], [7, 14],steps,height);
}
}

module GoblinOne_contour00x74(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x74_skeleton(height);
			GoblinOne_contour00x74_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x74_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x74(steps=2, height) {
	difference() {
		GoblinOne_contour00x74(steps, height);
		
	}
}

GoblinOne_bbox0x74=[[2, -1], [43, 48]];

module GoblinOne_letter0x74(steps=2, height) {
	GoblinOne_chunk10x74(steps, height);
} //end skeleton

module GoblinOne_contour00x75_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[8, 26], [3.5, 30.0], [-1, 34], 
		[11.0, 34.5], [23, 35], [23.0, 26.0], 
		[23, 17], [23, 15], [23.5, 13.0], 
		[24, 11], [24.5, 10.0], [25, 9], 
		[26.5, 8.0], [28, 7], [29, 7], 
		[31, 7], [32.5, 8.0], [34, 9], 
		[35.0, 10.5], [36, 12], [36.5, 14.0], 
		[37, 16], [37, 19], [37.0, 22.5], 
		[37, 26], [33.0, 30.0], [29, 34], 
		[40.5, 34.5], [52, 35], [52.0, 21.0], 
		[52, 7], [56.5, 3.5], [61, 0], 
		[49.0, -0.5], [37, -1], [37.0, 2.5], 
		[37, 6], [35, 3], [31.5, 1.0], 
		[28, -1], [23, -1], [16, -1], 
		[12.0, 3.5], [8, 8], [8, 16], 
		[8.0, 21.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[8, 26], [3.5, 30.0], [-1, 34], 
		[11.0, 34.5], [23, 35], [23.0, 26.0], 
		[23, 17], [23, 15], [23.5, 13.0], 
		[24, 11], [24.5, 10.0], [25, 9], 
		[26.5, 8.0], [28, 7], [29, 7], 
		[31, 7], [32.5, 8.0], [34, 9], 
		[35.0, 10.5], [36, 12], [36.5, 14.0], 
		[37, 16], [37, 19], [37.0, 22.5], 
		[37, 26], [33.0, 30.0], [29, 34], 
		[40.5, 34.5], [52, 35], [52.0, 21.0], 
		[52, 7], [56.5, 3.5], [61, 0], 
		[49.0, -0.5], [37, -1], [37.0, 2.5], 
		[37, 6], [35, 3], [31.5, 1.0], 
		[28, -1], [23, -1], [16, -1], 
		[12.0, 3.5], [8, 8], [8, 16], 
		[8.0, 21.0], ]);
}}}

module GoblinOne_contour00x75_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23, 17], [23, 15], [23.5, 13.0],steps,height);
	BezConic([23.5, 13.0], [24, 11], [24.5, 10.0],steps,height);
	BezConic([24.5, 10.0], [25, 9], [26.5, 8.0],steps,height);
	BezConic([26.5, 8.0], [28, 7], [29, 7],steps,height);
	BezConic([29, 7], [31, 7], [32.5, 8.0],steps,height);
	BezConic([32.5, 8.0], [34, 9], [35.0, 10.5],steps,height);
	BezConic([35.0, 10.5], [36, 12], [36.5, 14.0],steps,height);
	BezConic([36.5, 14.0], [37, 16], [37, 19],steps,height);
}
}

module GoblinOne_contour00x75_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([37, 6], [35, 3], [31.5, 1.0],steps,height);
	BezConic([31.5, 1.0], [28, -1], [23, -1],steps,height);
	BezConic([23, -1], [16, -1], [12.0, 3.5],steps,height);
	BezConic([12.0, 3.5], [8, 8], [8, 16],steps,height);
}
}

module GoblinOne_contour00x75(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x75_skeleton(height);
			GoblinOne_contour00x75_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x75_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x75(steps=2, height) {
	difference() {
		GoblinOne_contour00x75(steps, height);
		
	}
}

GoblinOne_bbox0x75=[[-1, -1], [61, 35]];

module GoblinOne_letter0x75(steps=2, height) {
	GoblinOne_chunk10x75(steps, height);
} //end skeleton

module GoblinOne_contour00x76_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 27], [2.5, 31.0], [-2, 35], 
		[12.5, 35.0], [27, 35], [25.5, 32.5], 
		[24, 30], [28.0, 19.0], [32, 8], 
		[35.0, 18.0], [38, 28], [36.0, 31.5], 
		[34, 35], [46.0, 35.0], [58, 35], 
		[54.0, 31.5], [50, 28], [44.5, 14.0], 
		[39, 0], [30.0, 0.0], [21, 0], 
		[14.0, 13.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 27], [2.5, 31.0], [-2, 35], 
		[12.5, 35.0], [27, 35], [25.5, 32.5], 
		[24, 30], [28.0, 19.0], [32, 8], 
		[35.0, 18.0], [38, 28], [36.0, 31.5], 
		[34, 35], [46.0, 35.0], [58, 35], 
		[54.0, 31.5], [50, 28], [44.5, 14.0], 
		[39, 0], [30.0, 0.0], [21, 0], 
		[14.0, 13.5], ]);
}}}

module GoblinOne_contour00x76_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x76_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x76(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x76_skeleton(height);
			GoblinOne_contour00x76_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x76_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x76(steps=2, height) {
	difference() {
		GoblinOne_contour00x76(steps, height);
		
	}
}

GoblinOne_bbox0x76=[[-2, 0], [58, 35]];

module GoblinOne_letter0x76(steps=2, height) {
	GoblinOne_chunk10x76(steps, height);
} //end skeleton

module GoblinOne_contour00x77_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 27], [1.5, 31.0], [-3, 35], 
		[11.0, 35.0], [25, 35], [23.5, 32.0], 
		[22, 29], [25.5, 18.0], [29, 7], 
		[32.0, 18.0], [35, 29], [33.5, 32.0], 
		[32, 35], [44.5, 35.0], [57, 35], 
		[55.0, 32.0], [53, 29], [57.0, 18.0], 
		[61, 7], [64.0, 18.0], [67, 29], 
		[65.0, 32.0], [63, 35], [74.5, 35.0], 
		[86, 35], [82.0, 31.0], [78, 27], 
		[73.0, 13.5], [68, 0], [58.5, 0.0], 
		[49, 0], [46.0, 8.0], [43, 16], 
		[40.0, 8.0], [37, 0], [27.5, 0.0], 
		[18, 0],[12.0, 13.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 27], [1.5, 31.0], [-3, 35], 
		[11.0, 35.0], [25, 35], [23.5, 32.0], 
		[22, 29], [25.5, 18.0], [29, 7], 
		[32.0, 18.0], [35, 29], [33.5, 32.0], 
		[32, 35], [44.5, 35.0], [57, 35], 
		[55.0, 32.0], [53, 29], [57.0, 18.0], 
		[61, 7], [64.0, 18.0], [67, 29], 
		[65.0, 32.0], [63, 35], [74.5, 35.0], 
		[86, 35], [82.0, 31.0], [78, 27], 
		[73.0, 13.5], [68, 0], [58.5, 0.0], 
		[49, 0], [46.0, 8.0], [43, 16], 
		[40.0, 8.0], [37, 0], [27.5, 0.0], 
		[18, 0],[12.0, 13.5], ]);
}}}

module GoblinOne_contour00x77_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x77_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x77(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x77_skeleton(height);
			GoblinOne_contour00x77_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x77_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x77(steps=2, height) {
	difference() {
		GoblinOne_contour00x77(steps, height);
		
	}
}

GoblinOne_bbox0x77=[[-3, 0], [86, 35]];

module GoblinOne_letter0x77(steps=2, height) {
	GoblinOne_chunk10x77(steps, height);
} //end skeleton

module GoblinOne_contour00x78_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 7], [14.5, 12.5], [19, 18], 
		[15.0, 22.5], [11, 27], [5.5, 31.0], 
		[0, 35], [13.5, 35.0], [27, 35], 
		[25.5, 33.0], [24, 31], [27.5, 27.5], 
		[31, 24], [33.5, 27.5], [36, 31], 
		[34.5, 33.0], [33, 35], [44.0, 35.0], 
		[55, 35], [50.0, 31.0], [45, 27], 
		[40.5, 22.0], [36, 17], [40.5, 12.5], 
		[45, 8], [50.0, 4.0], [55, 0], 
		[42.0, 0.0], [29, 0], [30.0, 1.5], 
		[31, 3], [27.5, 7.0], [24, 11], 
		[21.5, 7.5], [19, 4], [20.5, 2.0], 
		[22, 0], [11.0, 0.0], [0, 0], 
		[5.0, 3.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 7], [14.5, 12.5], [19, 18], 
		[15.0, 22.5], [11, 27], [5.5, 31.0], 
		[0, 35], [13.5, 35.0], [27, 35], 
		[25.5, 33.0], [24, 31], [27.5, 27.5], 
		[31, 24], [33.5, 27.5], [36, 31], 
		[34.5, 33.0], [33, 35], [44.0, 35.0], 
		[55, 35], [50.0, 31.0], [45, 27], 
		[40.5, 22.0], [36, 17], [40.5, 12.5], 
		[45, 8], [50.0, 4.0], [55, 0], 
		[42.0, 0.0], [29, 0], [30.0, 1.5], 
		[31, 3], [27.5, 7.0], [24, 11], 
		[21.5, 7.5], [19, 4], [20.5, 2.0], 
		[22, 0], [11.0, 0.0], [0, 0], 
		[5.0, 3.5], ]);
}}}

module GoblinOne_contour00x78_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x78_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x78(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x78_skeleton(height);
			GoblinOne_contour00x78_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x78_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x78(steps=2, height) {
	difference() {
		GoblinOne_contour00x78(steps, height);
		
	}
}

GoblinOne_bbox0x78=[[0, 0], [55, 35]];

module GoblinOne_letter0x78(steps=2, height) {
	GoblinOne_chunk10x78(steps, height);
} //end skeleton

module GoblinOne_contour00x79_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 2], [14, 1], [14, -1], 
		[14, -2], [14.5, -3.5], [15, -5], 
		[16.0, -6.0], [17, -7], [18.5, -7.5], 
		[20, -8], [22, -8], [24, -8], 
		[25.0, -7.5], [26, -7], [27.0, -6.0], 
		[28, -5], [29.0, -3.5], [30, -2], 
		[30, 0], [25.0, 0.0], [20, 0], 
		[14.0, 14.0], [8, 28], [4.0, 31.5], 
		[0, 35], [14.0, 35.0], [28, 35], 
		[26.0, 32.0], [24, 29], [28.0, 18.0], 
		[32, 7], [35.0, 18.0], [38, 29], 
		[36.0, 32.0], [34, 35], [45.5, 35.0], 
		[57, 35], [53.5, 32.0], [50, 29], 
		[44.5, 14.5], [39, 0], [37, -5], 
		[35.0, -7.5], [33, -10], [30.5, -12.0], 
		[28, -14], [25.5, -14.5], [23, -15], 
		[19, -15], [15, -15], [12.0, -14.0], 
		[9, -13], [6.5, -11.5], [4, -10], 
		[3.0, -7.5], [2, -5], [2, -2], 
		[2, -2], [2.0, -1.0], [2, 0], 
		[3, 1],[9.0, 1.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 2], [14, 1], [14, -1], 
		[14, -2], [14.5, -3.5], [15, -5], 
		[16.0, -6.0], [17, -7], [18.5, -7.5], 
		[20, -8], [22, -8], [24, -8], 
		[25.0, -7.5], [26, -7], [27.0, -6.0], 
		[28, -5], [29.0, -3.5], [30, -2], 
		[30, 0], [25.0, 0.0], [20, 0], 
		[14.0, 14.0], [8, 28], [4.0, 31.5], 
		[0, 35], [14.0, 35.0], [28, 35], 
		[26.0, 32.0], [24, 29], [28.0, 18.0], 
		[32, 7], [35.0, 18.0], [38, 29], 
		[36.0, 32.0], [34, 35], [45.5, 35.0], 
		[57, 35], [53.5, 32.0], [50, 29], 
		[44.5, 14.5], [39, 0], [37, -5], 
		[35.0, -7.5], [33, -10], [30.5, -12.0], 
		[28, -14], [25.5, -14.5], [23, -15], 
		[19, -15], [15, -15], [12.0, -14.0], 
		[9, -13], [6.5, -11.5], [4, -10], 
		[3.0, -7.5], [2, -5], [2, -2], 
		[2, -2], [2.0, -1.0], [2, 0], 
		[3, 1],[9.0, 1.5], ]);
}}}

module GoblinOne_contour00x79_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 2], [14, 1], [14, -1],steps,height);
	BezConic([14, -1], [14, -2], [14.5, -3.5],steps,height);
	BezConic([14.5, -3.5], [15, -5], [16.0, -6.0],steps,height);
	BezConic([16.0, -6.0], [17, -7], [18.5, -7.5],steps,height);
	BezConic([18.5, -7.5], [20, -8], [22, -8],steps,height);
	BezConic([22, -8], [24, -8], [25.0, -7.5],steps,height);
	BezConic([25.0, -7.5], [26, -7], [27.0, -6.0],steps,height);
	BezConic([27.0, -6.0], [28, -5], [29.0, -3.5],steps,height);
	BezConic([29.0, -3.5], [30, -2], [30, 0],steps,height);
	BezConic([2, -2], [2, -2], [2.0, -1.0],steps,height);
}
}

module GoblinOne_contour00x79_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([39, 0], [37, -5], [35.0, -7.5],steps,height);
	BezConic([35.0, -7.5], [33, -10], [30.5, -12.0],steps,height);
	BezConic([30.5, -12.0], [28, -14], [25.5, -14.5],steps,height);
	BezConic([25.5, -14.5], [23, -15], [19, -15],steps,height);
	BezConic([19, -15], [15, -15], [12.0, -14.0],steps,height);
	BezConic([12.0, -14.0], [9, -13], [6.5, -11.5],steps,height);
	BezConic([6.5, -11.5], [4, -10], [3.0, -7.5],steps,height);
	BezConic([3.0, -7.5], [2, -5], [2, -2],steps,height);
	BezConic([2.0, -1.0], [2, 0], [3, 1],steps,height);
}
}

module GoblinOne_contour00x79(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x79_skeleton(height);
			GoblinOne_contour00x79_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x79_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x79(steps=2, height) {
	difference() {
		GoblinOne_contour00x79(steps, height);
		
	}
}

GoblinOne_bbox0x79=[[0, -15], [57, 35]];

module GoblinOne_letter0x79(steps=2, height) {
	GoblinOne_chunk10x79(steps, height);
} //end skeleton

module GoblinOne_contour00x7a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, 28], [19.0, 28.0], [13, 28], 
		[9.5, 23.0], [6, 18], [6.0, 26.5], 
		[6, 35], [27.5, 35.0], [49, 35], 
		[38.0, 21.0], [27, 7], [34.0, 7.0], 
		[41, 7], [45.0, 12.0], [49, 17], 
		[49.0, 8.5], [49, 0], [25.5, 0.0], 
		[2, 0],[13.5, 14.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, 28], [19.0, 28.0], [13, 28], 
		[9.5, 23.0], [6, 18], [6.0, 26.5], 
		[6, 35], [27.5, 35.0], [49, 35], 
		[38.0, 21.0], [27, 7], [34.0, 7.0], 
		[41, 7], [45.0, 12.0], [49, 17], 
		[49.0, 8.5], [49, 0], [25.5, 0.0], 
		[2, 0],[13.5, 14.0], ]);
}}}

module GoblinOne_contour00x7a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x7a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x7a(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x7a_skeleton(height);
			GoblinOne_contour00x7a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x7a_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x7a(steps=2, height) {
	difference() {
		GoblinOne_contour00x7a(steps, height);
		
	}
}

GoblinOne_bbox0x7a=[[2, 0], [49, 35]];

module GoblinOne_letter0x7a(steps=2, height) {
	GoblinOne_chunk10x7a(steps, height);
} //end skeleton

module GoblinOne_contour00x7b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 6], [7, 7], [7.0, 8.5], 
		[7, 10], [8, 11], [8, 13], 
		[8.5, 14.5], [9, 16], [9, 17], 
		[9, 19], [8.0, 19.5], [7, 20], 
		[6, 20], [6.0, 22.5], [6, 25], 
		[7, 25], [8.0, 25.5], [9, 26], 
		[9, 28], [9, 29], [8.5, 30.5], 
		[8, 32], [8, 34], [7, 35], 
		[7.0, 36.5], [7, 38], [7, 39], 
		[7, 41], [7.5, 42.5], [8, 44], 
		[8.5, 45.0], [9, 46], [10.5, 47.5], 
		[12, 49], [14.5, 49.5], [17, 50], 
		[20.0, 51.0], [23, 52], [27, 52], 
		[27.5, 50.0], [28, 48], [26, 47], 
		[24.0, 46.5], [22, 46], [21.0, 45.0], 
		[20, 44], [19.5, 42.5], [19, 41], 
		[19, 40], [19, 39], [19.0, 37.5], 
		[19, 36], [20, 35], [20, 34], 
		[20.5, 32.5], [21, 31], [21, 30], 
		[21, 28], [20.5, 27.0], [20, 26], 
		[19.0, 25.0], [18, 24], [16.5, 23.5], 
		[15, 23], [13, 22], [15, 22], 
		[16.5, 21.5], [18, 21], [19.0, 20.0], 
		[20, 19], [20.5, 17.5], [21, 16], 
		[21, 15], [21, 14], [20.5, 12.5], 
		[20, 11], [20, 10], [19, 8], 
		[19.0, 7.0], [19, 6], [19, 5], 
		[19, 4], [19.5, 2.5], [20, 1], 
		[21.0, 0.0], [22, -1], [24.0, -1.5], 
		[26, -2], [28, -3], [27.5, -5.0], 
		[27, -7], [23, -7], [20.0, -6.5], 
		[17, -6], [14.5, -5.0], [12, -4], 
		[10.5, -3.0], [9, -2], [8.5, -0.5], 
		[8, 1], [7.5, 2.5], [7, 4], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 6], [7, 7], [7.0, 8.5], 
		[7, 10], [8, 11], [8, 13], 
		[8.5, 14.5], [9, 16], [9, 17], 
		[9, 19], [8.0, 19.5], [7, 20], 
		[6, 20], [6.0, 22.5], [6, 25], 
		[7, 25], [8.0, 25.5], [9, 26], 
		[9, 28], [9, 29], [8.5, 30.5], 
		[8, 32], [8, 34], [7, 35], 
		[7.0, 36.5], [7, 38], [7, 39], 
		[7, 41], [7.5, 42.5], [8, 44], 
		[8.5, 45.0], [9, 46], [10.5, 47.5], 
		[12, 49], [14.5, 49.5], [17, 50], 
		[20.0, 51.0], [23, 52], [27, 52], 
		[27.5, 50.0], [28, 48], [26, 47], 
		[24.0, 46.5], [22, 46], [21.0, 45.0], 
		[20, 44], [19.5, 42.5], [19, 41], 
		[19, 40], [19, 39], [19.0, 37.5], 
		[19, 36], [20, 35], [20, 34], 
		[20.5, 32.5], [21, 31], [21, 30], 
		[21, 28], [20.5, 27.0], [20, 26], 
		[19.0, 25.0], [18, 24], [16.5, 23.5], 
		[15, 23], [13, 22], [15, 22], 
		[16.5, 21.5], [18, 21], [19.0, 20.0], 
		[20, 19], [20.5, 17.5], [21, 16], 
		[21, 15], [21, 14], [20.5, 12.5], 
		[20, 11], [20, 10], [19, 8], 
		[19.0, 7.0], [19, 6], [19, 5], 
		[19, 4], [19.5, 2.5], [20, 1], 
		[21.0, 0.0], [22, -1], [24.0, -1.5], 
		[26, -2], [28, -3], [27.5, -5.0], 
		[27, -7], [23, -7], [20.0, -6.5], 
		[17, -6], [14.5, -5.0], [12, -4], 
		[10.5, -3.0], [9, -2], [8.5, -0.5], 
		[8, 1], [7.5, 2.5], [7, 4], 
		 ]);
}}}

module GoblinOne_contour00x7b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 6], [7, 7], [7.0, 8.5],steps,height);
	BezConic([8.5, 14.5], [9, 16], [9, 17],steps,height);
	BezConic([9, 17], [9, 19], [8.0, 19.5],steps,height);
	BezConic([8.0, 19.5], [7, 20], [6, 20],steps,height);
	BezConic([6, 25], [7, 25], [8.0, 25.5],steps,height);
	BezConic([8.0, 25.5], [9, 26], [9, 28],steps,height);
	BezConic([9, 28], [9, 29], [8.5, 30.5],steps,height);
	BezConic([7.0, 36.5], [7, 38], [7, 39],steps,height);
	BezConic([14.5, 49.5], [17, 50], [20.0, 51.0],steps,height);
	BezConic([24.0, 46.5], [22, 46], [21.0, 45.0],steps,height);
	BezConic([21.0, 45.0], [20, 44], [19.5, 42.5],steps,height);
	BezConic([19.5, 42.5], [19, 41], [19, 40],steps,height);
	BezConic([19, 40], [19, 39], [19.0, 37.5],steps,height);
	BezConic([19.0, 37.5], [19, 36], [20, 35],steps,height);
	BezConic([20, 35], [20, 34], [20.5, 32.5],steps,height);
	BezConic([16.5, 23.5], [15, 23], [13, 22],steps,height);
	BezConic([20.5, 12.5], [20, 11], [20, 10],steps,height);
	BezConic([20, 10], [19, 8], [19.0, 7.0],steps,height);
	BezConic([19.0, 7.0], [19, 6], [19, 5],steps,height);
	BezConic([19, 5], [19, 4], [19.5, 2.5],steps,height);
	BezConic([19.5, 2.5], [20, 1], [21.0, 0.0],steps,height);
	BezConic([21.0, 0.0], [22, -1], [24.0, -1.5],steps,height);
	BezConic([8.5, -0.5], [8, 1], [7.5, 2.5],steps,height);
}
}

module GoblinOne_contour00x7b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7.0, 8.5], [7, 10], [8, 11],steps,height);
	BezConic([8, 11], [8, 13], [8.5, 14.5],steps,height);
	BezConic([8.5, 30.5], [8, 32], [8, 34],steps,height);
	BezConic([8, 34], [7, 35], [7.0, 36.5],steps,height);
	BezConic([7, 39], [7, 41], [7.5, 42.5],steps,height);
	BezConic([7.5, 42.5], [8, 44], [8.5, 45.0],steps,height);
	BezConic([8.5, 45.0], [9, 46], [10.5, 47.5],steps,height);
	BezConic([10.5, 47.5], [12, 49], [14.5, 49.5],steps,height);
	BezConic([20.0, 51.0], [23, 52], [27, 52],steps,height);
	BezConic([28, 48], [26, 47], [24.0, 46.5],steps,height);
	BezConic([20.5, 32.5], [21, 31], [21, 30],steps,height);
	BezConic([21, 30], [21, 28], [20.5, 27.0],steps,height);
	BezConic([20.5, 27.0], [20, 26], [19.0, 25.0],steps,height);
	BezConic([19.0, 25.0], [18, 24], [16.5, 23.5],steps,height);
	BezConic([13, 22], [15, 22], [16.5, 21.5],steps,height);
	BezConic([16.5, 21.5], [18, 21], [19.0, 20.0],steps,height);
	BezConic([19.0, 20.0], [20, 19], [20.5, 17.5],steps,height);
	BezConic([20.5, 17.5], [21, 16], [21, 15],steps,height);
	BezConic([21, 15], [21, 14], [20.5, 12.5],steps,height);
	BezConic([24.0, -1.5], [26, -2], [28, -3],steps,height);
	BezConic([27, -7], [23, -7], [20.0, -6.5],steps,height);
	BezConic([20.0, -6.5], [17, -6], [14.5, -5.0],steps,height);
	BezConic([14.5, -5.0], [12, -4], [10.5, -3.0],steps,height);
	BezConic([10.5, -3.0], [9, -2], [8.5, -0.5],steps,height);
	BezConic([7.5, 2.5], [7, 4], [7, 6],steps,height);
}
}

module GoblinOne_contour00x7b(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x7b_skeleton(height);
			GoblinOne_contour00x7b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x7b_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x7b(steps=2, height) {
	difference() {
		GoblinOne_contour00x7b(steps, height);
		
	}
}

GoblinOne_bbox0x7b=[[6, -7], [28, 52]];

module GoblinOne_letter0x7b(steps=2, height) {
	GoblinOne_chunk10x7b(steps, height);
} //end skeleton

module GoblinOne_contour00x7c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 55], [10.0, 55.0], [13, 55], 
		[13.0, 19.5], [13, -16], [10.0, -16.0], 
		[7, -16],[7.0, 19.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 55], [10.0, 55.0], [13, 55], 
		[13.0, 19.5], [13, -16], [10.0, -16.0], 
		[7, -16],[7.0, 19.5], ]);
}}}

module GoblinOne_contour00x7c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x7c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module GoblinOne_contour00x7c(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x7c_skeleton(height);
			GoblinOne_contour00x7c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x7c_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x7c(steps=2, height) {
	difference() {
		GoblinOne_contour00x7c(steps, height);
		
	}
}

GoblinOne_bbox0x7c=[[7, -16], [13, 55]];

module GoblinOne_letter0x7c(steps=2, height) {
	GoblinOne_chunk10x7c(steps, height);
} //end skeleton

module GoblinOne_contour00x7d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[2, -3], [5, -2], [6.5, -1.5], 
		[8, -1], [9.0, 0.0], [10, 1], 
		[10.5, 2.5], [11, 4], [11, 5], 
		[11, 6], [11.0, 7.0], [11, 8], 
		[11, 10], [10, 11], [10.0, 12.5], 
		[10, 14], [10, 15], [10, 16], 
		[10.0, 17.5], [10, 19], [11.0, 20.0], 
		[12, 21], [13.5, 21.5], [15, 22], 
		[18, 22], [15, 23], [13.5, 23.5], 
		[12, 24], [11.0, 25.0], [10, 26], 
		[10.0, 27.0], [10, 28], [10, 30], 
		[10, 31], [10.0, 32.5], [10, 34], 
		[11, 35], [11, 36], [11.0, 37.5], 
		[11, 39], [11, 40], [11, 41], 
		[10.5, 42.5], [10, 44], [9.0, 45.0], 
		[8, 46], [6.5, 46.5], [5, 47], 
		[2, 48], [2.5, 50.0], [3, 52], 
		[8, 52], [11.0, 51.0], [14, 50], 
		[16.0, 49.5], [18, 49], [19.5, 47.5], 
		[21, 46], [22.0, 45.0], [23, 44], 
		[23.0, 42.5], [23, 41], [23, 39], 
		[23, 38], [23.0, 36.5], [23, 35], 
		[23, 34], [22, 32], [21.5, 30.5], 
		[21, 29], [21, 28], [21, 26], 
		[22.0, 25.5], [23, 25], [25, 25], 
		[25.0, 22.5], [25, 20], [23, 20], 
		[22.0, 19.5], [21, 19], [21, 17], 
		[21, 16], [21.5, 14.5], [22, 13], 
		[23, 11], [23, 10], [23.0, 8.5], 
		[23, 7], [23, 6], [23, 4], 
		[23.0, 2.5], [23, 1], [22.0, -0.5], 
		[21, -2], [19.5, -3.0], [18, -4], 
		[16.0, -5.0], [14, -6], [11.0, -6.5], 
		[8, -7], [3, -7], [2.5, -5.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[2, -3], [5, -2], [6.5, -1.5], 
		[8, -1], [9.0, 0.0], [10, 1], 
		[10.5, 2.5], [11, 4], [11, 5], 
		[11, 6], [11.0, 7.0], [11, 8], 
		[11, 10], [10, 11], [10.0, 12.5], 
		[10, 14], [10, 15], [10, 16], 
		[10.0, 17.5], [10, 19], [11.0, 20.0], 
		[12, 21], [13.5, 21.5], [15, 22], 
		[18, 22], [15, 23], [13.5, 23.5], 
		[12, 24], [11.0, 25.0], [10, 26], 
		[10.0, 27.0], [10, 28], [10, 30], 
		[10, 31], [10.0, 32.5], [10, 34], 
		[11, 35], [11, 36], [11.0, 37.5], 
		[11, 39], [11, 40], [11, 41], 
		[10.5, 42.5], [10, 44], [9.0, 45.0], 
		[8, 46], [6.5, 46.5], [5, 47], 
		[2, 48], [2.5, 50.0], [3, 52], 
		[8, 52], [11.0, 51.0], [14, 50], 
		[16.0, 49.5], [18, 49], [19.5, 47.5], 
		[21, 46], [22.0, 45.0], [23, 44], 
		[23.0, 42.5], [23, 41], [23, 39], 
		[23, 38], [23.0, 36.5], [23, 35], 
		[23, 34], [22, 32], [21.5, 30.5], 
		[21, 29], [21, 28], [21, 26], 
		[22.0, 25.5], [23, 25], [25, 25], 
		[25.0, 22.5], [25, 20], [23, 20], 
		[22.0, 19.5], [21, 19], [21, 17], 
		[21, 16], [21.5, 14.5], [22, 13], 
		[23, 11], [23, 10], [23.0, 8.5], 
		[23, 7], [23, 6], [23, 4], 
		[23.0, 2.5], [23, 1], [22.0, -0.5], 
		[21, -2], [19.5, -3.0], [18, -4], 
		[16.0, -5.0], [14, -6], [11.0, -6.5], 
		[8, -7], [3, -7], [2.5, -5.0], 
		 ]);
}}}

module GoblinOne_contour00x7d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([2, -3], [5, -2], [6.5, -1.5],steps,height);
	BezConic([6.5, -1.5], [8, -1], [9.0, 0.0],steps,height);
	BezConic([9.0, 0.0], [10, 1], [10.5, 2.5],steps,height);
	BezConic([10.5, 2.5], [11, 4], [11, 5],steps,height);
	BezConic([11, 5], [11, 6], [11.0, 7.0],steps,height);
	BezConic([11.0, 7.0], [11, 8], [11, 10],steps,height);
	BezConic([10.0, 12.5], [10, 14], [10, 15],steps,height);
	BezConic([10, 15], [10, 16], [10.0, 17.5],steps,height);
	BezConic([18, 22], [15, 23], [13.5, 23.5],steps,height);
	BezConic([10.0, 27.0], [10, 28], [10, 30],steps,height);
	BezConic([10, 30], [10, 31], [10.0, 32.5],steps,height);
	BezConic([11, 35], [11, 36], [11.0, 37.5],steps,height);
	BezConic([11.0, 37.5], [11, 39], [11, 40],steps,height);
	BezConic([11, 40], [11, 41], [10.5, 42.5],steps,height);
	BezConic([10.5, 42.5], [10, 44], [9.0, 45.0],steps,height);
	BezConic([9.0, 45.0], [8, 46], [6.5, 46.5],steps,height);
	BezConic([6.5, 46.5], [5, 47], [2, 48],steps,height);
	BezConic([11.0, 51.0], [14, 50], [16.0, 49.5],steps,height);
	BezConic([19.5, 47.5], [21, 46], [22.0, 45.0],steps,height);
	BezConic([23.0, 42.5], [23, 41], [23, 39],steps,height);
	BezConic([23, 39], [23, 38], [23.0, 36.5],steps,height);
	BezConic([23.0, 36.5], [23, 35], [23, 34],steps,height);
	BezConic([23, 34], [22, 32], [21.5, 30.5],steps,height);
	BezConic([21.5, 30.5], [21, 29], [21, 28],steps,height);
	BezConic([21, 28], [21, 26], [22.0, 25.5],steps,height);
	BezConic([22.0, 25.5], [23, 25], [25, 25],steps,height);
	BezConic([25, 20], [23, 20], [22.0, 19.5],steps,height);
	BezConic([22.0, 19.5], [21, 19], [21, 17],steps,height);
	BezConic([21, 17], [21, 16], [21.5, 14.5],steps,height);
	BezConic([21.5, 14.5], [22, 13], [23, 11],steps,height);
	BezConic([23, 11], [23, 10], [23.0, 8.5],steps,height);
	BezConic([23.0, 8.5], [23, 7], [23, 6],steps,height);
	BezConic([23, 6], [23, 4], [23.0, 2.5],steps,height);
}
}

module GoblinOne_contour00x7d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11, 10], [10, 11], [10.0, 12.5],steps,height);
	BezConic([10.0, 17.5], [10, 19], [11.0, 20.0],steps,height);
	BezConic([11.0, 20.0], [12, 21], [13.5, 21.5],steps,height);
	BezConic([13.5, 21.5], [15, 22], [18, 22],steps,height);
	BezConic([13.5, 23.5], [12, 24], [11.0, 25.0],steps,height);
	BezConic([11.0, 25.0], [10, 26], [10.0, 27.0],steps,height);
	BezConic([10.0, 32.5], [10, 34], [11, 35],steps,height);
	BezConic([3, 52], [8, 52], [11.0, 51.0],steps,height);
	BezConic([16.0, 49.5], [18, 49], [19.5, 47.5],steps,height);
	BezConic([22.0, 45.0], [23, 44], [23.0, 42.5],steps,height);
	BezConic([23.0, 2.5], [23, 1], [22.0, -0.5],steps,height);
	BezConic([22.0, -0.5], [21, -2], [19.5, -3.0],steps,height);
	BezConic([19.5, -3.0], [18, -4], [16.0, -5.0],steps,height);
	BezConic([16.0, -5.0], [14, -6], [11.0, -6.5],steps,height);
	BezConic([11.0, -6.5], [8, -7], [3, -7],steps,height);
}
}

module GoblinOne_contour00x7d(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x7d_skeleton(height);
			GoblinOne_contour00x7d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x7d_subtractive_curves(steps, height);
	}
}

module GoblinOne_chunk10x7d(steps=2, height) {
	difference() {
		GoblinOne_contour00x7d(steps, height);
		
	}
}

GoblinOne_bbox0x7d=[[2, -7], [25, 52]];

module GoblinOne_letter0x7d(steps=2, height) {
	GoblinOne_chunk10x7d(steps, height);
} //end skeleton

module GoblinOne_contour00x7e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 19], [4, 21], [5.5, 22.0], 
		[7, 23], [8.5, 24.0], [10, 25], 
		[11.5, 26.0], [13, 27], [15, 27], 
		[18, 27], [20.5, 26.5], [23, 26], 
		[26, 25], [29, 24], [31.0, 24.0], 
		[33, 24], [36, 24], [37, 24], 
		[37.5, 24.0], [38, 24], [39.0, 24.0], 
		[40, 24], [41.0, 24.5], [42, 25], 
		[43, 25], [44.0, 24.0], [45, 23], 
		[45, 22], [43.5, 20.5], [42, 19], 
		[40.0, 18.0], [38, 17], [36.5, 16.5], 
		[35, 16], [33, 16], [30, 16], 
		[27.5, 16.5], [25, 17], [22, 17], 
		[19, 18], [17.0, 18.5], [15, 19], 
		[12, 19], [12, 19], [11.0, 19.0], 
		[10, 19], [9.0, 18.5], [8, 18], 
		[7.0, 17.5], [6, 17], [6, 17], 
		[4.5, 18.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 19], [4, 21], [5.5, 22.0], 
		[7, 23], [8.5, 24.0], [10, 25], 
		[11.5, 26.0], [13, 27], [15, 27], 
		[18, 27], [20.5, 26.5], [23, 26], 
		[26, 25], [29, 24], [31.0, 24.0], 
		[33, 24], [36, 24], [37, 24], 
		[37.5, 24.0], [38, 24], [39.0, 24.0], 
		[40, 24], [41.0, 24.5], [42, 25], 
		[43, 25], [44.0, 24.0], [45, 23], 
		[45, 22], [43.5, 20.5], [42, 19], 
		[40.0, 18.0], [38, 17], [36.5, 16.5], 
		[35, 16], [33, 16], [30, 16], 
		[27.5, 16.5], [25, 17], [22, 17], 
		[19, 18], [17.0, 18.5], [15, 19], 
		[12, 19], [12, 19], [11.0, 19.0], 
		[10, 19], [9.0, 18.5], [8, 18], 
		[7.0, 17.5], [6, 17], [6, 17], 
		[4.5, 18.0], ]);
}}}

module GoblinOne_contour00x7e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5.5, 22.0], [7, 23], [8.5, 24.0],steps,height);
	BezConic([8.5, 24.0], [10, 25], [11.5, 26.0],steps,height);
	BezConic([26, 25], [29, 24], [31.0, 24.0],steps,height);
	BezConic([31.0, 24.0], [33, 24], [36, 24],steps,height);
	BezConic([36, 24], [37, 24], [37.5, 24.0],steps,height);
	BezConic([37.5, 24.0], [38, 24], [39.0, 24.0],steps,height);
	BezConic([39.0, 24.0], [40, 24], [41.0, 24.5],steps,height);
	BezConic([27.5, 16.5], [25, 17], [22, 17],steps,height);
	BezConic([22, 17], [19, 18], [17.0, 18.5],steps,height);
	BezConic([17.0, 18.5], [15, 19], [12, 19],steps,height);
	BezConic([12, 19], [12, 19], [11.0, 19.0],steps,height);
	BezConic([11.0, 19.0], [10, 19], [9.0, 18.5],steps,height);
	BezConic([9.0, 18.5], [8, 18], [7.0, 17.5],steps,height);
	BezConic([7.0, 17.5], [6, 17], [6, 17],steps,height);
}
}

module GoblinOne_contour00x7e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 19], [4, 21], [5.5, 22.0],steps,height);
	BezConic([11.5, 26.0], [13, 27], [15, 27],steps,height);
	BezConic([15, 27], [18, 27], [20.5, 26.5],steps,height);
	BezConic([20.5, 26.5], [23, 26], [26, 25],steps,height);
	BezConic([41.0, 24.5], [42, 25], [43, 25],steps,height);
	BezConic([45, 23], [45, 22], [43.5, 20.5],steps,height);
	BezConic([43.5, 20.5], [42, 19], [40.0, 18.0],steps,height);
	BezConic([40.0, 18.0], [38, 17], [36.5, 16.5],steps,height);
	BezConic([36.5, 16.5], [35, 16], [33, 16],steps,height);
	BezConic([33, 16], [30, 16], [27.5, 16.5],steps,height);
}
}

module GoblinOne_contour00x7e(steps=2, height) {
	difference() {
		union() {
			GoblinOne_contour00x7e_skeleton(height);
			GoblinOne_contour00x7e_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x7e_additive_curves(steps, height);
	}
}

module GoblinOne_chunk00x7e(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) GoblinOne_contour00x7e(steps, height);
	}
}

GoblinOne_bbox0x7e=[[3, 16], [45, 27]];

module GoblinOne_letter0x7e(steps=2, height) {
	GoblinOne_chunk00x7e(steps, height);
} //end skeleton



function GoblinOne_letter_space(char, extra) =
	char == "!" ? (19 + extra) : 
	char == "\"" ? (31 + extra) : 
	char == "#" ? (55 + extra) : 
	char == "$" ? (57 + extra) : 
	char == "%" ? (60 + extra) : 
	char == "&" ? (71 + extra) : 
	char == "'" ? (16 + extra) : 
	char == "(" ? (27 + extra) : 
	char == ")" ? (25 + extra) : 
	char == "*" ? (29 + extra) : 
	char == "+" ? (36 + extra) : 
	char == "," ? (20 + extra) : 
	char == "-" ? (36 + extra) : 
	char == "." ? (19 + extra) : 
	char == "/" ? (26 + extra) : 
	char == "0" ? (59 + extra) : 
	char == "1" ? (35 + extra) : 
	char == "2" ? (55 + extra) : 
	char == "3" ? (59 + extra) : 
	char == "4" ? (59 + extra) : 
	char == "5" ? (58 + extra) : 
	char == "6" ? (57 + extra) : 
	char == "7" ? (53 + extra) : 
	char == "8" ? (56 + extra) : 
	char == "9" ? (56 + extra) : 
	char == ":" ? (19 + extra) : 
	char == ";" ? (20 + extra) : 
	char == "<" ? (26 + extra) : 
	char == "=" ? (36 + extra) : 
	char == ">" ? (27 + extra) : 
	char == "?" ? (52 + extra) : 
	char == "@" ? (87 + extra) : 
	char == "A" ? (68 + extra) : 
	char == "B" ? (63 + extra) : 
	char == "C" ? (61 + extra) : 
	char == "D" ? (65 + extra) : 
	char == "E" ? (58 + extra) : 
	char == "F" ? (59 + extra) : 
	char == "G" ? (61 + extra) : 
	char == "H" ? (68 + extra) : 
	char == "I" ? (33 + extra) : 
	char == "J" ? (32 + extra) : 
	char == "K" ? (66 + extra) : 
	char == "L" ? (56 + extra) : 
	char == "M" ? (77 + extra) : 
	char == "N" ? (66 + extra) : 
	char == "O" ? (62 + extra) : 
	char == "P" ? (62 + extra) : 
	char == "Q" ? (62 + extra) : 
	char == "R" ? (69 + extra) : 
	char == "S" ? (58 + extra) : 
	char == "T" ? (56 + extra) : 
	char == "U" ? (64 + extra) : 
	char == "V" ? (64 + extra) : 
	char == "W" ? (85 + extra) : 
	char == "X" ? (66 + extra) : 
	char == "Y" ? (62 + extra) : 
	char == "Z" ? (54 + extra) : 
	char == "[" ? (28 + extra) : 
	char == "\\" ? (26 + extra) : 
	char == "]" ? (23 + extra) : 
	char == "^" ? (43 + extra) : 
	char == "_" ? (48 + extra) : 
	char == "`" ? (28 + extra) : 
	char == "a" ? (53 + extra) : 
	char == "b" ? (58 + extra) : 
	char == "c" ? (51 + extra) : 
	char == "d" ? (60 + extra) : 
	char == "e" ? (50 + extra) : 
	char == "f" ? (47 + extra) : 
	char == "g" ? (57 + extra) : 
	char == "h" ? (63 + extra) : 
	char == "i" ? (33 + extra) : 
	char == "j" ? (27 + extra) : 
	char == "k" ? (59 + extra) : 
	char == "l" ? (33 + extra) : 
	char == "m" ? (88 + extra) : 
	char == "n" ? (63 + extra) : 
	char == "o" ? (55 + extra) : 
	char == "p" ? (58 + extra) : 
	char == "q" ? (60 + extra) : 
	char == "r" ? (48 + extra) : 
	char == "s" ? (49 + extra) : 
	char == "t" ? (43 + extra) : 
	char == "u" ? (61 + extra) : 
	char == "v" ? (58 + extra) : 
	char == "w" ? (86 + extra) : 
	char == "x" ? (55 + extra) : 
	char == "y" ? (57 + extra) : 
	char == "z" ? (49 + extra) : 
	char == "{" ? (28 + extra) : 
	char == "|" ? (13 + extra) : 
	char == "}" ? (25 + extra) : 
	(45 + extra);

module GoblinOne_letter(char, steps, height) {
	if(char == "!") {
		GoblinOne_letter0x21(steps, height);
	}
	if(char == "\"") {
		GoblinOne_letter0x22(steps, height);
	}
	if(char == "#") {
		GoblinOne_letter0x23(steps, height);
	}
	if(char == "$") {
		GoblinOne_letter0x24(steps, height);
	}
	if(char == "%") {
		GoblinOne_letter0x25(steps, height);
	}
	if(char == "&") {
		GoblinOne_letter0x26(steps, height);
	}
	if(char == "'") {
		GoblinOne_letter0x27(steps, height);
	}
	if(char == "(") {
		GoblinOne_letter0x28(steps, height);
	}
	if(char == ")") {
		GoblinOne_letter0x29(steps, height);
	}
	if(char == "*") {
		GoblinOne_letter0x2a(steps, height);
	}
	if(char == "+") {
		GoblinOne_letter0x2b(steps, height);
	}
	if(char == ",") {
		GoblinOne_letter0x2c(steps, height);
	}
	if(char == "-") {
		GoblinOne_letter0x2d(steps, height);
	}
	if(char == ".") {
		GoblinOne_letter0x2e(steps, height);
	}
	if(char == "/") {
		GoblinOne_letter0x2f(steps, height);
	}
	if(char == "0") {
		GoblinOne_letter0x30(steps, height);
	}
	if(char == "1") {
		GoblinOne_letter0x31(steps, height);
	}
	if(char == "2") {
		GoblinOne_letter0x32(steps, height);
	}
	if(char == "3") {
		GoblinOne_letter0x33(steps, height);
	}
	if(char == "4") {
		GoblinOne_letter0x34(steps, height);
	}
	if(char == "5") {
		GoblinOne_letter0x35(steps, height);
	}
	if(char == "6") {
		GoblinOne_letter0x36(steps, height);
	}
	if(char == "7") {
		GoblinOne_letter0x37(steps, height);
	}
	if(char == "8") {
		GoblinOne_letter0x38(steps, height);
	}
	if(char == "9") {
		GoblinOne_letter0x39(steps, height);
	}
	if(char == ":") {
		GoblinOne_letter0x3a(steps, height);
	}
	if(char == ";") {
		GoblinOne_letter0x3b(steps, height);
	}
	if(char == "<") {
		GoblinOne_letter0x3c(steps, height);
	}
	if(char == "=") {
		GoblinOne_letter0x3d(steps, height);
	}
	if(char == ">") {
		GoblinOne_letter0x3e(steps, height);
	}
	if(char == "?") {
		GoblinOne_letter0x3f(steps, height);
	}
	if(char == "@") {
		GoblinOne_letter0x40(steps, height);
	}
	if(char == "A") {
		GoblinOne_letter0x41(steps, height);
	}
	if(char == "B") {
		GoblinOne_letter0x42(steps, height);
	}
	if(char == "C") {
		GoblinOne_letter0x43(steps, height);
	}
	if(char == "D") {
		GoblinOne_letter0x44(steps, height);
	}
	if(char == "E") {
		GoblinOne_letter0x45(steps, height);
	}
	if(char == "F") {
		GoblinOne_letter0x46(steps, height);
	}
	if(char == "G") {
		GoblinOne_letter0x47(steps, height);
	}
	if(char == "H") {
		GoblinOne_letter0x48(steps, height);
	}
	if(char == "I") {
		GoblinOne_letter0x49(steps, height);
	}
	if(char == "J") {
		GoblinOne_letter0x4a(steps, height);
	}
	if(char == "K") {
		GoblinOne_letter0x4b(steps, height);
	}
	if(char == "L") {
		GoblinOne_letter0x4c(steps, height);
	}
	if(char == "M") {
		GoblinOne_letter0x4d(steps, height);
	}
	if(char == "N") {
		GoblinOne_letter0x4e(steps, height);
	}
	if(char == "O") {
		GoblinOne_letter0x4f(steps, height);
	}
	if(char == "P") {
		GoblinOne_letter0x50(steps, height);
	}
	if(char == "Q") {
		GoblinOne_letter0x51(steps, height);
	}
	if(char == "R") {
		GoblinOne_letter0x52(steps, height);
	}
	if(char == "S") {
		GoblinOne_letter0x53(steps, height);
	}
	if(char == "T") {
		GoblinOne_letter0x54(steps, height);
	}
	if(char == "U") {
		GoblinOne_letter0x55(steps, height);
	}
	if(char == "V") {
		GoblinOne_letter0x56(steps, height);
	}
	if(char == "W") {
		GoblinOne_letter0x57(steps, height);
	}
	if(char == "X") {
		GoblinOne_letter0x58(steps, height);
	}
	if(char == "Y") {
		GoblinOne_letter0x59(steps, height);
	}
	if(char == "Z") {
		GoblinOne_letter0x5a(steps, height);
	}
	if(char == "[") {
		GoblinOne_letter0x5b(steps, height);
	}
	if(char == "\\") {
		GoblinOne_letter0x5c(steps, height);
	}
	if(char == "]") {
		GoblinOne_letter0x5d(steps, height);
	}
	if(char == "^") {
		GoblinOne_letter0x5e(steps, height);
	}
	if(char == "_") {
		GoblinOne_letter0x5f(steps, height);
	}
	if(char == "`") {
		GoblinOne_letter0x60(steps, height);
	}
	if(char == "a") {
		GoblinOne_letter0x61(steps, height);
	}
	if(char == "b") {
		GoblinOne_letter0x62(steps, height);
	}
	if(char == "c") {
		GoblinOne_letter0x63(steps, height);
	}
	if(char == "d") {
		GoblinOne_letter0x64(steps, height);
	}
	if(char == "e") {
		GoblinOne_letter0x65(steps, height);
	}
	if(char == "f") {
		GoblinOne_letter0x66(steps, height);
	}
	if(char == "g") {
		GoblinOne_letter0x67(steps, height);
	}
	if(char == "h") {
		GoblinOne_letter0x68(steps, height);
	}
	if(char == "i") {
		GoblinOne_letter0x69(steps, height);
	}
	if(char == "j") {
		GoblinOne_letter0x6a(steps, height);
	}
	if(char == "k") {
		GoblinOne_letter0x6b(steps, height);
	}
	if(char == "l") {
		GoblinOne_letter0x6c(steps, height);
	}
	if(char == "m") {
		GoblinOne_letter0x6d(steps, height);
	}
	if(char == "n") {
		GoblinOne_letter0x6e(steps, height);
	}
	if(char == "o") {
		GoblinOne_letter0x6f(steps, height);
	}
	if(char == "p") {
		GoblinOne_letter0x70(steps, height);
	}
	if(char == "q") {
		GoblinOne_letter0x71(steps, height);
	}
	if(char == "r") {
		GoblinOne_letter0x72(steps, height);
	}
	if(char == "s") {
		GoblinOne_letter0x73(steps, height);
	}
	if(char == "t") {
		GoblinOne_letter0x74(steps, height);
	}
	if(char == "u") {
		GoblinOne_letter0x75(steps, height);
	}
	if(char == "v") {
		GoblinOne_letter0x76(steps, height);
	}
	if(char == "w") {
		GoblinOne_letter0x77(steps, height);
	}
	if(char == "x") {
		GoblinOne_letter0x78(steps, height);
	}
	if(char == "y") {
		GoblinOne_letter0x79(steps, height);
	}
	if(char == "z") {
		GoblinOne_letter0x7a(steps, height);
	}
	if(char == "{") {
		GoblinOne_letter0x7b(steps, height);
	}
	if(char == "|") {
		GoblinOne_letter0x7c(steps, height);
	}
	if(char == "}") {
		GoblinOne_letter0x7d(steps, height);
	}
	if(char == "~") {
		GoblinOne_letter0x7e(steps, height);
	}
}

module GoblinOne(strArr, steps=2, center=false, extra = 0, height = 10) {
	if(center) {
		translate([-GoblinOne_width(strArr, extra)/2, 0, 0])
			GoblinOne_str(strArr, steps, extra, height);
	}
	else {
		GoblinOne_str(strArr, steps, extra, height);
	}
}

module GoblinOne_str(strArr, steps=2, extra, height = 10) {
	for(i = [0:len(strArr)-1]) {
		assign(char = strArr[i]) {
			if(i == 0) {
				translate([0, 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 1) {
				translate([GoblinOne_letter_space(strArr[0], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 2) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 3) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 4) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 5) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 6) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 7) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 8) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 9) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 10) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 11) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 12) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 13) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 14) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 15) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 16) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 17) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 18) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 19) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 20) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 21) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 22) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 23) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 24) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 25) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 26) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 27) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 28) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 29) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 30) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 31) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 32) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 33) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 34) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 35) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 36) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 37) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 38) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 39) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 40) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 41) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 42) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 43) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 44) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 45) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 46) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 47) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 48) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 49) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 50) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 51) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 52) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 53) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 54) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 55) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 56) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 57) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 58) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 59) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 60) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 61) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 62) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 63) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 64) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 65) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 66) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 67) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 68) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 69) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 70) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 71) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 72) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 73) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 74) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 75) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 76) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 77) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 78) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 79) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 80) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 81) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 82) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 83) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 84) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 85) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 86) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 87) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 88) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 89) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 90) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 91) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 92) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 93) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 94) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 95) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 96) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra)+GoblinOne_letter_space(strArr[95], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 97) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra)+GoblinOne_letter_space(strArr[95], extra)+GoblinOne_letter_space(strArr[96], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 98) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra)+GoblinOne_letter_space(strArr[95], extra)+GoblinOne_letter_space(strArr[96], extra)+GoblinOne_letter_space(strArr[97], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			else if(i == 99) {
				translate([GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra)+GoblinOne_letter_space(strArr[95], extra)+GoblinOne_letter_space(strArr[96], extra)+GoblinOne_letter_space(strArr[97], extra)+GoblinOne_letter_space(strArr[98], extra), 0, 0])
					GoblinOne_letter(char, steps, height);
			}
			}
		}
	}

function GoblinOne_width(strArr, extra = 0) =
	(len(strArr) == 0) ? (
		0) : (len(strArr) == 1) ? (
		GoblinOne_letter_space(strArr[0], extra)) : (len(strArr) == 2) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)) : (len(strArr) == 3) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)) : (len(strArr) == 4) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)) : (len(strArr) == 5) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)) : (len(strArr) == 6) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)) : (len(strArr) == 7) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)) : (len(strArr) == 8) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)) : (len(strArr) == 9) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)) : (len(strArr) == 10) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)) : (len(strArr) == 11) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)) : (len(strArr) == 12) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)) : (len(strArr) == 13) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)) : (len(strArr) == 14) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)) : (len(strArr) == 15) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)) : (len(strArr) == 16) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)) : (len(strArr) == 17) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)) : (len(strArr) == 18) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)) : (len(strArr) == 19) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)) : (len(strArr) == 20) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)) : (len(strArr) == 21) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)) : (len(strArr) == 22) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)) : (len(strArr) == 23) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)) : (len(strArr) == 24) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)) : (len(strArr) == 25) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)) : (len(strArr) == 26) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)) : (len(strArr) == 27) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)) : (len(strArr) == 28) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)) : (len(strArr) == 29) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)) : (len(strArr) == 30) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)) : (len(strArr) == 31) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)) : (len(strArr) == 32) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)) : (len(strArr) == 33) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)) : (len(strArr) == 34) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)) : (len(strArr) == 35) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)) : (len(strArr) == 36) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)) : (len(strArr) == 37) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)) : (len(strArr) == 38) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)) : (len(strArr) == 39) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)) : (len(strArr) == 40) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)) : (len(strArr) == 41) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)) : (len(strArr) == 42) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)) : (len(strArr) == 43) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)) : (len(strArr) == 44) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)) : (len(strArr) == 45) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)) : (len(strArr) == 46) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)) : (len(strArr) == 47) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)) : (len(strArr) == 48) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)) : (len(strArr) == 49) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)) : (len(strArr) == 50) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)) : (len(strArr) == 51) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)) : (len(strArr) == 52) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)) : (len(strArr) == 53) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)) : (len(strArr) == 54) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)) : (len(strArr) == 55) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)) : (len(strArr) == 56) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)) : (len(strArr) == 57) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)) : (len(strArr) == 58) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)) : (len(strArr) == 59) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)) : (len(strArr) == 60) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)) : (len(strArr) == 61) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)) : (len(strArr) == 62) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)) : (len(strArr) == 63) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)) : (len(strArr) == 64) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)) : (len(strArr) == 65) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)) : (len(strArr) == 66) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)) : (len(strArr) == 67) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)) : (len(strArr) == 68) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)) : (len(strArr) == 69) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)) : (len(strArr) == 70) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)) : (len(strArr) == 71) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)) : (len(strArr) == 72) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)) : (len(strArr) == 73) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)) : (len(strArr) == 74) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)) : (len(strArr) == 75) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)) : (len(strArr) == 76) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)) : (len(strArr) == 77) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)) : (len(strArr) == 78) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)) : (len(strArr) == 79) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)) : (len(strArr) == 80) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)) : (len(strArr) == 81) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)) : (len(strArr) == 82) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)) : (len(strArr) == 83) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)) : (len(strArr) == 84) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)) : (len(strArr) == 85) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)) : (len(strArr) == 86) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)) : (len(strArr) == 87) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)) : (len(strArr) == 88) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)) : (len(strArr) == 89) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)) : (len(strArr) == 90) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)) : (len(strArr) == 91) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)) : (len(strArr) == 92) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)) : (len(strArr) == 93) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)) : (len(strArr) == 94) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)) : (len(strArr) == 95) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra)) : (len(strArr) == 96) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra)+GoblinOne_letter_space(strArr[95], extra)) : (len(strArr) == 97) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra)+GoblinOne_letter_space(strArr[95], extra)+GoblinOne_letter_space(strArr[96], extra)) : (len(strArr) == 98) ? (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra)+GoblinOne_letter_space(strArr[95], extra)+GoblinOne_letter_space(strArr[96], extra)+GoblinOne_letter_space(strArr[97], extra)) : (
		GoblinOne_letter_space(strArr[0], extra)+GoblinOne_letter_space(strArr[1], extra)+GoblinOne_letter_space(strArr[2], extra)+GoblinOne_letter_space(strArr[3], extra)+GoblinOne_letter_space(strArr[4], extra)+GoblinOne_letter_space(strArr[5], extra)+GoblinOne_letter_space(strArr[6], extra)+GoblinOne_letter_space(strArr[7], extra)+GoblinOne_letter_space(strArr[8], extra)+GoblinOne_letter_space(strArr[9], extra)+GoblinOne_letter_space(strArr[10], extra)+GoblinOne_letter_space(strArr[11], extra)+GoblinOne_letter_space(strArr[12], extra)+GoblinOne_letter_space(strArr[13], extra)+GoblinOne_letter_space(strArr[14], extra)+GoblinOne_letter_space(strArr[15], extra)+GoblinOne_letter_space(strArr[16], extra)+GoblinOne_letter_space(strArr[17], extra)+GoblinOne_letter_space(strArr[18], extra)+GoblinOne_letter_space(strArr[19], extra)+GoblinOne_letter_space(strArr[20], extra)+GoblinOne_letter_space(strArr[21], extra)+GoblinOne_letter_space(strArr[22], extra)+GoblinOne_letter_space(strArr[23], extra)+GoblinOne_letter_space(strArr[24], extra)+GoblinOne_letter_space(strArr[25], extra)+GoblinOne_letter_space(strArr[26], extra)+GoblinOne_letter_space(strArr[27], extra)+GoblinOne_letter_space(strArr[28], extra)+GoblinOne_letter_space(strArr[29], extra)+GoblinOne_letter_space(strArr[30], extra)+GoblinOne_letter_space(strArr[31], extra)+GoblinOne_letter_space(strArr[32], extra)+GoblinOne_letter_space(strArr[33], extra)+GoblinOne_letter_space(strArr[34], extra)+GoblinOne_letter_space(strArr[35], extra)+GoblinOne_letter_space(strArr[36], extra)+GoblinOne_letter_space(strArr[37], extra)+GoblinOne_letter_space(strArr[38], extra)+GoblinOne_letter_space(strArr[39], extra)+GoblinOne_letter_space(strArr[40], extra)+GoblinOne_letter_space(strArr[41], extra)+GoblinOne_letter_space(strArr[42], extra)+GoblinOne_letter_space(strArr[43], extra)+GoblinOne_letter_space(strArr[44], extra)+GoblinOne_letter_space(strArr[45], extra)+GoblinOne_letter_space(strArr[46], extra)+GoblinOne_letter_space(strArr[47], extra)+GoblinOne_letter_space(strArr[48], extra)+GoblinOne_letter_space(strArr[49], extra)+GoblinOne_letter_space(strArr[50], extra)+GoblinOne_letter_space(strArr[51], extra)+GoblinOne_letter_space(strArr[52], extra)+GoblinOne_letter_space(strArr[53], extra)+GoblinOne_letter_space(strArr[54], extra)+GoblinOne_letter_space(strArr[55], extra)+GoblinOne_letter_space(strArr[56], extra)+GoblinOne_letter_space(strArr[57], extra)+GoblinOne_letter_space(strArr[58], extra)+GoblinOne_letter_space(strArr[59], extra)+GoblinOne_letter_space(strArr[60], extra)+GoblinOne_letter_space(strArr[61], extra)+GoblinOne_letter_space(strArr[62], extra)+GoblinOne_letter_space(strArr[63], extra)+GoblinOne_letter_space(strArr[64], extra)+GoblinOne_letter_space(strArr[65], extra)+GoblinOne_letter_space(strArr[66], extra)+GoblinOne_letter_space(strArr[67], extra)+GoblinOne_letter_space(strArr[68], extra)+GoblinOne_letter_space(strArr[69], extra)+GoblinOne_letter_space(strArr[70], extra)+GoblinOne_letter_space(strArr[71], extra)+GoblinOne_letter_space(strArr[72], extra)+GoblinOne_letter_space(strArr[73], extra)+GoblinOne_letter_space(strArr[74], extra)+GoblinOne_letter_space(strArr[75], extra)+GoblinOne_letter_space(strArr[76], extra)+GoblinOne_letter_space(strArr[77], extra)+GoblinOne_letter_space(strArr[78], extra)+GoblinOne_letter_space(strArr[79], extra)+GoblinOne_letter_space(strArr[80], extra)+GoblinOne_letter_space(strArr[81], extra)+GoblinOne_letter_space(strArr[82], extra)+GoblinOne_letter_space(strArr[83], extra)+GoblinOne_letter_space(strArr[84], extra)+GoblinOne_letter_space(strArr[85], extra)+GoblinOne_letter_space(strArr[86], extra)+GoblinOne_letter_space(strArr[87], extra)+GoblinOne_letter_space(strArr[88], extra)+GoblinOne_letter_space(strArr[89], extra)+GoblinOne_letter_space(strArr[90], extra)+GoblinOne_letter_space(strArr[91], extra)+GoblinOne_letter_space(strArr[92], extra)+GoblinOne_letter_space(strArr[93], extra)+GoblinOne_letter_space(strArr[94], extra)+GoblinOne_letter_space(strArr[95], extra)+GoblinOne_letter_space(strArr[96], extra)+GoblinOne_letter_space(strArr[97], extra)+GoblinOne_letter_space(strArr[98], extra));




module BezConic(p0,p1,p2,steps=5,h=10) {

	stepsize1 = (p1-p0)/steps;
	stepsize2 = (p2-p1)/steps;

	for (i=[0:steps-1]) {
		assign(point1 = p0+stepsize1*i) 
		assign(point2 = p1+stepsize2*i) 
		assign(point3 = p0+stepsize1*(i+1))
		assign(point4 = p1+stepsize2*(i+1))
		assign(bpoint1 = point1+(point2-point1)*(i/steps))
		assign(bpoint2 = point3+(point4-point3)*((i+1)/steps)) {
			if(h == 0) {
				polygon(points=[bpoint1,bpoint2,p1]);
			}
			else {
				linear_extrude(height=h) {
					polygon(points=[bpoint1,bpoint2,p1]);
				}
			}
		}
	}
}