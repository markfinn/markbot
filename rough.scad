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

module pack(){
	d=23.1;
	l=43.2;

	for (x = [-3 : 3])
	translate([(d+.2)*x, -d/2,0])
	cylinder(r=d/2, h=l);
}

module sla6v(){
//Power Sonic6.0V SLA 6100
//6v 12ah 71oz  $16.95 http://www.cheapbatterypacks.com/product/660/1171/Power-Sonic60V-SLA-6100.aspx
	cube([94,151.1,55.9]);
}

module markbot()
{
	basea=10*25.4;
	baseb=basea-25;
	cover_h=70;
	cover_t=3;
	plate_t=6;
	plate_lip=4;
	ground_clear=30;
	wheel_r=50;
	wcutclear=20;
	wcutl=110;
	wcutw=70;
	tower_w=100;
	tower_bar_t=15;
	tower_h=5*12*25.4;
	caster_width=250;

	wheel_offset = wheel_r - (ground_clear + plate_t);

	translate([0,0,wheel_offset])
	union(){
		//wheels
/*		translate([ (basea-wcutw/2-wcutclear), (baseb-wcutl/2-wcutclear),0])  rotate(a=90, v=[0,1,0]) wheel();
		translate([-(basea-wcutw/2-wcutclear), (baseb-wcutl/2-wcutclear),0]) rotate(a=90, v=[0,1,0]) mirror() wheel();
		translate([-(basea-wcutw/2-wcutclear),-(baseb-wcutl/2-wcutclear),0])  rotate(a=90, v=[0,1,0]) wheel();
		translate([ (basea-wcutw/2-wcutclear),-(baseb-wcutl/2-wcutclear),0]) rotate(a=90, v=[0,1,0]) mirror() wheel();
*/
		//motors
		color("green", .80)
		translate([basea-wcutclear,80, 35.8/2]) rotate(a=90, v=[0,1,0]) motor();
		color("green", .80)
		translate([basea-wcutclear,-80, 35.8/2]) rotate(a=90, v=[0,1,0]) motor();
		color("green", .80)
		translate([-basea+wcutclear,80, 35.8/2]) rotate(a=-90, v=[0,1,0]) motor();
		color("green", .80)
		translate([-basea+wcutclear,-80, 35.8/2]) rotate(a=-90, v=[0,1,0]) motor();

		//batteries
		color("red", .80)
/*		for (a = [ 0 : 180: 180])
		for (y = [-90 : 180: 90])
		rotate(a=a, v=[0,0,1])
		translate([-(basea-wcutw-2*wcutclear),y,0])
		rotate(a=90, v=[0,0,1])
		pack();
*/
		for (a = [ 0 : 180: 180])
		for (y = [-90 : 180: 90])
		rotate(a=a, v=[0,0,1])
		translate([-(basea-wcutw-2*wcutclear),y,0])
		//rotate(a=90, v=[0,0,1])
		sla6v();

//plate
		color("gray", .80)
		translate([0,0,-plate_t/2])
		difference(){
			cube([basea*2, baseb*2,plate_t], center=true);

			//lip
			translate([0,0,plate_t-plate_lip])
			difference(){
				cube([basea*2, baseb*2,plate_lip], center=true);
				cube([basea*2-cover_t, baseb*2-cover_t,plate_lip], center=true);
			}

			//wheel cutouts
			translate([ (basea-wcutw/2-wcutclear), (baseb-wcutl/2-wcutclear),0]) cube([wcutw,wcutl,plate_t*3], center=true);
			translate([-(basea-wcutw/2-wcutclear), (baseb-wcutl/2-wcutclear),0]) cube([wcutw,wcutl,plate_t*3], center=true);
			translate([ (basea-wcutw/2-wcutclear),-(baseb-wcutl/2-wcutclear),0]) cube([wcutw,wcutl,plate_t*3], center=true);
			translate([-(basea-wcutw/2-wcutclear),-(baseb-wcutl/2-wcutclear),0]) cube([wcutw,wcutl,plate_t*3], center=true);

			//casters
			translate([caster_width/2,-baseb,0])
			cube([30, 60, plate_t*2], center=true);
			translate([-caster_width/2,-baseb,0])
			cube([30, 60, plate_t*2], center=true);

		}

		//casters
		color("darkgray", .8)
		translate([caster_width/2,-baseb,-plate_t/2])
		rotate(a=90,v=[0,1,0])
		cylinder(r=25, h=25, center=true);
		color("darkgray", .8)
		translate([-caster_width/2,-baseb,-plate_t/2])
		rotate(a=90,v=[0,1,0])
		cylinder(r=25, h=25, center=true);

		//cover
		color("purple", .20)
		translate([0,0,cover_h/2-plate_lip])
		difference(){
			cube([basea*2, baseb*2,cover_h], center=true);
			translate([0,0,-cover_t])
			cube([basea*2-cover_t, baseb*2-cover_t,cover_h], center=true);

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


		//screen
		color("teal", .9)
		translate([0,tower_w/2+40,tower_h-150])
		rotate(a=-70, v=[1,0,0])
		cube([140,240,10], center=true);

		//camera
		color("pink", .9)
		translate([0,tower_w/2+10,tower_h])
		rotate(a=-70, v=[1,0,0])
		union(){
			sphere(r=20);
			cylinder(r=10, h=25);
		}

	}

}

markbot();

