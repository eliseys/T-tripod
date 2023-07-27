include <NopSCADlib/lib.scad>
include <T-tripod-wedge.scad>
include <T-tripod-components.scad>
include <T-tripod-configuration.scad>


module T_tripod(T){

// N-S extrusion
difference(){
translate([L/2 + 45/2, 0, 0]) rotate([0, 90, 0]) extrusion(E4545, L, cornerHole = true);
translate([L - 45/2, 0, 0]) cylinder(h = 50, d = 17, center = true);
};
//

// N-S extrusion: F-leg (Front leg) assemble
{
translate([(L-45)+45/2, 0, 0]){
    support_screw(support_screw_H);
    translate([0, 0, -150/2 - 15]) heel_39();
translate([0, 0, -45/2]) rotate([180, 0, 0]) threaded_bushing();
translate([0, 0, 45/2]) adapter_45x90_m12();
screw_and_nut(45/2, 0, 7, 18);
screw_and_nut(-45/2, 0, 7, 18);  
};
};
//

// W-E extrusion
difference(){
rotate([90, 0, 0]) extrusion(E4545, L2, cornerHole = true);
rotate([0, 0, 90]) translate([L2/2 - 45, 0, 0]) cylinder(h = 50, d = 17, center = true);
rotate([0, 0, -90]) translate([L2/2 - 45, 0, 0]) cylinder(h = 50, d = 17, center = true);
};
//

// W-E extrusion: L-leg (Left leg) assemble
rotate([0, 0, 90]){
translate([(L2/2-45), 0, 0]){
support_screw(support_screw_H);
translate([0, 0, -150/2 - 15]) heel_39();
translate([0, 0, -45/2]) rotate([180, 0, 0]) threaded_bushing();
translate([0, 0, 45/2]) adapter_45x90_m12();
screw_and_nut(45/2, 0, 7, 18);
screw_and_nut(-45/2, 0, 7, 18);
};
};
//

// W-E extrusion: R-leg (Right leg) assemble
rotate([0, 0, -90]){
translate([(L2/2-45), 0, 0]){
    
translate([0, 0, 0]){
translate([0, 0, 0]) rotate([0, 0, 0]) support_screw(support_screw_H);
translate([0, 0, -150/2 - 15]) heel_39();
};

translate([0, 0, -45/2]) rotate([180, 0, 0]) threaded_bushing();
translate([0, 0, 45/2]) rotate([0, 0, 180]) adapter_45x90_m12();
screw_and_nut(45/2, 0, 7, 18);
screw_and_nut(-45/2, 0, 7, 18);
};
};
//

// T-plate
{
translate([0, 0, 45/2]) T_plate();
screw_and_nut(45, 0, 3, 15);
screw_and_nut(90, 0, 3, 15);
rotate([0, 0, 90]){
screw_and_nut(45/2, 0, 3, 15);
screw_and_nut(-45/2, 0, 3, 15);
};
};
//

// A-plate
rotate([180, 0, 0]){ 
translate([0, 0, 45/2]) A_plate();
screw_and_nut(45, 0, 3, 15);
screw_and_nut(90, 0, 3, 15);
rotate([0, 0, 90]){
screw_and_nut(45/2, 0, 3, 15);
screw_and_nut(-45/2, 0, 3, 15);
};  
};
//

S = 120;

//wedge_75deg_15(S);
//wedge_60deg_30(S);
wedge_45deg_45(S);
//wedge_30deg_60(S);
//wedge_20deg_A(S);

};
//


T=$t;


//fov = 22.50 (1200x918)

//$vpr = [65, 0, 36];
//$vpr = [70+17*(1-T), 0, 90-30];

//$vpt = [0.0, 0.0, 0.0];
//$vpf = 22.50;
//$vpd = 1500;



//rotate([sin(T*360)*atan(15/((L2-90)/2)), 0, 0]) translate([0, 0, 150/2+15]){};


//translate([0, L2/2-45, 0]) 


//translate([-(L2/2-45)*tan(30), 0, 0]){};
T_tripod(T);

echo(L);
echo(L2);

//echo($vpr);
//echo($vpt);
//echo($vpf);
//echo($vpd);

