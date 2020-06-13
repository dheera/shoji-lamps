W=64;
W2=100;
H=90;
T=1.5;
B=4;
Q=7;
H1=7;
HR=12;

color("white")
backing();
color("brown")
theactualpanel();

module backing() {
    cube_center([W-H1,H,0.15]);
}

module theactualpanel() {
    
    // the pointed edges that go into groove
    for(s=[-1:2:1])
        scale([s,1,1])
        translate([(W-H1)/2,0,])
        difference() {
            rotate([0,45,0])
            cube([1.5*sqrt(2),H,1.5*sqrt(2)],center=true);
            translate([0,0,-1.5])
            cube([3,H+1,3],center=true);
            translate([2.7,0,0])
            cube([3,H+1,3],center=true);
            translate([-2.7,0,0])
            cube([3,H+1,3],center=true);
    }
    
    intersection() {
        // clips the following to dimensions just in case
        cube_center([W-H1,H,1.5]);
        // of this:
        union() {
            // border
            difference() {
                cube_center([W,H,1.5]);
                translate([0,0,-1])
                cube_center([W-3*B,H-1.5*B,10]);
            }
            
            for(x=[-W/7,0,W/7])
            for(s=[-1,1])
            scale([1,s,1]) {
                translate([x,-H/2+4,0])
                cube_center([T,8,1.5]);
                
                translate([0,H/2-8,0])
                cube_center([W,T,1.5]);
            }
            
        }
    }
    
    translate([-W/2-3,-H/2-2])
    linear_extrude(height=0.3)
    scale([.22,.22])
    import("bamboo2.svg");
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

