W=64;
W2=100;
H=90;
T=1.5;
B=7;
Q=7;
H1=7;
HR=12;

column();
translate([15,0,0]) crossX();
translate([30,0,0]) crossY();

module column() {
    difference() {
        cube_center([H1,H+6*H1,H1]);
        for(s=[-1:2:1]) {
            scale([1,s,1]) {
                translate([0,H/2+3*H1-H1/4-H1,H1/2])
                cube_center([H1,H1/2,H1/2]);
                translate([H1/2-H1/4,H/2+3*H1-H1/4-H1-H1/2,0])
                cube_center([H1/2,H1/2,H1]);
            }
        }
        rotate([90,0,0])
        rotate([0,0,45])
        cube([T*sqrt(2),T*sqrt(2),H+0.5],center=true);
        
        translate([-H1/2,0,H1/2])
        rotate([90,0,0])
        rotate([0,0,45])
        cube([T*sqrt(2),T*sqrt(2),H+0.5],center=true);
        
        for(s=[-1:2:1])
        scale([1,s,1])
        translate([0,(H+6*H1)/2-4.5/2,H1/2])
        rotate([90,0,0])
        cylinder(d=5.2,h=4.5,center=true,$fn=32);
        
    }
    
}

module crossX() {
    difference() {
        cube_center([H1,W+3*H1,H1]);
        for(s=[-1:2:1]) {
            scale([1,s,1]) {
                translate([H1/4,(W+3*H1)/2-H1/2-H1,0])
                cube_center([H1/2,H1,H1]);
                translate([0,(W+3*H1)/2-H1/2-H1,H1/2])
                cube_center([H1,H1,H1/2]);
            }
        }
    }
}

module crossY() {
    translate([-H1/4,0,H1/4])
    rotate([90,0,0])
    cylinder(d=H1/2,h=W+3*H1,center=true,$fn=32);
    difference() {
        cube_center([H1,W+3*H1,H1]);
        for(s=[-1:2:1]) {
            scale([1,s,1]) {
                translate([0,(W+3*H1)/2-H1/2-H1,0])
                cube_center([H1,H1,H1]);
            }
        }
    }
}

module cube_center(dims,r=0) {
    if(r==0) {
        translate([-dims[0]/2, -dims[1]/2, 0])
        cube(dims);
    } else {
        
        minkowski() {
            translate([-dims[0]/2+r, -dims[1]/2+r, 0])
            cube([dims[0]-2*r,dims[1]-2*r,dims[2]]);
            cylinder(r=r,h=0.00001,$fn=32);
        }
    }
}