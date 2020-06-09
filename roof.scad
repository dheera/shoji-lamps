W=64;
W2=100;
H=90;
T=1.5;
B=7;
Q=7;
H1=7;
HR=12;

roof3();
module roof3() {
    R=1;
    difference() {
    minkowski() {
        scale([0.8,1,1])
        rotate([0,0,45])
        cylinder(d1=W2*sqrt(2)-R*2,d2=0,h=HR,$fn=4);
        cube_center([W2*0.2,1,1]);
        sphere(d=R,$fn=32);
    }
    scale([1,1,-1])
    cube_center([500,500,100]);
    
    for(s=[-1:1])
        for(y=[-W/2,W/2])
            scale([1,s,1])
    translate([y,W/2-H1/4,0])
        difference() {
        cube_center([H1+0.2,1.5*H1+0.3,H1/2+.2]);
            translate([0,H1/2+0.2,0])
        cube_center([H1+0.2,H1/2,H1/4-0.3]);
        }
     rotate([0,0,45])
    cylinder(d1=60,d2=0,h=10,$fn=4);
}
    translate([0,0,HR])
minkowski() {
    rotate([0,0,45])
    cylinder(d1=5,d2=15,h=HR,$fn=4);
    cube_center([W2*0.2,0.1,0.1]);
    
        sphere(d=R,$fn=32);
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