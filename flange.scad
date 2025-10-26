include </home/tess/projects/rackmateUtils/BOSL2/std.scad>
include </home/tess/projects/rackmateUtils/BOSL2/screws.scad>


difference() {
    union() {
        cylinder(h=3, d=30, $fn=25);
        threaded_rod(d=18, height=10, pitch=2, $fa=1, $fs=1,anchor=BOTTOM);
    }
        
    union() {
        translate([0,0,10.01])
            // See https://gist.github.com/ednisley/a9cb3ae6ec21129b7aa7bf7f59f8e014
            threaded_rod(d=9.7,l=6.0 + 0.1,pitch=INCH/28,internal=true,bevel2=true,anchor=TOP);

        cylinder(h=4, d1=8, d2=2, $fn=20);
    }
}
