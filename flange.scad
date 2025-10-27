include </home/tess/projects/rackmateUtils/BOSL2/std.scad>
include </home/tess/projects/rackmateUtils/BOSL2/screws.scad>

difference() {
    union() {
        //cylinder(h=3, d=15, $fn=35);
        linear_extrude(3)
        hexagon(d=25);
        threaded_rod(d=17.6, height=10, pitch=3, $fa=1, $fs=1,anchor=BOTTOM);
    }
        
    union() {
        translate([0,0,10.01])
            // See https://gist.github.com/ednisley/a9cb3ae6ec21129b7aa7bf7f59f8e014
            threaded_rod(d=9.7,l=6.1,pitch=INCH/28,internal=true,bevel2=true,anchor=TOP,$slop=0.1);

        cylinder(h=4, d1=10, d2=2, $fn=20);
    }
}

/*
difference() {
    linear_extrude(23)
        star(n=16, step=2, d=25);
    
    union() {
        translate([0,0,10])
            cylinder(h=10, d1=18, d2=12, $fn=35);

        threaded_rod(d=18, height=10, pitch=3, blunt_start=false, $fa=1, $fs=1,anchor=BOTTOM, internal=true, $slop=0.1);
        
    }
}
*/