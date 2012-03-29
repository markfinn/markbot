$fn=50;
//omnidirectional camera.
//mine is based on a silver christmas ball ornament, 4 pieces of steel/aluminum bar or sheet, 2 reprapped parts, a small piece of glass, and a disassembled logitech HD webcam C510 camera.
// mine nounts on top of a 2" PVC pipe.
// uncomment the right module at the bottom to display the completed assembly vs showing the printable parts.

//should it be in it's own directory?
//thingiverse
//thingiverse link in git readme
//git


//most of the case adds clearances for you, so for instance you should enter the size of your camera, and I will make the hole for it slightly bigger automatically.
//this does not apply to drill holes.  you specify the actual diameter/depth you want

//christmas ball parameters. measure yours.
ball_d=1.758*25.4;
top_d=.504*25.4;
top_h=.268*25.4;


//camera sizes.  mine is modeled as a rectangle with corners clipped at 45 degrees

//lens - measured from top of circuit board for height.
lens_d=.47*25.4;
lens_l=.303*25.4;

//circuit board size.  everything assumes the reference plane is the top of the board (top being the side the lens is on), centered on the lens center.
//top and bot clear are the mox space taken up by components on each side of the board.
//corner clip is the side distance missing in one clipped corner (side, not hypotenuse)
//holes is a vector of screw hole locations [x,y,diameter], and is used in the camera model and in placing standoffs in the case
cam_h=.039*25.4;
cam_w=.827*25.4;
cam_l=2.151*25.4;
cam_top_clear = .2*25.4;
cam_bot_clear = .18*25.4;
cam_corner_clip_d=.2*25.4;
cam_holes = [[.825*25.4,-.345*25.4,.068*25.4], [-.752*25.4,.356*25.4,.068*25.4]];
cam_cord_d = .11*25.4;

//how to make the camera standoffs in the case.  d/depth are the hole sizes (smaller than the hole in the camera board so the screw will grab).
//clear is how much space is clear around the hole in the camera board.  how wide the standoff can be.
drill_d = .05*25.4;
drill_depth = 10;
drill_clear_r = .072*25.4;



//these are the main sizes of the device.  
//dist is the distance from the lens to the ball reflector.  choose yours so that the camera just barely clips oss the edges of the ball, since the very edges don't give usefull information anyway.
dist=2.5*25.4;
//the radius of the inside of the strut positions
strut_r = ball_d/2+3;
//where to place the struts.  I chose 4 regularly placed ones offset by 45 degrees becasue that gives me a clear forward/back view, my struts are thin so I don't mind having 4 of them (vs 3), and they don't run through the camera board in this configuration.
strut_angles=[45,135,225,315];


//strut information.  I was going to use 1/8th inch by 3/4" extruded aluminum, but I have some .065 steel and a plasma cutter, so I should be able to make some thinner ones that don't block the view.
strut_t=.065*25.4;
strut_w=.4*25.4;
//this is the cutouts in the otherwise rectangular struts.  it gets the strut a little further from the reflector so that the view is slightly less obscured
cut_r = 90;
cut_d = strut_w/2;
cut_s = 10;
//how far into the cap do the struts penetrate
cap_strut_d = 20;
//how far away from the reflector does the cap go before it starts receding upwards to stay out of the viewing path
cap_lip=2;
//what angle does the cap recede upwards at
cap_recede_angle=15;

//sizes for the small glass window that the camera looks through.
glass_side = 25.4;
glass_t = .112*25.4;
glass_inset = 2;

//cover is the piece that seals the camera into the case
//how thick is the cover
cover_t=3;
//how far does the cover overlap on the sides
cover_overlap = 16;
//how big are the screw holes in the cover
cover_hole_d=.115*25.4;
//how big and deep are the screw holes for the cover, in the case
cover_case_hole_d=.1*25.4;
cover_case_hole_depth=.4*25.4;

//pvc pipe dimmensions for the mounting sleeve, and for the display rendering
pvcpipe_od = 2.375*25.4; //2" nominal sch 40/80pvc pipe
pvcpipe_h=50;
//diameter of the holes where I plan to screw through into the pvc pipe.  I'm going to use drywall screws, but a better long-term idea might be to add nut traps and glue in nuts, then use thumbscrewes.  
post_drill_d=.115*25.4;





//more main sizes of the device, but I'm letting these derive themselves.
//how big is the cap
cap_r = strut_r+strut_w+3;
cap_h = ball_d/2 + top_h + 3;
//the two thicknesses of the case.  over is above the reference plane of the camera, under is below it.
case_depth_over=glass_inset+lens_l+2;
case_depth_under=cam_bot_clear+cam_h+2;
//the baseline distance from the center of the ball reflector to the camera reference plane
base = ball_d/2 + dist + lens_l;
//the computed length of the struts
strut_l = cap_strut_d+base + case_depth_under-3;
echo("computed strut length:", strut_l);




module xmasball(topper=0){


	color("silver", .8)
	union(){
		sphere(r=ball_d/2);
		cylinder(r=top_d/2, h=ball_d/2+top_h);
	}

	//for display only -- add the little topper
	if (topper){
		color("DarkSlateGray", .8)
		union(){
			difference(){
				cylinder(r=top_d/2+1, h=ball_d/2+top_h+1);
				translate([0,0,-ball_d/2])
				difference(){
					cylinder(r=top_d/2+3, h=ball_d+3);
					translate([0,0,ball_d+3])
					for (a=[0:120:360])
					rotate([90,0,a])
					cylinder(r=(top_d/2+1)/2, h=top_d*2, center=true);
				}
			}
			translate([0,0,ball_d/2+9/2+top_h])
			rotate([90,90,0])
			difference(){
				cylinder(r=9/2, h=1, center=true);
				cylinder(r=8/2, h=2, center=true);
			}
		}
		
	}
}


module camera_vault_shape(clearance=0, h=100)
{
//this is the main shape of the camera board.  used several times in the code

	difference(){
		cube([cam_l+clearance*2,cam_w+clearance*2,h], center=true);
		for (m=[[0,0,0], [1,0,0], [0,1,0], [1,1,0]]){
			mirror(m)
			translate([cam_w/2+cam_l/2-cam_corner_clip_d+clearance*sqrt(2),0,0])
			rotate([0,0,45])
			translate([0,-50,-h])
			cube([100,100,h*2]);
		}
	}
}


module camera()
{
//model the camera

	color("red", .8)
	difference(){
		union(){
			//board
			translate([0,0,-cam_h/2])
			camera_vault_shape(clearance=0, h=cam_h);

			//lens
			cylinder(r=lens_d/2, h=lens_l+.01);
		}

		//drill holes in board
		for (h=cam_holes){
			translate([h[0],h[1],0])
			cylinder(r=h[2]/2, h=100, center=true);
		}
	}

}

module strut()
{
//this is the metal struts that hold the reflector and cap up

recede = tan(cap_recede_angle)*(cut_d+strut_r-(ball_d/2+cap_lip));  //how much does the edge of the cap recede upwards to allow the camera to view above horizontal

	color("blue", .8)
	difference(){
		//flat stock
		cube([strut_w,strut_t,strut_l]);

		//make the cutout
		translate([cut_d-cut_r,0, strut_l - cap_strut_d])
		rotate([90,0,0])
		difference(){
			cylinder(r=cut_r, h=100, center=true);
			translate([-100,recede,-10])
			cube([200,20,20]);
		}
	}
}

module cap(){
//the top piece that holds the reflector

recede = tan(cap_recede_angle)*(cap_r-(ball_d/2+cap_lip));  //how much does the edge of the cap recede upwards to allow the camera to view above horizontal

	color("yellow", .8)
	difference()
	{
		//the main body of the cap
		union(){
			translate([0,0,recede-.01])
			cylinder(r=cap_r, h=cap_h-(recede-.01));
			cylinder(r2=cap_r, r1=ball_d/2+cap_lip, h=recede);
		}

		//cutout for the reflector ball ornament
		sphere(r=ball_d/2+1);
		cylinder(r=top_d/2+1, h=ball_d/2+top_h+1);

		//cutout for the strut holes
		for (a = strut_angles){
			rotate([0,0,a])
			translate([strut_r-1,-strut_t/2-1,0])
			cube([strut_w+2,strut_t+2,cap_strut_d]);
		}
	}
}

module case(){

	color("yellow", .8)
	translate([0,0,-case_depth_under-pvcpipe_h])
	difference(){
		union(){
			difference()
			{
				//main body
				cylinder(r=cap_r, h=case_depth_over+case_depth_under+pvcpipe_h);

				//strut holes
				for (a = strut_angles){
					rotate([0,0,a])
					translate([strut_r-1,-strut_t/2-1,4+pvcpipe_h])
					cube([strut_w+2,strut_t+2,case_depth_over+case_depth_under-2]);
				}

				//camera body hole
				camera_vault_shape(clearance=1, h=(case_depth_under+cam_top_clear+pvcpipe_h)*2);

				//camera lens hole
				cylinder(r=lens_d/2+1, h=500);

				//camera cord tunnel
				translate([0,0,pvcpipe_h])
				rotate([90,0,0])
				intersection(){
					hull(){
						cylinder(r=(cam_cord_d+1.3)/2, h=cap_r*2, center=true);
						translate([0,(cam_cord_d+1.3)/2,0])
						cylinder(r=(cam_cord_d+1.3)/2, h=cap_r*2, center=true);
					}
					translate([-(cam_cord_d+1.3)/2,-(cam_cord_d+1.3),0])
					cube([cam_cord_d+1.3,(cam_cord_d+1.3)*2,(cover_overlap+cam_cord_d+1.3+.5)]);
				}

				//glass inset
				translate([-(glass_side+2)/2,-(glass_side+2)/2,case_depth_over+case_depth_under+pvcpipe_h-glass_inset])
				cube([glass_side+2, glass_side+2, glass_inset+1]);

				//pvc pipe mount hole
				cylinder(r=pvcpipe_od/2+1, h=pvcpipe_h*2, center=true);

			}

			//camera standoffs
			for (h=cam_holes){
				translate([h[0],h[1],case_depth_under+pvcpipe_h])
				cylinder(r=drill_clear_r, h=cam_top_clear);
			}
		}

		//camera standoff holes
		for (h=cam_holes){
			translate([h[0],h[1],case_depth_under+pvcpipe_h-1])
			cylinder(r=drill_d/2, h=drill_depth+1);
		}

		//cover screw holes
		for (m=[[0,0,0], [1,0,0], [0,1,0], [1,1,0]]){
			mirror(m)
			translate([cam_l/4,(cam_w+cover_overlap/2)/2,case_depth_under+pvcpipe_h-1])
			cylinder(r=cover_case_hole_d/2, h=cover_case_hole_depth*2, center=true);
		}

		//pvc pipe screw holes
		for (a=[0,120,240]){
			translate([0,0,pvcpipe_h/2])
			rotate([90,0,a])
			cylinder(r=post_drill_d/2, h=cap_r*2);
		}
	}
}

module glass(){
	color("aqua", .5)
	cube([glass_side, glass_side, glass_t]);
}

module cover(){
	color("yellow", .8)
	intersection(){
		difference(){
			union(){
				//main disk
				cylinder(r=pvcpipe_od/2, h=cover_t);

				//into the camera vault extrusion
				translate([0,0,3*3/2-.5])
				camera_vault_shape(clearance=.5, h=3+1);
			}

			//cover screw holes
			for (m=[[0,0,0], [1,0,0], [0,1,0], [1,1,0]]){
				mirror(m)
				translate([cam_l/4,(cam_w+cover_overlap/2)/2,])
				cylinder(r=cover_hole_d/2, h=cover_t*3, center=true);
			}
		}

		//clip it down on the sides
		cube([cap_r*2,cam_w+cover_overlap,20], center=true);
	}
}

module display(){

	xmasball();

	translate([0,0,-base])
	camera();


	for (a = strut_angles){
		rotate([0,0,a])
		translate([strut_r,-strut_t/2,-(base+case_depth_under-3)])
		strut();
	}

	cap();

	translate([0,0,-base])
	case();

	translate([-glass_side/2,-glass_side/2,case_depth_over-glass_inset-base])
	glass();

	translate([0,0,-base-case_depth_under-cover_t])
	cover();


	color("white", .8)
	translate([0,0,-pvcpipe_h*2-base-case_depth_under])
	cylinder(r=pvcpipe_od/2, h=pvcpipe_h*2);


}

module print(reprap_only=0){

h=(strut_l/2+4+glass_side)/2;
	
	if(reprap_only==0){
		translate([2-h, cap_r +2, 0])
		rotate([90,0,90])
		strut();

		translate([-glass_side-2-h,cap_r +2,0])
		glass();

		translate([-glass_side-2-h,-cap_r-ball_d/2-2,0])
		rotate([45,0,45])
		xmasball(topper=1);
	}

	translate([-cap_r-2, 0, 0])
	rotate([180,0,0])
	translate([0, 0, -cap_h])
	cap();

	translate([cap_r+2, 0, 0])
	rotate([180,0,0])
	translate([0, 0, -case_depth_over])
	case();

	translate([0, -sqrt(pow(cap_r+4+pvcpipe_od/2, 2)-pow(cap_r+2,2)), 0])
	cover();

}

module print2d(){
	translate([50,50,0])
	projection(cut = true) {
		rotate([90,0,90])
		strut();

		translate([0,-glass_side-4,0])
		glass();
	}
}


//print(reprap_only=0);
print(reprap_only=1);
//print2d();
//display();
 


