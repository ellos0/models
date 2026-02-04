wheel_depth=7;
inner_radius=6;

union() {
difference() {
sphere(r=10);
translate([10,0,0])
cube(20, center=true);
difference() {
rotate([0,90,0])
difference() {
cylinder(r=8,h=wheel_depth,center=true);
cylinder(r=inner_radius,h=wheel_depth,center=true);
}
}
}
translate([1,0,0])
rotate([0,90,0])
difference() {
cylinder(r=10,h=3,center=true);
cylinder(r=9,h=4,center=true);
}
}