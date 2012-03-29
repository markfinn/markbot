$fn=50;
//omnidirectional camera.
//mine is based on a silver christmas ball ornament, 4 pieces of steel/aluminum bar or sheet, 2 reprapped parts, a small piece of glass, and a disassembled logitech HD webcam C510 camera.
// mine nounts on top of a 2" PVC pipe.

//cover needs hole for cord
//cover and case need screw holes for holding cover on
//comment the variables
//git
//thingiverse
//thingiverse link in git readme

//christmas ball
ball_d=1.758*25.4;
top_d=.504*25.4;
top_h=.268*25.4;

lens_d=.47*25.4;
lens_l=.303*25.4;

cam_h=.039*25.4;
cam_w=.827*25.4;
cam_l=2.151*25.4;
cam_top_clear = .2*25.4;
cam_bot_clear = .18*25.4;
cam_holes = [[.825*25.4,-.345*25.4,.068*25.4], [-.752*25.4,.356*25.4,.068*25.4]];
drill_d = .05*25.4;
drill_depth = 10;
drill_clear_r = .072*25.4;



dist=2.5*25.4;
strut_r = ball_d/2+3;

strut_t=.065*25.4;
strut_w=.4*25.4;
strut_angles=[45,135,225,315];
cut_r = 90;
cut_d = strut_w/2;
cut_s = 10;

cap_r = strut_r+strut_w+3;
cap_h = ball_d/2 + top_h + 3;
cap_strut_d = 20;
lip=2;

glass_side = 25.4;
glass_t = .112*25.4;
glass_inset = 2;

case_depth_over=glass_inset+lens_l+2;
case_depth_under=cam_bot_clear+cam_h+2;

pvcpipe_od = 2.375*25.4; //2" nominal sch 40/80pvc pipe
pvcpipe_h=50;
post_drill_d=.115*25.4;

cover_t=3;

base = ball_d/2 + dist + lens_l;
strut_l = cap_strut_d+base + case_depth_under-3;


module xmasball(){


	color("silver", .8)
	union(){
		sphere(r=ball_d/2);
		cylinder(r=top_d/2, h=ball_d/2+top_h);
	}
}


module camera_vault_shape(clearance=0, h=100)
{

	difference(){
		cube([cam_l+clearance*2,cam_w+clearance*2,h], center=true);
		for (m=[[0,0,0], [1,0,0], [0,1,0], [1,1,0]]){
			mirror(m)
			translate([cam_w/2+cam_l/2-.2*25.4+clearance*sqrt(2),0,0])
			rotate([0,0,45])
			translate([0,-50,-h])
			cube([100,100,h*2]);
		}
	}
}


module camera(){


	color("red", .8)
	difference(){
		union(){
			translate([0,0,-cam_h/2])
			camera_vault_shape(clearance=0, h=cam_h);
			cylinder(r=lens_d/2, h=lens_l+.01);
		}

		for (h=cam_holes){
			translate([h[0],h[1],0])
			cylinder(r=h[2]/2, h=100, center=true);
		}
	}

}

module strut(){

recede = tan(15)*(cut_d+strut_r-(ball_d/2+lip));

	color("blue", .8)
	difference(){
		cube([strut_w,strut_t,strut_l]);

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
recede = tan(15)*(cap_r-(ball_d/2+lip));
	color("yellow", .8)
	difference()
	{
		union(){
			translate([0,0,recede-.01])
			cylinder(r=cap_r, h=cap_h-(recede-.01));
			cylinder(r2=cap_r, r1=ball_d/2+lip, h=recede);
		}

		sphere(r=ball_d/2+1);
		cylinder(r=top_d/2+1, h=ball_d/2+top_h+1);

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
				cylinder(r=cap_r, h=case_depth_over+case_depth_under+pvcpipe_h);

				for (a = strut_angles){
					rotate([0,0,a])
					translate([strut_r-1,-strut_t/2-1,4+pvcpipe_h])
					cube([strut_w+2,strut_t+2,case_depth_over+case_depth_under-2]);
				}

				camera_vault_shape(clearance=1, h=(case_depth_under+cam_top_clear+pvcpipe_h)*2);

				cylinder(r=lens_d/2+1, h=500);

				translate([-(glass_side+2)/2,-(glass_side+2)/2,case_depth_over+case_depth_under+pvcpipe_h-glass_inset])
				cube([glass_side+2, glass_side+2, glass_inset+1]);

				cylinder(r=pvcpipe_od/2+1, h=pvcpipe_h*2, center=true);

			}
			for (h=cam_holes){
				translate([h[0],h[1],case_depth_under+pvcpipe_h])
				cylinder(r=drill_clear_r, h=cam_top_clear);
			}
		}

		for (h=cam_holes){
			translate([h[0],h[1],case_depth_under+pvcpipe_h-1])
			cylinder(r=drill_d/2, h=drill_depth+1);
		}

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
	union(){
		cylinder(r=pvcpipe_od/2, h=cover_t);
		translate([0,0,3*3/2-.5])
		camera_vault_shape(clearance=.5, h=3+1);
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

/*
	color("white", .8)
	translate([0,0,-200-base-case_depth_under])
	cylinder(r=pvcpipe_od/2, h=200);
*/

}

module print(reprap_only=0){

h=(strut_l/2+4+glass_side)/2;
	
	if(reprap_only==0){
		translate([2-h, cap_r +2, 0])
		rotate([90,0,90])
		strut();

		translate([-glass_side-2-h,cap_r +2,0])
		glass();
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


//print(reprap_only=0);
print(reprap_only=1);
//display();
 


