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

module markbot()
{
	base=180;
	plate_r=225;
	plate_t=10;
	ground_clear=30;
	wheel_r=50;
	wcutl=110;
	wcutw=70;

	wheel_offset = wheel_r - (ground_clear + plate_t);

	translate([0,0,wheel_offset])
	union(){
		rotate(a=0, v=[0,0,1])	translate([base,0,0]) rotate(a=90, v=[0,1,0]) wheel();
		rotate(a=90, v=[0,0,1])	translate([base,0,0]) rotate(a=90, v=[0,1,0]) wheel();
		rotate(a=180, v=[0,0,1])	translate([base,0,0]) rotate(a=90, v=[0,1,0]) wheel();
		rotate(a=270, v=[0,0,1])	translate([base,0,0]) rotate(a=90, v=[0,1,0]) wheel();

		rotate(a=0, v=[0,0,1])	translate([base-45,21,21]) rotate(a=90, v=[0,1,0]) motor();

		for (x = [-1.5 : 1.5]){
		for (y = [-2 : 2]){
			translate([23.3*x, 23.3*y,0])
			battery();
		}
		}

		translate([0,0,-plate_t])
		difference(){
			cylinder(r=plate_r, h=plate_t);


			rotate(a=0, v=[0,0,1])	translate([base,0,0]) cube([wcutw,wcutl,plate_t*3], center=true);
			rotate(a=90, v=[0,0,1])	translate([base,0,0]) cube([wcutw,wcutl,plate_t*3], center=true);
			rotate(a=180, v=[0,0,1])	translate([base,0,0]) cube([wcutw,wcutl,plate_t*3], center=true);
			rotate(a=270, v=[0,0,1])	translate([base,0,0]) cube([wcutw,wcutl,plate_t*3], center=true);
		}


	}

}

markbot();

