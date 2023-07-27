include <NopSCADlib/lib.scad>


module screw_and_nut(x, y, z, screw_H){

translate([x, y, 45/2 + z]){
    screw(M8_cap_screw, screw_H);
};

translate([x, y, 45/2 - 6]){
    rotate([180, 0, 0]){
    sliding_t_nut(M8_sliding_ball_t_nut);
    };
};
};
//

module screw_nut(width, screw_H, alpha_nut){
   translate([0, 0, 45/2 + width]) screw(M8_cap_screw, screw_H);
   translate([0, 0, 45/2 - 6]) rotate([180, 0, alpha_nut]) sliding_t_nut(M8_sliding_ball_t_nut);
};
//
    
//screw_nut(3, 15, 0);

module threaded_bushing(){
    
    color("silver"){
    
    H = 32.1;
    h = 2.3;
    d1 = 13;
    d2 = 17.2;
    r1 = d1/2;
    r2 = d2/2;
    r3 = r2 + 1.5;
    
    p1 = [0, r1];
    p2 = [h, r1];
    p3 = [h, r3];
    p4 = [0, r3];
    p5 = [0, r2];
    p6 = [-(H-h), r2];
    p7 = [-(H-h), r1];
    p8 = [0, r1];

    p = [p1, p2, p3, p4, p5, p6, p7, p8];
    
    
    rotate_extrude($fn = 200){
        rotate([0, 0, 90]){
            polygon(p);
        };
    };
    };
};
//

module adapter_45x90_m12(){
    color("silver"){
    
    R = 2; // chamfer
    L1 = 89.9 - 2*R;
    L2 = 44.7 - 2*R;
    H = 16.0 - R;
    
    dL = (89.9 - 2*22.4)/2;
        
   
    p1 = [-L1/2, -L2/2];
    p2 = [-L1/2, L2/2];
    p3 = [L1/2, L2/2];
    p4 = [L1/2, -L2/2];
    p5 = [-L1/2, -L2/2];
    
    p = [p1, p2, p3, p4, p5];
    
    difference(){    
    
    minkowski(){
        linear_extrude(H){
            polygon(p);  
        };
    
        sphere(r=R); 
    
    };

    translate([0, 0, -2*R]){
    linear_extrude(2*R){
        circle(100);  
        };
    };

    
    translate([dL, 0, -2]){
        cylinder(r=9/2, h=16*2);
    };
    
    translate([-dL, 0, -2]){
        cylinder(r=9/2, h=16*2);
    };
    
    translate([dL, 0, 16-9]){
        cylinder(r=15.3/2, h=16*2);
    };
    
    translate([-dL, 0, 16-9]){
        cylinder(r=15.3/2, h=16*2);
    };
    translate([0, 0, -2]){
        cylinder(r=12/2, h=16*2);
    };
    
    
    };

    };
};  
//

module 60deg_plate(){
    
    p1 = [86/2, -20.5];
    p2 = [86/2, 130.2 - 20.5];
    p3 = [86/2 - (150.1 - 130.2)*tan(60), 150.1 - 20.5]; 
    p4 = [-86/2, 64.9 - 20.5];
    p5 = [-86/2, -20.5];
    
    p = [p1, p2, p3, p4, p5];
            
    color(grey(95)){
    difference(){  
    linear_extrude(3.0) polygon(p);
    

    translate([45/2, 0, 0]){
    cylinder(h=8, r=4.1, center = true, $fn=100);
    };
    
    translate([-45/2, 0, 0]){
    cylinder(h=8, r=4.1, center = true, $fn=100);
    };
    
    translate([86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60), 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60), 0]) cylinder(h=8, r=4.1, center = true, $fn=100);
    
    translate([86/2 - (150.1 - 130.2)*tan(60) - 20.5*cos(60) + 20.5*sin(60) - 45*cos(60), 150.1 - 20.5 - 20.5*cos(60) - 20.5*sin(60) - 45*sin(60), 0]) cylinder(h=8, r=4.1, center = true, $fn=100);
    
    };
    };

};

module 45deg_plate(){
  p1 = [86/2, -20.5];
  p2 = [86/2, 100.4-20.5];
  p3 = [86/2 - (128.9-100.4), 128.9-20.5];
  p4 = [-86/2, 74-20.5];
  p5 = [-86/2, -20.5];
  p = [p1, p2, p3, p4, p5]; 
  
  color(grey(95)){
  difference(){  
  linear_extrude(3) polygon(p);
    
  translate([45/2, 0, 0]) cylinder(h = 8, d = 8.2, center = true);
  translate([-45/2, 0, 0]) cylinder(h = 8, d = 8.2, center = true);
  
  translate([86/2 - (128.9-100.4), 128.9-20.5-20.5*sqrt(2), 0]){
      cylinder(h = 8, d = 8.2, center = true);
  };
  
  translate([86/2 - (128.9-100.4) - 45/sqrt(2), 128.9-20.5-20.5*sqrt(2) - 45/sqrt(2), 0]){
      cylinder(h = 8, d = 8.2, center = true);
  };
  
  };
  };  
};

module 30deg_plate(){
  p1 = [86/2, -20.5];
  p2 = [86/2, 80.8-20.5];
  p3 = [86/2 - (117.1 - 80.8)*tan(30), 117.1 - 20.5];
  p4 = [-86/2, 80.8 - 20.5];
  p5 = [-86/2, -20.5];
  
  p = [p1, p2, p3, p4, p5];
  
  color(grey(95)){
  difference(){
  linear_extrude(3) polygon(p);  
  translate([45/2, 0, 0]) cylinder(h = 8, d = 8.2, center = true);
  translate([-45/2, 0, 0]) cylinder(h = 8, d = 8.2, center = true);
      
  translate([86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30), 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30), 0]) cylinder(h = 8, d = 8.2, center = true);
      
  translate([86/2 - (117.1 - 80.8)*tan(30) + 20.5*sin(30) - 20.5*cos(30) - 45*cos(30), 117.1 - 20.5 - 20.5*sin(30) - 20.5*cos(30) - 45*sin(30), 0]) cylinder(h = 8, d = 8.2, center = true);
      
  };
  }; 
};


module 15deg_plate(){
   p1 = [86/2, -20.5];
   p2 = [86/2, 63.7 - 20.5];
   p3 = [86/2 - (104.3 - 63.7)*tan(15), 104.3 - 20.5];
   p4 = [86/2 - (104.3 - 63.7)*tan(15) - 77.6*cos(15), 104.3 - 20.5 - 77.6*sin(15)];
   p5 = [-86/2, -20.5];
    
   p = [p1, p2, p3, p4, p5];
   
    
   color(grey(95)){
   difference(){
   linear_extrude(3) polygon(p);
    
   translate([45/2, 0, 0]) cylinder(h = 8, d = 8.2, center = true);
   translate([-45/2, 0, 0]) cylinder(h = 8, d = 8.2, center = true);
   
   translate([86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15), 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15), 0]) cylinder(h = 8, d = 8.2, center = true);
   
   translate([86/2 - (104.3 - 63.7)*tan(15) - 20.5*cos(15) + 20.5*sin(15) - 45*cos(15), 104.3 - 20.5 - 20.5*cos(15) - 20.5*sin(15) - 45*sin(15), 0]) cylinder(h = 8, d = 8.2, center = true);   
        
   };
   };
};


module A_plate(){
  
   H = 86;
   h = 41.9;
   L = 131;
   l = 42.8;
    
   p1 = [-l/2, 0];
   p2 = [-l/2, H/2];   
   p3 = [l/2, H/2];
   p4 = [L - l/2, h/2]; 
   p5 = [L - l/2, -h/2];
   p6 = [l/2, -H/2];
   p7 = [-l/2, -H/2];
   p8 = [-l/2, 0];
   p = [p1, p2, p3, p4, p5, p6, p7, p8];
    
    
  color(grey(95))
  difference(){  
    
  linear_extrude(3.0){
    polygon(p);
    };

    translate([0, l/2, 0]){
        cylinder(h=8, r=4.1, center = true, $fn=100);
    };
    
    translate([0, -l/2, 0]){
        cylinder(h=8, r=4.1, center = true, $fn=100);
    };
       
    translate([45, 0, 0]){
        cylinder(h=8, r=4.1, center = true, $fn=100);
    };
    
    translate([90, 0, 0]){
        cylinder(h=8, r=4.1, center = true, $fn=100);
    };
    
    
    
};
};


module T_plate(){
  
    L = 131;  
    l = 41;
    H = 86;
    h = 41;
    
    p1 = [-l/2, 0];
    p2 = [-l/2, H/2];
    p3 = [l/2, H/2];
    p4 = [l/2, h/2];
    p5 = [L - l/2, h/2];
    p6 = [L - l/2, -h/2];
    p7 = [l/2, -h/2];
    p8 = [l/2, -H/2];
    p9 = [-l/2, -H/2];
    p10 = [-l/2, 0];

    p = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10];
    
    
  color(grey(95))
        
  difference(){  
    
  linear_extrude(3.0){
    polygon(p);
    };

    translate([0, 45/2, 0.0]){
        cylinder(h=8, r=4.1, center = true, $fn=100);
    };
    
    translate([0, -45/2, 0.0]){
        cylinder(h=8, r=4.1, center = true, $fn=100);
    };
       
    translate([45.0, 0, 0.0]){
        cylinder(h=8, r=4.1, center = true, $fn=100);
    };
    
    translate([90.0, 0, 0.0]){
        cylinder(h=8, r=4.1, center = true, $fn=100);
    };
    
    
    
};
};

module L_plate(){
    p1 = [(86-45)/2, -20.5];
    p2 = [(86-45)/2, 131 - 20.5];
    p3 = [(86-45)/2 - 41.8, 131 - 20.5];
    p4 = [-86 + (86-45)/2, 42.5 - 20.5];
    p5 = [-86 + (86-45)/2, - 20.5];
    
    p = [p1, p2, p3, p4, p5];
    
    color(grey(95)){
    difference(){
    linear_extrude(3) polygon(p);
    
    cylinder(h=8, r=4.1, center = true, $fn=100);
        
    translate([0, 45, 0]) cylinder(h=8, r=4.1, center = true, $fn=100);
    translate([0, 90, 0]) cylinder(h=8, r=4.1, center = true, $fn=100);
    translate([-45, 0, 0]) cylinder(h=8, r=4.1, center = true, $fn=100);

    };
    };
};



module heel_39(){

color("gray"){

difference(){

difference(){
intersection(){
sphere(r=20.82);
cylinder(h = 30, d = 39);   
};

translate([0, 0, 13]){
cylinder(h = 30, d=20);
}
};



translate([0, 0, 15])
sphere(d = 15);

};
};
};



module support_screw(support_screw_H){

H = support_screw_H;
studding(12, H);

intersection(){
translate([0, 0, -H/2]){
color("silver"){
sphere(d=15);
};
};

poly_n = 6;
translate([0, 0, -H/2-15/2]){
linear_extrude(150) circle(7/cos(180/poly_n), $fn=poly_n);   
};



};


color("silver"){

intersection(){

translate([0, 0, -H/2+15/2]){
cylinder(h=7.5, d=20);
};

poly_n = 6;
translate([0, 0, -H/2-15/2]){
linear_extrude(150) circle(7/cos(180/poly_n), $fn=poly_n);   
};

};
};

};







