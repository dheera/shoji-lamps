/**
 * A shoji-lamp base for 12V lightbulbs with the G4 socket.
 */

W=64;
W2=100;
H=90;
T=1.5;
B=4;
Q=7;
H1=7;
HR=12;

main();

module main() {
    rotate([0,180,0])
    translate([0,0,-H1/2])
    union() {
        base();
        rotate([0,180,0]) rim();
    }
}

/**
 * Base plate with all holes.
 */
module base() {
    difference() {
        union() {
            difference() {
                cube_center([W2,W2,H1/2]);

                for(s=[-1,1])
                for(t=[-1,1])
                translate([s*W/2,t*W/2,0]) {
                    cube_center([H1+0.2,H1+0.2,H1+0.2]);
                }

                // Lock-pin triangles
                difference() {
                    for(s=[-1,1])
                    scale([s,1,1])
                    translate([-W/2,0,0]) {

                        translate([-H1/2-0.1,0,H1/2])
                        scale([H1/2+0.2,W2*2,H1/2+0.2])
                        rotate([-90,0,0])
                        triangle();
                    }

                    translate([0,0,1.5*H1/4+0.2])
                    cube_center([200,200,H1/4]);

                    translate([0,0,0])
                    cube_center([200,200,H1/8-0.2]);
                }
            }
        }

        //
        for(y=[-6,6]) {
            translate([0,y,0])
            cylinder(d=3.1,h=H1/2,$fn=64);
        }

        hull() {
            for(x=[-1,1]) {
                translate([x,0,0])
                cylinder(d=3,h=H1/2,$fn=64);
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

module triangle() {
    linear_extrude(height = 1, center = true, convexity = 10, twist = 0)
    polygon(points=[[0,0],[1,0],[0,1]]);
}

module rim() {
    difference() {
        cube_center([W2,W2,20]);
        cube_center([W2-6,W2-6,20]);

        // Mount hole for a power-jack.
        translate([W2/2-3,0,10])
        rotate([0,90,0])
        cylinder(d=13,h=3,$fn=64);
    }
}
