include <NopSCADlib/lib.scad>
include <T-tripod-wedge.scad>
include <T-tripod-components.scad>
include <T-tripod-configuration.scad>


module T_tripod_tall(){
    
// N-S extrusion
difference(){
translate([L/2 + 45/2, 0, 0]) rotate([0, 90, 0]) extrusion(E4545, L, cornerHole = true);
translate([L - 45/2, 0, 0]) cylinder(h = 50, d = 17, center = true);
};
//

// N-S extrusion: F-leg (Front leg) assemble
translate([(L-45)+45/2, 0, 0]){
support_screw(support_screw_H);
translate([0, 0, -150/2 - 15]) heel_39();
translate([0, 0, -45/2]) rotate([180, 0, 0]) threaded_bushing();
translate([0, 0, 45/2]) adapter_45x90_m12();
screw_and_nut(45/2, 0, 7, 18);
screw_and_nut(-45/2, 0, 7, 18);  
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
support_screw(support_screw_H);
translate([0, 0, -150/2 - 15]) heel_39();
translate([0, 0, -45/2]) rotate([180, 0, 0]) threaded_bushing();
translate([0, 0, 45/2]) adapter_45x90_m12();
screw_and_nut(45/2, 0, 7, 18);
screw_and_nut(-45/2, 0, 7, 18);
};
};
//


// vertical extrusion
translate([45/2, 0, H/2 + 45/2]) rotate([0, 0, 90]) extrusion(E4590, H, cornerHole = true);


// A-plate for horizontal extrusion
rotate([0, -90, 0]){ 
translate([0, 0, 45/2]) A_plate();
screw_and_nut(45, 0, 3, 15);
screw_and_nut(90, 0, 3, 15);
rotate([0, 0, 90]){
screw_and_nut(45/2, 0, 3, 15);
screw_and_nut(-45/2, 0, 3, 15);
};  
};
//


// A-plate for vertical extrusion
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



// L-plate 1 for vertical extrusion
{
translate([45, -45/2 - 3, 0]) rotate([-90, 180, 0]) L_plate();
rotate([90, 0, 0]){
translate([90, 0, 0]) screw_nut(3, 15, 0);
translate([45, 0, 0]) screw_nut(3, 15, 0);
translate([45, 45, 0]) screw_nut(3, 15, 90);
translate([45, 90, 0]) screw_nut(3, 15, 90);
};
};
//


// L-plate 2 for vertical extrusion
{
translate([45, 45/2, 0]) rotate([-90, 180, 0]) L_plate();
rotate([-90, 0, 0]){
translate([45, 0, 0]) screw_nut(3, 15, 0);
translate([90, 0, 0]) screw_nut(3, 15, 0);
translate([45, -45, 0]) screw_nut(3, 15, 90);
translate([45, -90, 0]) screw_nut(3, 15, 90);
};
};
//





S = H-20.5;

translate([45, 0, 0]) rotate([0, -90, 180]) wedge_60deg_30(S);



};




rotate([0, 0, $t*360]) translate([-(L2/2-45)*tan(30), 0, 0]) T_tripod_tall();

