W=64;
W2=100;
H=90;
T=1.5;
B=4;
Q=7;
H1=7;
HR=12;

for(x=[-5,5]) {
    translate([x,0,0])
    rotate([0,180,0])
    lockbar();
}

module lockbar() {
    difference() {
        translate([-H1/2-0.1,0,H1/2+0.2]) {
            scale([H1/2,W2,H1/2])
            rotate([-90,0,0])
            triangle();                    
        }
                
                
        translate([0,0,1.5*H1/4])
        cube_center([200,200,H1/4]);
            
        translate([0,0,0])
        cube_center([200,200,H1/8]);
                
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


module triangle() {
    linear_extrude(height = 1, center = true, convexity = 10, twist = 0)
    polygon(points=[[0,0],[1,0],[0,1]]);
}