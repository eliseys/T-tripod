include <T-tripod-components.scad>


module wedge(latitude, delta_h, flip){


color("silver"){

points_w=[[15,-40],[90,-40],[90,0],[15,0],[0,-15],[0,-40+15]];
paths_w=[[0,1,2,3,4,5]];



rotate([90-flip, -90-latitude, 0]){
    
translate([-14-delta_h, 20, -45/2]){


difference(){
    union(){
        linear_extrude(45){
            polygon(points_w,paths_w);
        };
        translate([0, 0, -(60/2-45/2)]){
            linear_extrude(60){
                polygon([[90,-40],[90+60,-40],[90+60,0],[90,0]]);
            };
        };
    };
    translate([14, -20, 0]){
        rotate([0, 0, -5]){
            translate([0, 0, -50]){
                cylinder(h=100, r=4.1, $fn=100);
            };
            translate([45, 0, -50]){
                cylinder(h=100, r=4.1, $fn=100);
            };
        };
    };
    
    translate([14, -20, 0]){
        rotate([0,0,10]){
            translate([0, 0, -50]){
                cylinder(h=100, r=4.1, $fn=100);
            };
            translate([45, 0, -50]){
                cylinder(h=100, r=4.1, $fn=100);
            };
        };
    };
    
    translate([14+10, -20, 0]){
        rotate([0,0,0]){
            translate([0, 0, -50]){
                cylinder(h=100, r=4.1, $fn=100);
            };
            translate([45, 0, -50]){
                cylinder(h=100, r=4.1, $fn=100);
            };
        };
    };
    
    
    
    // 3/8 inch
    translate([120,50,22.5]){
        rotate([90,0,0]){
            cylinder(h=100, r=5.0, $fn=100);
        };
    };
    
    // 6M 
    translate([120,50,0.5]){
        rotate([90,0,0]){
            cylinder(h=100,r=3.5,$fn=100);
        };
    };
    translate([120,50,45-0.5]){
        rotate([90,0,0]){
            cylinder(h=100,r=3.5,$fn=100);
        };
    };
};
};
};
};
};
///




module wedge_20deg_A(S){
        
translate([S, 0, 45]) wedge(10, 0, 180);

translate([S, 45/2 + 3, 0]) rotate([90, -90, 0]) A_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, -90, 0]) %A_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S, 45/2 + 3, 45]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);
translate([S, -45/2 - 3, 45]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S, 45/2 + 3, 90]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);
translate([S, -45/2 - 3, 90]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//



module wedge_20deg_60(S){
        
translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 0, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) wedge(20, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 60deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %60deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_25deg_60(S){
        
translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 0, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) wedge(25, 0, 180);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 60deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %60deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_30deg_60(S){
        
translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 0, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) wedge(30, 10, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 60deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %60deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_35deg_60(S){
        
translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 0, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) wedge(35, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 60deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %60deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_40deg_60(S){
        
translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 0, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) wedge(40, 0, 180);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 60deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %60deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), 45/2 + 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60)), -45/2 - 3, 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//





module wedge_35deg_45(S){
        
translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 0, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) wedge(35, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 45deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %45deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (128.9-100.4)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (128.9-100.4)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_40deg_45(S){
        
translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 0, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2) + 80-80]) wedge(40, 0, 180);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 45deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) 45deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);


translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

translate([S - (86/2 - (128.9-100.4)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (128.9-100.4)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);
    
//};
//
};


module wedge_45deg_45(S){
        
translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 0, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) wedge(45, 10, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 45deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %45deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (128.9-100.4)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (128.9-100.4)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_50deg_45(S){
        
translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 0, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) wedge(50, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 45deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %45deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (128.9-100.4)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (128.9-100.4)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_55deg_45(S){
        
translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 0, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) wedge(55, 0, 180);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 45deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %45deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (128.9-100.4)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (128.9-100.4)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//






module wedge_50deg_30(S){
        
translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 0, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) wedge(50, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 30deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %30deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 45/2+3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), -45/2-3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), 45/2 + 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), -45/2 - 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_55deg_30(S){
        
translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 0, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) wedge(55, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 30deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %30deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 45/2+3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), -45/2-3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), 45/2 + 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), -45/2 - 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_60deg_30(S){
        
translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 0, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) wedge(60, 10, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 30deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %30deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 45/2+3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), -45/2-3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), 45/2 + 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), -45/2 - 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_65deg_30(S){
        
translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 0, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) wedge(65, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 30deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %30deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 45/2+3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), -45/2-3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), 45/2 + 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), -45/2 - 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_70deg_30(S){
        
translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 0, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) wedge(70, 0, 180);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 30deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %30deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), 45/2+3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30)), -45/2-3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), 45/2 + 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30)), -45/2 - 3, 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//




module wedge_65deg_15(S){
translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 0, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) wedge(65, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 15deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %15deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_70deg_15(S){
translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 0, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) wedge(70, 0, 180);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 15deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %15deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_75deg_15(S){
translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 0, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) wedge(75, 10, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 15deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %15deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_80deg_15(S){
translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 0, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) wedge(80, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 15deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %15deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//

module wedge_85deg_15(S){
translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 0, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) wedge(85, 0, 0);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 15deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %15deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), 45/2+3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15)), -45/2-3, 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//


module wedge_45deg_45_copy(S, T){
        
translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 0, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) wedge(45-10+15+5-15, 10-10, 180);

translate([S, 45/2, 0]) rotate([90, 0, 180]) 45deg_plate();
rotate([-90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([-90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

color(grey(95), 1) translate([S, -45/2 - 3, 0]) rotate([90, 0, 180]) %45deg_plate();

rotate([90, 0, 0]) screw_and_nut(S - (86-45)/2, 0, 3, 15);
rotate([90, 0, 0]) screw_and_nut(S + (86-45)/2, 0, 3, 15);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);

translate([S - (86/2 - (128.9-100.4) - 45/sqrt(2)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);


translate([S - (86/2 - (128.9-100.4)), 45/2 + 3, 128.9-20.5-20.5*sqrt(2)]) rotate([-90, 0, 0]) screw(M8_cap_screw, 60);


translate([S - (86/2 - (128.9-100.4)), -45/2 - 3, 128.9-20.5-20.5*sqrt(2)]) rotate([90, 0, 0]) nut(M8_nut, nyloc = true);

};
//



