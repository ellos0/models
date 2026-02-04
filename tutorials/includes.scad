include <wheels.scad>

width=10;
radius=10;
kerning=2;

translate([width*-kerning,0,0])
wheel1(width,radius);

wheel2(width,radius);

translate([width*kerning,0,0])
wheel3(width,radius);
