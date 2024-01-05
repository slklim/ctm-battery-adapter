$fn=36;

module ContactCarveOut(side){
  union(){
    difference(){
      union(){
        translate([-5,-22,0]) cube([10,44,5.25]);
        translate([0,22,5]) rotate([90,0,0]) cylinder(44,5,5);
      }

      translate([0,22.5,5.25]) rotate([90,0,0]) cylinder(2,3.25,3.25);
      translate([0,21,5.25]) rotate([90,0,0]) cylinder(1,3.5,3.5);
      translate([-3,20.5,-0.5]) cube([6,2,5.75]);
      translate([-3.25,20,-0.5]) cube([6.5,1,5.75]);
      translate([-0.5,17,-0.5]) cube([1,4,3.5]);

      if(side){
        translate([0,18,5.25]) rotate([90,0,0]) cylinder(33,3.25,3.25);
        translate([-3.25,-15,-0.5]) cube([6.5,33,5.75]);
      } else {
        translate([0,18,5.25]) rotate([90,0,0]) cylinder(38,3.25,3.25);
        translate([-3.25,-20,-0.5]) cube([6.5,38,5.75]);
      }

      if(side){
        translate([0,-17,5.25]) rotate([90,0,0]) cylinder(6,3.5,3.5);
        translate([-5,-23,5.25]) cube([10,6,5]);

        translate([-6,-15,-0.75]) cube([4,33,4]);
      } else {
        translate([3,-20,-0.75]) cube([4,38,4]);
      }
    }

    if(side){
      translate([-4.25,-17,5.25]) rotate([90,0,0]) cylinder(5,0.75,0.75);
      translate([4.25,-17,5.25]) rotate([90,0,0]) cylinder(5,0.75,0.75);
    }
  }
}

module AaaBatteryPair(){
  difference(){
    union(){
      translate([-5.75, 1,0]) ContactCarveOut(false);
      translate([ 5.75,-1,0]) ContactCarveOut(true);
      translate([-0.75,-21,3.25]) cube([1.5,42,2]);
      translate([-0.75,-21,0]) cube([1.5,2,5.25]);
      translate([-0.75,19,0]) cube([1.5,2,5.25]);
      translate([5.75,0,4]) cylinder(4.5,3.275,3.275);
    }

    translate([5.75,0,3]) cylinder(9,1.5,1.5);
    translate([5.75,0,3]) cylinder(2,2,1.5);
  }
}

module AaaBatteryLid(){
  difference(){
    union(){
      translate([-9,-19,0]) cube([9.75,38,2]);
      translate([-0.75,-16,0]) cube([9.75,33,2]);
      translate([5.75,0,0]) cylinder(4,3,3);
    }

    translate([-9.75,3,-1]) cube([1,5,4]);

    translate([5.75,0,-1]) cylinder(6,1.5,1.5);
    translate([5.75,0,-0.2]) cylinder(2,3,1.5);
  }
}

module EnclosureScrewHole(x,y){
  translate([14.25*x,36.75*y,2]) cylinder(10,1.5,1.5);
  translate([14.25*x,36.75*y,12]) cylinder(2,1.5,3.25);
}

module Enclosure(){
  difference(){
    union(){
      difference(){
        union(){
          translate([-18,-40.5,0]) cube([36,81,14]);
          translate([-18,-42.5,2]) cube([36,85,10]);
          translate([-20,-40.5,2]) cube([40,81,12]);
          translate([-18,-40.5,2]) rotate([-90,0,0]) cylinder(81,2,2);
          translate([ 18,-40.5,2]) rotate([-90,0,0]) cylinder(81,2,2);
          translate([-18,-40.5,2]) rotate([0,90,0]) cylinder(36,2,2);
          translate([-18, 40.5,2]) rotate([0,90,0]) cylinder(36,2,2);
          translate([-18,-40.5,12]) rotate([0,90,0]) cylinder(36,2,2);
          translate([-18, 40.5,12]) rotate([0,90,0]) cylinder(36,2,2);
          translate([-18,-40.5,2]) cylinder(10,2,2);
          translate([ 18,-40.5,2]) cylinder(10,2,2);
          translate([-18, 40.5,2]) cylinder(10,2,2);
          translate([ 18, 40.5,2]) cylinder(10,2,2);
          translate([-18,-40.5,2]) sphere(2);
          translate([ 18,-40.5,2]) sphere(2);
          translate([-18, 40.5,2]) sphere(2);
          translate([ 18, 40.5,2]) sphere(2);
          intersection(){
            translate([-20,-40.5,12]) rotate([0,90,0]) cylinder(2,2,2);
            translate([-18,-40.5,12]) cylinder(2,2,2);
          }
          intersection(){
            translate([18,-40.5,12]) rotate([0,90,0]) cylinder(2,2,2);
            translate([18,-40.5,12]) cylinder(2,2,2);
          }
          intersection(){
            translate([-20,40.5,12]) rotate([0,90,0]) cylinder(2,2,2);
            translate([-18,40.5,12]) cylinder(2,2,2);
          }
          intersection(){
            translate([18,40.5,12]) rotate([0,90,0]) cylinder(2,2,2);
            translate([18,40.5,12]) cylinder(2,2,2);
          }
        }
//        translate([-20,-42.5,0]) cube([40,85,14]);

        translate([-18,-32,3]) cube([36,64,9]);
        translate([-17,-33,3]) cube([34,66,8]);
        translate([-10.5,-39.5,3]) cube([21,3,8]);
        translate([-9.5,-40.5,3]) cube([19,1.5,9]);

        translate([-9.5,32,3]) cube([6.5,4,8]);
        translate([-1.5,32,3]) cube([3,4,8]);
        translate([3,32,3]) cube([6.5,4,8]);
        translate([-11,35.25,3]) cube([22,1.75,8]);
        translate([-10.5,36.5,3]) cube([7.5,3,8]);
        translate([-4,36.5,3]) cube([8,3,7.5]);
        translate([3,36.5,3]) cube([7.5,3,8]);
        translate([-9.5,38.5,3]) cube([19,2,8]);
        translate([-17,-32,2]) cube([34,64,10]);
        translate([-14.25,-36.75,2]) cube([28.5,50,10]);
        translate([-9.5,-39.5,2]) cube([19,3,10]);
        translate([-8.5,32,2]) cube([4.5,4,10]);
        translate([4,32,2]) cube([4.5,4,10]);
        translate([-10,35.25,2]) cube([20,1.75,10]);
        translate([-9.5,36.5,2]) cube([5.5,3,10]);
        translate([4,36.5,2]) cube([5.5,3,10]);
      }

      translate([-14.25,-36.75,2]) cylinder(1,4.75,4.75);
      translate([ 14.25,-36.75,2]) cylinder(1,4.75,4.75);
      translate([-14.25,-36.75,3]) cylinder(8,3.75,3.75);
      translate([ 14.25,-36.75,3]) cylinder(8,3.75,3.75);
      translate([-14.25,-36.75,11]) cylinder(1,4.75,4.75);
      translate([ 14.25,-36.75,11]) cylinder(1,4.75,4.75);
    }

    EnclosureScrewHole(-1,-1);
    EnclosureScrewHole( 1,-1);
    EnclosureScrewHole(-1, 1);
    EnclosureScrewHole( 1, 1);
  }
}

module EnclosureBase(){
  difference(){
    Enclosure();
    translate([-18,-40.5,10]) cube([36,81,5]);
    translate([0,41.5,11]) cube([8.74,4,7],center=true);
    translate([0,41.5,11]) cube([7.74,4,8],center=true);

    translate([-4,32,3]) cube([8,4,10]);
    translate([-9.5,36.5,2]) cube([19,3,2]);

    translate([-3.8745,43.5,7.5]) rotate([90,0,0]) cylinder(4,0.5,0.5);
    translate([ 3.8745,43.5,7.5]) rotate([90,0,0]) cylinder(4,0.5,0.5);
    translate([-8.57,41.5,11]) cube([3,4,8],center=true);
    translate([-8.57,43.5,7]) rotate([90,0,0]) cylinder(4,1.5,1.5);
    translate([8.66,41.5,8.9]) cube([3.54,4,10.2],center=true);
    translate([-10.07,39.5,10]) cube([20.5,4,5]);
    translate([-17,-32,3]) cylinder(8,1,1);
    translate([ 17,-32,3]) cylinder(8,1,1);
    translate([-17, 32,3]) cylinder(8,1,1);
    translate([ 17, 32,3]) cylinder(8,1,1);
    translate([-9.5,-39.5,3]) cylinder(8,1,1);
    translate([ 9.5,-39.5,3]) cylinder(8,1,1);
    translate([-9.5, 39.5,3]) cylinder(8,1,1);
    translate([ 9.5, 39.5,3]) cylinder(8,1,1);
    translate([-17,-32,3]) rotate([-90,0,0]) cylinder(64,1,1);
    translate([17,-32,3]) rotate([-90,0,0]) cylinder(64,1,1);
    translate([-9.5,-39.5,3]) rotate([-90,0,0]) cylinder(6,1,1);
    translate([9.5,-39.5,3]) rotate([-90,0,0]) cylinder(6,1,1);
    translate([-9.5,-39.5,3]) rotate([0,90,0]) cylinder(19,1,1);
    translate([-9.5,39.5,3]) rotate([0,90,0]) cylinder(19,1,1);
    translate([-17,-32,3]) rotate([0,90,0]) cylinder(34,1,1);
    translate([-17,32,3]) rotate([0,90,0]) cylinder(34,1,1);
    translate([-8.5,32,3]) rotate([-90,0,0]) cylinder(4,1,1);
    translate([-4,32,3]) rotate([-90,0,0]) cylinder(4,1,1);
    translate([ 4,32,3]) rotate([-90,0,0]) cylinder(4,1,1);
    translate([ 8.5,32,3]) rotate([-90,0,0]) cylinder(4,1,1);
    translate([-10,35.25,3]) rotate([-90,0,0]) cylinder(1.75,1,1);
    translate([ 10,35.25,3]) rotate([-90,0,0]) cylinder(1.75,1,1);
    translate([-9.5,36.5,3]) rotate([-90,0,0]) cylinder(3,1,1);
    translate([ 9.5,36.5,3]) rotate([-90,0,0]) cylinder(3,1,1);
    translate([-14.25,-36.75,3]) rotate_extrude(angle=90) translate([4.75,0,0]) circle(1);
    translate([14.25,-36.75,3]) rotate([0,0,90]) rotate_extrude(angle=90) translate([4.75,0,0]) circle(1);
    translate([-17,-32,3]) sphere(1);
    translate([ 17,-32,3]) sphere(1);
    translate([-17, 32,3]) sphere(1);
    translate([ 17, 32,3]) sphere(1);
    translate([-9.5,-39.5,3]) sphere(1);
    translate([ 9.5,-39.5,3]) sphere(1);
    translate([-9.5, 39.5,3]) sphere(1);
    translate([ 9.5, 39.5,3]) sphere(1);
  }
}

module EnclosureLid(){
  difference(){
    union(){
      intersection(){
        Enclosure();
        
        union(){
          translate([-18,-40.5,10]) cube([36,81,4]);
          translate([-10.07,40.5,10]) cube([20.5,2,4]);
        }
      }

      translate([0,0,14]) cylinder(1.75,12,12);
      translate([0,0,15.75]) cylinder(0.5,14.5,15);
      translate([0,0,16.25]) cylinder(0.25,15,15);
      translate([0,0,16.5]) cylinder(0.25,15,14.75);
    }

    translate([3,-40.5,10]) cube([5,0.25,4]);

    translate([-10,-16,15]) cube([20,4,2]);
    translate([-10, 12,15]) cube([20,4,2]);

    translate([-10.5,-40.5,10]) cube([21,2,1]);
    translate([-18,-33,10]) cube([36,66,1]);

    translate([-0.5,32,10]) cube([1,4,2]);

    translate([-9.5,-40.5,11]) rotate([-90,0,0]) cylinder(7,1,1);
    translate([9.5,-40.5,11]) rotate([-90,0,0]) cylinder(7,1,1);
    translate([-9.5,39.5,11]) rotate([0,90,0]) cylinder(19,1,1);
    translate([-18,-32,11]) rotate([0,90,0]) cylinder(36,1,1);
    translate([-18,32,11]) rotate([0,90,0]) cylinder(36,1,1);
    translate([-8.5,32,11]) rotate([-90,0,0]) cylinder(4,1,1);
    translate([-4,32,11]) rotate([-90,0,0]) cylinder(7.5,1,1);
    translate([-0.5,32,11]) rotate([-90,0,0]) cylinder(4,1,1);
    translate([0.5,32,11]) rotate([-90,0,0]) cylinder(4,1,1);
    translate([4,32,11]) rotate([-90,0,0]) cylinder(7.5,1,1);
    translate([ 8.5,32,11]) rotate([-90,0,0]) cylinder(4,1,1);
    translate([-10,35.25,11]) rotate([-90,0,0]) cylinder(1.75,1,1);
    translate([ 10,35.25,11]) rotate([-90,0,0]) cylinder(1.75,1,1);
    translate([-9.5,36.5,11]) rotate([-90,0,0]) cylinder(3,1,1);
    translate([ 9.5,36.5,11]) rotate([-90,0,0]) cylinder(3,1,1);
    translate([-9.5,39.5,10]) cylinder(1,1,1);
    translate([ 9.5,39.5,10]) cylinder(1,1,1);
    translate([-14.25,-36.75,11]) rotate_extrude(angle=90) translate([4.75,0,0]) circle(1);
    translate([14.25,-36.75,11]) rotate([0,0,90]) rotate_extrude(angle=90) translate([4.75,0,0]) circle(1);
    translate([-9.5,39.5,11]) sphere(1);
    translate([ 9.5,39.5,11]) sphere(1);
  }
}

/*for(i=[0:4]){
  for(j=[0:1]){
    translate([24*i,46*j,0]) AaaBatteryPair();
    if(i<4){
      translate([24*i+10,46*j-10,0.5]) cube([4,1,1]);
      translate([24*i+10,46*j+9, 0.5]) cube([4,1,1]);
    }
    
    if(j<1){
      translate([24*i-2,46*j+21,0.5]) cube([1,4,1]);
    }
  }
}*/

/*for(i=[0:4]){
  for(j=[0:1]){
    translate([20*i,40*j,0]) AaaBatteryLid();
    if(i<4){
      translate([20*i+8,40*j-10,0.5]) cube([4,1,1]);
      translate([20*i+8,40*j+9, 0.5]) cube([4,1,1]);
    }
    
    if(j<1){
      translate([20*i-5,40*j+17,0.5]) cube([1,4,1]);
    }
  }
}*/

/*difference(){
  Enclosure();
  translate([-18,-40,10]) cube([36,80,5]);
}*/

translate([0,-60,0]) rotate([180,180,90]){
  AaaBatteryPair();
  AaaBatteryLid();
}

EnclosureBase();
EnclosureLid();

/*translate([-19,0,0]) EnclosureLid();
translate([ 19,0,0]) EnclosureLid();
translate([-2, -0.5, 12.5]) cube([4,1,1]);
translate([-2,-30.5, 12.5]) cube([4,1,1]);
translate([-2, 29.5, 12.5]) cube([4,1,1]);*/

//translate([-11,34.5,2]) cube([22,2,10]);
