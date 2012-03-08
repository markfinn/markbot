/* Mark's Mecanum wheel
*/

//number of rollers on the wheel
rollers=6;

//These are the bearings that support the rollers
bearing_od=16;
bearing_id=5;
bearing_t=5;

//effective radius and roller radius
overall_contact_r=100;
rotor_r=28;

//some rotor definition number
rotor_l =140; //full length of a roller
rotor_mid_l=35; //length of the middle segment of a roller
floorclearance_t=8; //distance from the floor to a bearing bracket -- smaller means thicker/sturdier brackets but less clearance
rotorclearance_t=1.5; //distance between rollers and brackets. -- smaller means thicker/sturdier brackets but less clearance

//roller angles
rotor_angle=45;

//bracket thickness and width
outer_r=rotor_r-floorclearance_t;
brac_w = outer_r*2+5;
brac_t = 8;

//hub fill in radius and thickness
hub_r=55;
hub_t=pow(pow(brac_w,2)+pow(brac_t*2+rotor_mid_l+2*rotorclearance_t, 2), .5);

//bearing catch flange demensions
lip_h = 1.5;
lip_w = brac_t - bearing_t;

//holes in end of rotors for bolts
countersink_r=9;
countersink_d=10;

//planned rubber tread features
rubber_t=2;
rubber_grooves=5;
rubber_groove_d=2;

//viewing alpha
transparency=.85;

//calculate the radius of the rotor axles
axle_r=overall_contact_r-rotor_r;




module bracket()
{
	difference()
	{
		hull()
		{
			translate([axle_r/2, 0, 0])
				cube([axle_r, brac_w, brac_t*2+rotor_mid_l+2*rotorclearance_t], center=true); //bracket
			translate([axle_r, 0, 0])
				cylinder(r=outer_r, h=brac_t*2+rotor_mid_l+2*rotorclearance_t, $fn=40, center=true); //bracket top
		}
		translate([axle_r, 0, 0])
			cylinder(r=bearing_od/2-lip_h, h=brac_t*2+rotor_mid_l+2+2*rotorclearance_t, $fn=40, center=true); //bearing hole lip
		translate([axle_r, 0, -(brac_t+rotor_mid_l/2+rotorclearance_t+lip_w)])
			cylinder(r=bearing_od/2, h=brac_t, $fn=40); // bearing hole
		translate([axle_r, 0, rotor_mid_l/2+rotorclearance_t+lip_w])
			cylinder(r=bearing_od/2, h=brac_t, $fn=40); // bearing hole

//now handled in hub		translate([axle_r, 0, 0]) cylinder(r=rotor_r+rotorclearance_t, h=rotor_mid_l+2*rotorclearance_t, $fn=40, center=true); //wheel well
	}
}
/*
                      .....
                  ....     ....
                ..             ..
               .                 .
              .                   .
              .         x         .  The wheel has an overall ground contact radius of wr, and the rotor axles are on a radius from the hub of ar.  
         <-fwd.         |\        .  The rotor is rotated off of hub-axial by ra degrees.  In this diagram, wr includes rp.
  +y           .        |a\ar    .
   |            ..      |  \  /..    When the wheel has rotated forward by alpha degrees, the rotor axle point above the floor is lp from the center of the rotor axle.
   |              ....wr|  .\/.      Given a combination of wr, a, ar and lp, we can find rp.  we arange this so that a is calculated from the others given that we know 
   |    +x            ..|.. /        contact with the floor is at a normal... in other words, the x component of rp is zero.  This leaves rp as a function of (wr, ar, and lp).
   *-----               |  /         The first two are constants, leaving rp in terms of lp.
  /                     | / lp
 /                      |/
+z                   rp{|


		blow up around rp:
        |    /              Next we deal with the fact that the rotor contact is not at lp, but below it at an angle.
        |   /               we know lp and rp in vector form, so it is easy to get ll and r.  This gives us a way to find
        |  /lp              l (ll+lp) and r for the whole surface of the rotor as a parametric function on the variable lp,
        | /                 which is somewhat useless on its own.  We simply sweep lp over a large enough range to gaurantee that 
        |/                  the rotor length is bigger than we need, then truncate the ends with an intersection.
        x<-P
       /|
    ll/^|  
     / b|
    /   |
    \   |rp
     \  |
     r\ |
       \|
        x<- ground contact



Rxy(t) etc are rotation functions.  Rxy rotates from xaxis to y axis (around z) by t degrees.
Rxy(t)= | cos(t)  sin(t) 0|   Rxz(t)= | cos(t) 0  sin(t)|   Ryz(t)= |1   0        0   |
        |-sin(t)  cos(t) 0|           |   0    1    0   |           |0  cos(t)  sin(t)|
        |   0      0     1|           |-sin(t) 0  cos(t)|           |0 -sin(t)  cos(t)|



(eq1) ru = [0,0,1] * Rxz(ra) * Rxy(a)						// ru is the unit vector of the rotor axle.
(eq2) p = [0,-ar, 0] * Rxy(a) + lp * ru         // P is the point on the rotor axle lp distance from the axle center
(eq3) p . [1,0,0] == 0                          // we know that ground contact will be a normal vector, so the x component of P will be zero
(eq4) rp = wr - p . [0,-1,0]                    // rp is the distance from P to the ground
(eq5) b = acos(ru . [0,-1,0])                   // b is the angle between the rotor axle and the ground normal
(eq6) r = rp*sin(da)                            // r is the rotor radius at distance l from the axle center
(eq7) ll = rp*cos(da)                           // ll is the correction term for finding l since the rotor is tilted and not sitting on the point under lp
(eq8) l = lp+ll                                 // calculated l

*/

//find ru for use later
//ru=[-sin(ra)cos(a), -sin(ra)sin(a), cos(ra)]


//solve eqs 1-3 to get a from lp and constants (ar, ra)
function rp_a(lp) = atan(lp/axle_r*sin(rotor_angle));

//solve eq 4
function rp_rprime(lp) = overall_contact_r-lp*sin(rotor_angle)*sin(rp_a(lp))-axle_r*cos(rp_a(lp));

//solve eq 5
function rp_b(lp) = acos(sin(rotor_angle)*sin(rp_a(lp)));

//codify eqs 6-8
function rp_r(lp) =  rp_rprime(lp)*sin(rp_b(lp));
function rp_ll(lp) = rp_rprime(lp)*cos(rp_b(lp));
function rp_l(lp) = lp + rp_ll(lp);




function rp_rad_adj(o, g, cs, l, w) = o - (( ((l/cs+.5)%1) >w)?g:0);

module rollerprofile(overradius=0, grooves=0, groove_d=0, step=40)
{
	l=rotor_l;
	chunksize = (l/2)/(grooves+1);
	w=.85;
	for (lp = [0 : (l/2)/step : l/2])
	{

		polygon(points = [ 
			[0, rp_l(lp)           ],  
			[rp_r(lp)          + rp_rad_adj(overradius, groove_d, chunksize, rp_l(lp         ), w), rp_l(lp)],
			[rp_r(lp+l/2/step) + rp_rad_adj(overradius, groove_d, chunksize, rp_l(lp+l/2/step), w), rp_l(lp+l/2/step)],  
			[0, rp_l(lp + l/2/step)]
			]);
	}

}

module roller(c="DimGray", overradius=0, grooves=0, groove_d=0)
{
color(c, transparency)
	difference()
	{
		difference()
		{
			intersection()
			{
				union()
				{
					rotate_extrude($fn=40) rollerprofile(overradius=overradius, grooves=grooves, groove_d=groove_d);
					rotate(a=180, v=[0,1,0])
						rotate_extrude($fn=40) rollerprofile(overradius=overradius, grooves=grooves, groove_d=groove_d);
				}
				cylinder(r=rotor_r+1+overradius, rotor_l, center=true);
			}
			translate([0, 0, rotor_mid_l/2+(brac_t+2*rotorclearance_t)/2])
				cube([rotor_r*2, rotor_r*2,brac_t+2*rotorclearance_t], center=true);
			translate([0, 0, -rotor_mid_l/2-(brac_t+2*rotorclearance_t)/2])
				cube([rotor_r*2, rotor_r*2,brac_t+2*rotorclearance_t], center=true);
		}
		cylinder(r=bearing_id, h=rotor_l+1, center=true);
		translate([0, 0, rotor_l/2-countersink_d])
			cylinder(r=countersink_r, h=countersink_d+1);
		translate([0, 0, -rotor_l/2+countersink_d-countersink_d-1])
			cylinder(r=countersink_r, h=countersink_d+1);
	}
}

module bearing(c="LightSlateGray")
{
	color(c, transparency)
		difference()
		{
			cylinder(r=bearing_od/2, h=bearing_t, $fn=40, center=true);
			cylinder(r=bearing_id/2, h=bearing_t+2, $fn=40, center=true);
		}
}

module hexdisk(r=10, 	height=10)
{
	faces=6;
	linear_extrude(height=height, center=true)
		for (i = [0 : faces-1]) 
		{
			polygon(points=[
				[0, 0],
				[r * cos(i * 360 / faces), r * sin(i * 360 / faces)],
				[r * cos((i + 1) * 360 / faces), r * sin((i + 1) * 360 / faces)]
			]);
		}
}

module washer(id, od, t=1, c="MediumSeaGreen")
{
	color(c, transparency)
		difference()
		{
			cylinder(r=od/2, h=t, $fn=40, center=true);
			cylinder(r=id/2, h=t+2, $fn=40, center=true);
		}
}

module boltnut(l=30, w=3, c="MediumSeaGreen")
{
	ht=w;
	hr=w;
	wt=1;
	wr=w*1.1;
	color(c, transparency)
		union()
		{
			translate([0,0,-(l/2+ht/2+wt)])
				cylinder(r=w/2, h=l+ht/2+ht*1.1+2*wt, $fn=40);
			translate([0,0,l/2+ht/2+wt])
				hexdisk(r=hr, height=ht);
			translate([0,0,-(l/2+ht/2+wt)])
				hexdisk(r=hr);
			translate([0,0,(l/2+wt/2+wt)])
				washer(w+.1, wr*2, t=wt);
			translate([0,0,-(l/2+wt/2+wt)])
				washer(w+.1, wr*2, t=wt);
		}
}


module wheel(wheels=1, hardware=1, c="CornflowerBlue")
{
	union()
	{
		color(c, transparency)
			difference()
			{
				union()
				{
					for (edge = [0 : rollers])
					{
						rotate(a=edge * 360/rollers, v=[0, 0, 1])
							rotate(a=rotor_angle, v=[1, 0, 0])
								bracket();
					}
					cylinder(r=hub_r, h=hub_t, center=true);
				}

				for (edge = [0 : rollers])
				{
					rotate(a=edge * 360/rollers, v=[0, 0, 1])
						rotate(a=rotor_angle, v=[1, 0, 0])
							translate([axle_r,0,0]) 
								difference()
								{
									cylinder(r=rotor_r+rotorclearance_t, h=rotor_l, center=true);
									translate([0, 0, rotor_mid_l/2+rotorclearance_t+brac_t/2])
										cube([rotor_r*2, rotor_r*2,brac_t], center=true);
									translate([0, 0, -rotor_mid_l/2-rotorclearance_t-brac_t/2])
										cube([rotor_r*2, rotor_r*2,brac_t], center=true);
								}
				}
			}
		if(hardware)
			for (edge = [0 : rollers])
			{
				rotate(a=edge * 360/rollers, v=[0, 0, 1])
					rotate(a=rotor_angle, v=[1, 0, 0])
						union()
						{
							translate([axle_r,0,bearing_t/2+rotor_mid_l/2+rotorclearance_t+lip_w])
								bearing();
							translate([axle_r,0,-(bearing_t/2+rotor_mid_l/2+rotorclearance_t+lip_w)])
								bearing();
							translate([axle_r,0,0])
								boltnut(l=rotor_l-2*countersink_d, w=bearing_id);
							translate([axle_r,0,lip_w+rotor_mid_l/2+rotorclearance_t-(lip_w+rotorclearance_t)/2])
								washer(bearing_id+.1, bearing_id+4, t=lip_w+rotorclearance_t);
							translate([axle_r,0,-(lip_w+rotor_mid_l/2+rotorclearance_t-(lip_w+rotorclearance_t)/2)])
								washer(bearing_id+.1, bearing_id+4, t=lip_w+rotorclearance_t);
							translate([axle_r,0,brac_t+rotor_mid_l/2+rotorclearance_t+rotorclearance_t/2])
								washer(bearing_id+.1, bearing_id+4, t=rotorclearance_t);
							translate([axle_r,0,-(brac_t+rotor_mid_l/2+rotorclearance_t+rotorclearance_t/2)])
								washer(bearing_id+.1, bearing_id+4, t=rotorclearance_t);
						}
			}

		if(wheels)
			for (edge = [0 : rollers])
			{
				rotate(a=edge * 360/rollers, v=[0, 0, 1])
					rotate(a=rotor_angle, v=[1, 0, 0])
						union()
						{
							translate([axle_r,0,0]) 
								roller();
						}
			}
	}
}

module display()
{
	wheel(wheels=1, hardware=1);
}

module display4(base=400)
{
	translate([base/2,base/2,0]) rotate(a=90, v=[0,1,0]) wheel();
	translate([-base/2,base/2,0]) rotate(a=90, v=[0,1,0]) mirror() wheel();
	translate([base/2,-base/2,0]) rotate(a=90, v=[0,1,0]) mirror() wheel();
	translate([-base/2,-base/2,0]) rotate(a=90, v=[0,1,0]) wheel();
}

module print()
{
	//mirror()
	wheel(wheels=0, hardware=0);
	translate([overall_contact_r+rotor_r+10,0,0])
	roller(overradius=-rubber_t, grooves=rubber_grooves, groove_d=rubber_groove_d);
}

//print();
display();
//display4();

//rotate(a=$t*360/4, v=[0,0,1]) display();
/*
include <../GoblinOne.scad>
translate([0,overall_contact_r+rotor_r+10,0])
scale([.05,.06,.05])
GoblinOne("MWr1L MF12", steps = 2, center = false, extra = 10, height = 40);
*/
