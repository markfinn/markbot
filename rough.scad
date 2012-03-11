include<mcwheel/wheel.scad>

module mwheel()
{
//import_stl("mcwheel/disp_wheel.stl", convexity = 10);
wheel(wheels=1, hardware=1);
}



//http://www.ebay.com/itm/Outrunner-C4250-KV600-brushless-motor-EMP-for-airplane-Free-Shipping-/230747667130?pt=Radio_Control_Parts_Accessories&hash=item35b9a1faba#ht_3788wt_1299
module motor()
{
sh_d=3.2;
mb_l=50;
m_d=35.8;
tot_l=91;
sh_l=7.6;//=tot_l-mb_l;

translate([0,0,-mb_l])
union(){
cylinder(r=m_d/2, h=mb_l);
translate([0,0,mb_l/2])
cylinder(r=sh_d/2, h=sh_l+mb_l/2);
}
}

module battery()
{
d=23.1;
l=43.2;

translate([0,0,0])
cylinder(r=d/2, h=l);
}

module pack(plate_r){

		for (x = [-3 : 3])
		translate([23.3*x, plate_r-25,0])
		battery();
}

module markbot()
{
	basea=170;
	baseb=basea-25;
	plate_r=12*25.4;
	cover_h=100;
	cover_t=6;
	plate_t=10;
	plate_lip=4;
	ground_clear=30;
	wheel_r=50;
	wcutl=110;
	wcutw=70;
	tower_w=150;
	tower_bar_t=15;
	tower_h=5*12*25.4;

	wheel_offset = wheel_r - (ground_clear + plate_t);

	translate([0,0,wheel_offset])
	union(){
		//wheels
//		translate([ basea, baseb,0]) rotate(a=90, v=[0,1,0]) wheel();
//		translate([-basea, baseb,0]) rotate(a=90, v=[0,1,0]) mirror() wheel();
//		translate([-basea,-baseb,0]) rotate(a=90, v=[0,1,0]) wheel();
//		translate([ basea,-baseb,0]) rotate(a=90, v=[0,1,0]) mirror() wheel();

		//motors
		color("green", .80)
		rotate(a=0, v=[0,0,1])	translate([basea+25,40, 35.8/2]) rotate(a=90, v=[0,1,0]) motor();
		color("green", .80)
		rotate(a=0, v=[0,0,1])	translate([basea+25,-40, 35.8/2]) rotate(a=90, v=[0,1,0]) motor();
		color("green", .80)
		rotate(a=0, v=[0,0,1])	translate([-basea-25,40, 35.8/2]) rotate(a=-90, v=[0,1,0]) motor();
		color("green", .80)
		rotate(a=0, v=[0,0,1])	translate([-basea-25,-40, 35.8/2]) rotate(a=-90, v=[0,1,0]) motor();

		//batteries
		color("red", .80)
		for (x = [0 : 90: 270])
		for (y = [-18 : 36: 18])
		rotate(a=x+y, v=[0,0,1])
		pack(plate_r);

		//plate
		color("gray", .80)
		translate([0,0,-plate_t])
		difference(){
			cylinder(r=plate_r, h=plate_t);
			translate([0,0,plate_t-plate_lip])
			difference(){
				cylinder(r=plate_r, h=plate_lip);
				cylinder(r=plate_r-cover_t, h=plate_lip);
			}

			translate([ basea, baseb,0]) cube([wcutw,wcutl,plate_t*3], center=true);
			translate([-basea, baseb,0]) cube([wcutw,wcutl,plate_t*3], center=true);
			translate([-basea,-baseb,0]) cube([wcutw,wcutl,plate_t*3], center=true);
			translate([ basea,-baseb,0]) cube([wcutw,wcutl,plate_t*3], center=true);

		}

		//cover
		color("purple", .20)
		translate([0,0,-plate_t])
		difference(){
			cylinder(r=plate_r, h=cover_h);
			translate([0,0,-cover_t])
			cylinder(r=plate_r-cover_t, h=cover_h);

			translate([ basea, baseb,0]) cube([wcutw,wcutl,plate_t*3], center=true);
			translate([-basea, baseb,0]) cube([wcutw,wcutl,plate_t*3], center=true);
			translate([-basea,-baseb,0]) cube([wcutw,wcutl,plate_t*3], center=true);
			translate([ basea,-baseb,0]) cube([wcutw,wcutl,plate_t*3], center=true);

		}


		//tower
		color("gray", .80)
		union(){
			rotate(a=0, v=[0,0,1])
			translate([ tower_w/2-tower_bar_t,tower_w/2-tower_bar_t,0])
			cube([tower_bar_t,tower_bar_t,tower_h]);
			rotate(a=90, v=[0,0,1])
			translate([ tower_w/2-tower_bar_t,tower_w/2-tower_bar_t,0])
			cube([tower_bar_t,tower_bar_t,tower_h]);
			rotate(a=180, v=[0,0,1])
			translate([ tower_w/2-tower_bar_t,tower_w/2-tower_bar_t,0])
			cube([tower_bar_t,tower_bar_t,tower_h]);
			rotate(a=270, v=[0,0,1])
			translate([ tower_w/2-tower_bar_t,tower_w/2-tower_bar_t,0])
			cube([tower_bar_t,tower_bar_t,tower_h]);

		}


	}

}

markbot();

