/* Mark's Mecanum wheel
*/

bearing_od=16;
bearing_id=5;
bearing_t=5;

overall_contact_r=100;
rotor_r=28;
r_r=overall_contact_r-rotor_r;
mid=20;
floorclearance_t=8;
rotorclearance_t=2;

outer_r=rotor_r-floorclearance_t;
brac_w =outer_r*2+5;
brac_t =8;

faces=6;
hub_r=55;
hub_t=pow(pow(brac_w,2)+pow(brac_t*2+mid+2*rotorclearance_t, 2), .5);

lip_h = 1.5;
lip_w = brac_t - bearing_t;

rotor_l =140;

countersink_r=9;
countersink_d=10;

rubber_t=2;
rubber_grooves=5;
rubber_groove_d=2;

transparency=.85;

module bracket()
{
	difference()
	{
		hull()
		{
			translate([r_r/2, 0, 0])
				cube([r_r, brac_w, brac_t*2+mid+2*rotorclearance_t], center=true); //bracket
			translate([r_r, 0, 0])
				cylinder(r=outer_r, h=brac_t*2+mid+2*rotorclearance_t, $fn=40, center=true); //bracket top
		}
		translate([r_r, 0, 0])
			cylinder(r=bearing_od/2-lip_h, h=brac_t*2+mid+2+2*rotorclearance_t, $fn=40, center=true); //bearing hole lip
		translate([r_r, 0, -(brac_t+mid/2+rotorclearance_t+lip_w)])
			cylinder(r=bearing_od/2, h=brac_t, $fn=40); // bearing hole
		translate([r_r, 0, mid/2+rotorclearance_t+lip_w])
			cylinder(r=bearing_od/2, h=brac_t, $fn=40); // bearing hole

//now handled in hub		translate([r_r, 0, 0]) cylinder(r=rotor_r+rotorclearance_t, h=mid+2*rotorclearance_t, $fn=40, center=true); //wheel well
	}
}

function rp_theta(d, wr) = -atan(-d/wr*sin(45));
function rp_rprime(d, wr, rr) = wr+d*sin(45)*sin(-rp_theta(d, wr))-(wr-rr)*cos(-rp_theta(d, wr));
function rp_alpha(d,wr) = acos(-sin(45)*sin(-rp_theta(d, wr)));
function rp_r(d, wr, rr) = rp_rprime(d, wr, rr)*sin(rp_alpha(d,wr));
function rp_dprime(d,wr, rr) = rp_rprime(d, wr, rr)*cos(rp_alpha(d,wr));

function rp_rad_adj(o, g, cs, d, w) = o - (((d%cs)/cs>w)?g:0);


module rollerprofile(wr, rr, l, overradius=0, grooves=0, groove_d=0, step=40)
{
	chunksize = (l/2)/(grooves+1);
	w=.92;
	for (d = [0 : (l/2)/step : l/2])
	{
		polygon(points = [ 
			[0, d+rp_dprime(d,wr,rr)],  
			[rp_r(d,wr,rr)+rp_rad_adj(overradius, groove_d, chunksize, d, w), d+rp_dprime(d,wr,rr)],  
			[rp_r(d+l/2/step,wr,rr)+rp_rad_adj(overradius, groove_d, chunksize, d+l/2/step, w), d+l/2/step+rp_dprime(d+l/2/step,wr,rr)],  
			[0, d+l/2/step+rp_dprime(d+l/2/step,wr,rr)]
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
					rotate_extrude($fn=40) rollerprofile(wr=overall_contact_r, rr=rotor_r, l=rotor_l, overradius=overradius, grooves=grooves, groove_d=groove_d);
					rotate(a=180, v=[0,1,0])
						rotate_extrude($fn=40) rollerprofile(wr=overall_contact_r, rr=rotor_r, l=rotor_l, overradius=overradius, grooves=grooves, groove_d=groove_d);
				}
				cylinder(r=rotor_r+1+overradius, rotor_l, center=true);
			}
			translate([0, 0, mid/2+(brac_t+2*rotorclearance_t)/2])
				cube([rotor_r*2, rotor_r*2,brac_t+2*rotorclearance_t], center=true);
			translate([0, 0, -mid/2-(brac_t+2*rotorclearance_t)/2])
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
					for (edge = [0 : faces])
					{
						rotate(a=edge * 360/faces, v=[0, 0, 1])
							rotate(a=45, v=[1, 0, 0])
								bracket();
					}
					cylinder(r=hub_r, h=hub_t, center=true);
				}

				for (edge = [0 : faces])
				{
					rotate(a=edge * 360/faces, v=[0, 0, 1])
						rotate(a=45, v=[1, 0, 0])
							translate([r_r,0,0]) 
								difference()
								{
									cylinder(r=rotor_r+rotorclearance_t, h=rotor_l, center=true);
									translate([0, 0, mid/2+rotorclearance_t+brac_t/2])
										cube([rotor_r*2, rotor_r*2,brac_t], center=true);
									translate([0, 0, -mid/2-rotorclearance_t-brac_t/2])
										cube([rotor_r*2, rotor_r*2,brac_t], center=true);
								}
				}
			}
		if(hardware)
			for (edge = [0 : faces])
			{
				rotate(a=edge * 360/faces, v=[0, 0, 1])
					rotate(a=45, v=[1, 0, 0])
						union()
						{
							translate([r_r,0,bearing_t/2+mid/2+rotorclearance_t+lip_w])
								bearing();
							translate([r_r,0,-(bearing_t/2+mid/2+rotorclearance_t+lip_w)])
								bearing();
							translate([r_r,0,0])
								boltnut(l=rotor_l-2*countersink_d, w=bearing_id);
							translate([r_r,0,lip_w+mid/2+rotorclearance_t-(lip_w+rotorclearance_t)/2])
								washer(bearing_id+.1, bearing_id+4, t=lip_w+rotorclearance_t);
							translate([r_r,0,-(lip_w+mid/2+rotorclearance_t-(lip_w+rotorclearance_t)/2)])
								washer(bearing_id+.1, bearing_id+4, t=lip_w+rotorclearance_t);
							translate([r_r,0,brac_t+mid/2+rotorclearance_t+rotorclearance_t/2])
								washer(bearing_id+.1, bearing_id+4, t=rotorclearance_t);
							translate([r_r,0,-(brac_t+mid/2+rotorclearance_t+rotorclearance_t/2)])
								washer(bearing_id+.1, bearing_id+4, t=rotorclearance_t);
						}
			}

		if(wheels)
			for (edge = [0 : faces])
			{
				rotate(a=edge * 360/faces, v=[0, 0, 1])
					rotate(a=45, v=[1, 0, 0])
						union()
						{
							translate([r_r,0,0]) 
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

//intersection(){rotate(a=40, v=[0,0,1]) display();translate([250,0,0]) cube([500,500,500], center=true);}


