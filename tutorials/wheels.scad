//wheel modules

module wheel1(wheel_width,wheel_radius) {
  cylinder(h=wheel_width,r=wheel_radius,center=true);
}

module wheel2(wheel_width,wheel_radius) {
  difference() {
    cylinder(h=wheel_width,r=wheel_radius,center=true);
    translate([0,0,wheel_width/2])
      cylinder(h=wheel_width,r=wheel_radius/1.4,center=true);
  }
}

module wheel3(wheel_width,wheel_radius) {
  difference() {
    cylinder(h=wheel_width,r=wheel_radius,center=true);
    translate([0,0,wheel_width/2])
      difference() {
      cylinder(h=wheel_width,r=wheel_radius/1.25,center=true);
      cylinder(h=wheel_width,r=wheel_radius/1.5,center=true);
    }
  }
}
