r = 20; // pattern radius
b = 5; //block size
n = 10; // number of blocks
step = 360/n;
for (i=[0:step:359]) {
    angle = i;
    dx = r*cos(angle);
    dy = r*sin(angle);
    translate([dx,dy,0])
      rotate([0,0,i])
      cube(b, center=true);
}
