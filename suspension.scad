include<mcwheel/wheel.scad>
use<../openscad/libraries/MCAD/involute_gears.scad>


//number of rollers on the wheel
rollers=7;

//These are the bearings that support the rollers
bearing_od=16;
bearing_id=5;
bearing_t=5;

//effective radius and roller radius
overall_contact_r=63;
rotor_r=16;

//some rotor definition number
rotor_l =72; //full length of a roller
rotor_mid_l=16; //length of the middle segment of a roller
floorclearance_t=4; //distance from the floor to a bearing bracket -- smaller means thicker/sturdier brackets but less clearance
rotorclearance_t=1; //distance between rollers and brackets. -- smaller means thicker/sturdier brackets but less clearance

//roller angles
rotor_angle=45;

//bracket thickness and width
outer_r=rotor_r-floorclearance_t;
brac_w = outer_r*2+2;
brac_t =6.5;

//hub fill in radius and thickness
hub_r=38;
hub_t=66;

//bearing catch flange demensions
lip_h = 3;
lip_w = brac_t - bearing_t + .5;

//holes in end of rotors for bolts
countersink_r=9.75/2;
countersink_d=5;

//planned rubber tread features
rubber_t=2;
rubber_grooves=3;
rubber_groove_d=1;

//viewing alpha
transparency=.85;



/****************/
hub_axle_r=4;
gear1_axle_r=2;
gear1_x_off=10;
gear1_y_off=10;
susp_th=10;
susp_h1=10;
susp_l=80;


robot_ground_clearannce = 38+12;
plate_t = 5;



/****************/








translate([-200, -(overall_contact_r - robot_ground_clearannce), -200])
color("gray", .5)
cube([400,plate_t,400]);


/****************/
//48 p 87 t spur gear http://www3.towerhobbies.com/cgi-bin/wti0001p?&I=LX3102&P=0
/*translate([0, 0,hub_t/2+20])
rotate(a=gear_off_angle,v=[0,0,1])
translate([(teeth2-teeth1) * pitch /2, 0,0])
gear(number_of_teeth=87, bore_diameter=2, hub_diameter=9, hub_thickness=innergear_w+75,
		diametral_pitch=48/25.4, 
		gear_thickness=innergear_w,
		rim_thickness=innergear_w,
		backlash=backlash,
		clearance=gear_clearance,
		pressure_angle=gear_pres_angle);
*/




/****************/
//A 6L51-014SF0604      gt2 14tooth  $2.24
//translate([0,25,16])
//union(){
//cylinder(r=.331*25.4/2,h=.356*25.4);
//translate([0,0,.355*25.4])
//cylinder(r=.5183*25.4/2,h=(.688-.355)*25.4);
//}





/****************
small gear
****************/

translate([0, 0,hub_t/2-innergear_w-hubrim_t])
rotate(a=gear_off_angle,v=[0,0,1])
translate([(teeth2-teeth1) * pitch /2, 0,0])
gear(number_of_teeth=teeth1, bore_diameter=2, hub_diameter=9, hub_thickness=innergear_w+75,
		diametral_pitch=1/pitch, 
		gear_thickness=innergear_w,
		rim_thickness=innergear_w,
		backlash=backlash,
		clearance=gear_clearance,
		pressure_angle=gear_pres_angle);




/*****
pulley
*****/


translate([0, 0,hub_t/2+20])
rotate(a=gear_off_angle,v=[0,0,1])
translate([(teeth2-teeth1) * pitch /2, 0,0])
import_stl("includedthings/pulley_gt2_3mm_65tooth.stl", convexity = 5);





/****************/
echo("modified involute gear clearance in mcad.");
union(){
	difference(){
		color("gray", .4) cylinder(r=50,h=hub_t, center=true);
//		wheel(wheels=0,hardware=0);
		translate([0,0,hub_t/2-(innergear_w+gear_side_clear*2)-hubrim_t])
		rotate(a=gear_off_angle,v=[0,0,1])
		gear(number_of_teeth=teeth2, 
				bore_diameter=hub_ext_dia,
				diametral_pitch=1/pitch, 
				gear_thickness=innergear_w+gear_side_clear*2,
				rim_thickness=innergear_w+gear_side_clear*2,
				hub_thickness=innergear_w+gear_side_clear*2,
				backlash=-backlash,
				clearance=-gear_clearance,
				pressure_angle=gear_pres_angle);
		translate([0,0,hub_t/2-hubrim_t-.01])
		cylinder(r=teeth2*pitch/2-hubrim_h,h=hubrim_t+1);
	}
}
/****************/

teeth1=13;
teeth2=67;
pitch = .9;
backlash=.1;
innergear_w = 10;
gear_pres_angle = 28;
gear_clearance=.2;
hubrim_t=2;
hubrim_h=0;
gear_side_clear=1;
hub_ext_dia=28;
gear_off_angle=90;

translate([0,0,hub_t/2])
difference(){
	union(){
#		hull(){
			translate([0,0,0])
			cylinder(r=5, h=susp_th);
			translate([0,0,0])
			cylinder(r=5, h=susp_th);
			}
		cube([susp_l,susp_h1,susp_th]);

		translate([0,0,-hubrim_t])
		cylinder(r=teeth2*pitch/2-2*teeth1*pitch/2+hubrim_h,h=hubrim_t+1);
		}

	translate([0,0,susp_th/2])
	cylinder(r=hub_axle_r, h=susp_th*2, center=true);
	translate([susp_th*2/3+hub_axle_r,susp_h1,susp_th/2])
	cylinder(r=gear1_axle_r, h=susp_th*2, center=true);
}

/****************/



