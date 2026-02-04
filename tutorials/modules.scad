//parameterized car with wheel modules

$fa=1;
$fs=2;

wheel_radius = 5;
wheel_width = 5;
wheel_rotation = -15;
wheel_height = -5;

car_length = 50;
car_width = 20;
car_height = 10;

module wheel1() {
  cylinder(h=wheel_width,r=wheel_radius,center=true);
}

module wheel2() {
  difference() {
    cylinder(h=wheel_width,r=wheel_radius,center=true);
    translate([0,0,wheel_width/2])
      cylinder(h=wheel_width,r=wheel_radius/1.4,center=true);
  }
}

module wheel3() {
  difference() {
    cylinder(h=wheel_width,r=wheel_radius,center=true);
    translate([0,0,wheel_width/2])
      difference() {
      cylinder(h=wheel_width,r=wheel_radius/1.25,center=true);
      cylinder(h=wheel_width,r=wheel_radius/1.5,center=true);
    }
  }
}

module selected() {
  wheel3();
}

module car() {
  cube([car_length,car_width,car_height],center=true);

  translate([0,0,car_height])
    cube([car_length/2, car_width, car_height], center=true);

  translate([car_length/2,car_width/2+(wheel_width/2),wheel_height])
    rotate([90,0,wheel_rotation+180])
    selected();

  translate([car_length/2,-car_width/2-(wheel_width/2),wheel_height])
    rotate([90,0,wheel_rotation])
    selected();

  translate([-car_length/2,car_width/2+(wheel_width/2),wheel_height])
    rotate([90,0,180])
    selected();

  translate([-car_length/2,-car_width/2-(wheel_width/2),wheel_height])
    rotate([90,0,0])
    selected();
}
car();
