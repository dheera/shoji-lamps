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
    R=1; // rounding radius
    
    difference() {
        
        // round edges slightly ...
        minkowski() {
            sphere(d=R,$fn=32);
            
            // ... of this:
            union() {
                // roof first layer
                minkowski() {
                    scale([0.8,1,1])
                    rotate([0,0,45])
                    cylinder(d1=W2*sqrt(2)-R*2,d2=0,h=HR,$fn=4);
                    cube_center([W2*0.2,1,1]);
                }

                // roof second layer
                translate([0,0,1])
                intersection(){
                    minkowski() {
                        scale([0.8,1,1])
                        rotate([0,0,45])
                        cylinder(d1=W2*sqrt(2)-R*2,d2=0,h=HR,$fn=4);
                        cube_center([W2*0.2,1,1]);
                    }
                    cube_center([60,51,100]);
                } // end intersection
            } // end union
        } // end minkowski
    
        // eat anything <0 from the rounding
        scale([1,1,-1])
        cube_center([500,500,100]);
    
        // subtract mounting holes
        for(s=[0,180])
        for(y=[-W/2,W/2])
        rotate([0,0,s])
        translate([y,W/2-H1/4,0])
        cube_center([H1+0.2,1.5*H1+0.2,H1/2+.3]);
        
        // subtract material from bottom middle to save filament
        minkowski() {
            rotate([0,0,45])
            cylinder(d1=30*sqrt(2),d2=0,h=11,$fn=4);
            
            cube_center([10,10,0.001]);
        }
    } // end difference
   
    // add triangles to mounting holes
    for(s=[-1:1])
    for(y=[-W/2,W/2])
    scale([1,s,1])
    translate([y,-W/2-H1+H1/2-0.35,0])
    scale([H1+0.2,H1/2,H1/2])
    rotate([0,-90,0])
    triangle();
    
    // add top handle/tab/ornament/whatever
    translate([0,0,HR])
    minkowski() {
        rotate([0,0,45])
        cylinder(d1=5,d2=20,h=HR,$fn=4);
        
        cube_center([W2*0.2-2,0.1,0.1]);
        
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

module triangle() {
    linear_extrude(height = 1, center = true, convexity = 10, twist = 0)
    polygon(points=[[0,0],[1,0],[0,1]]);
}