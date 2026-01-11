//parameterized car

$fa=1;
$fs=0.4;

wheel_radius = 8;
wheel_width = 5;
wheel_rotation = -15;
wheel_height = -5;

car_length = 50;
car_width = 20;
car_height = 10;

cube([car_length,car_width,car_height],center=true);

translate([0,0,car_height])
cube([car_length/2, car_width, car_height], center=true);

translate([car_length/2,car_width/2+(wheel_width/2),wheel_height])
rotate([90,0,wheel_rotation])
cylinder(h=wheel_width,r=wheel_radius, center=true);

translate([car_length/2,-car_width/2-(wheel_width/2),wheel_height])
rotate([90,0,wheel_rotation])
cylinder(h=wheel_width,r=wheel_radius,center=true);

translate([-car_length/2,car_width/2+(wheel_width/2),wheel_height])
rotate([90,0,0])
cylinder(h=wheel_width,r=wheel_radius,center=true);

translate([-car_length/2,-car_width/2-(wheel_width/2),wheel_height])
rotate([90,0,0])
cylinder(h=wheel_width,r=wheel_radius,center=true);
