use <wheels.scad>

module car(wheel_height=-5,car_height=20,car_width=20,car_length=50) {
  cube([car_length,car_width,car_height/2],center=true);
  translate([0,0,car_height/2])
    cube([car_length/2,car_width,car_height/2],center=true);
  translate([car_length/2,car_width/2,wheel_height])
    rotate([-90,0,0])
    children(0);
}
car() {
  wheel1(10,10);
}
