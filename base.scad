W=64;
W2=100;
H=90;
T=1.5;
B=4;
Q=7;
H1=7;
HR=12;

base();

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
    
        cube_center([W/2*1.5,W/2*1.5,H1]);
}
    
        for(x=[-20:10:20])
        for(y=[-20:10:20])
        translate([x,y,0.5])
        cylinder(d=2.1,h=30,$fn=8);
        
        for(s=[-1,1])
        for(t=[-1,1])
        translate([0,s*W/2,0]) {
            cylinder(d=4,h=30,$fn=64);
            translate([0,0,H1/2-5])
            cylinder(d1=0,d2=9,h=5,$fn=64);
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