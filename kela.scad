
module rinku(s,l) {
  $fn=20;
  rotate([90,0,0])
    difference() {
    cylinder(d=s,h=l);
    translate([0,0,-1])cylinder(d=s-7,h=l+2);
  }
}
module kayra() 
polygon([[16,0],[32,0],[32,2],[19,2],[19,4/*1:0,0,0,0*/] ,[19.92,4.49] ,[20.81,4.99] ,[21.71,5.53] ,[22.58,6.09] ,[23.45,6.7] ,[24.28,7.34],[25,8/*1:-2,-2,2,2*/] ,[25.68,8.76] ,[26.31,9.63] ,[26.85,10.49] ,[27.34,11.43] ,[27.75,12.34],[28,13],[26,13/*1:0,0,0,0*/] ,[26.02,11.99] ,[25.68,11.05] ,[25.13,10.14] ,[24.5,9.35] ,[23.77,8.56] ,[22.96,7.81] ,[22.15,7.12],[22,7/*1:5,4,-4,-2*/] ,[21.08,6.54] ,[20.13,6.07] ,[19.2,5.6] ,[18.23,5.12] ,[17.33,4.66] ,[16.41,4.2],[16,4]]);

module kela() {
  $fn=100;
  difference(){
    rotate_extrude() kayra();
    translate([34.5,0,0]) cube(4+4.2,true);
    translate([-38,-0.1,1])cube([15,9,3],true);
  }
  translate([36,2+6.2,0]) rinku(10,3.84);
  translate([36,-2.2-2,0]) rinku(10,4);
  translate([32,2+4.2,1.5]) rotate([0,-25,0]) cube(4,true);
  translate([32,-4.2-2,1.5]) rotate([0,-25,0]) cube(4,true);
  translate([30,6.2,-1]) rotate([0,20,0]) cube([11,4,2],true);
  translate([30,-6.2,-1]) rotate([0,20,0]) cube([11,4,2],true);
}

module kaari() {
  difference(){
    translate([0,-10,1])cube([10,20,9]);
    cylinder(d=15,h=11);
 }
}

module pidike1() {
  translate([36,4,0]) rinku(10,8);
  translate([5,0,-3])cube([60,8,6],true);
  translate([37,0,-5])cube([10,8,4],true);
  translate([-3,0,-2])cube([65,10,4],true);
  translate([-38.5,0,0])rotate([0,0,0])cube([15,8,8],true);
  translate([-33,0,3.3]) difference() { cube([12,8,2],true);  translate([7,0,1]) rotate([0,70,0]) cube(9,true); }
  translate([43,0,0]) cube([10,8,14],true);
  translate([2,0,-6]) cube([40,10,9],true);
  difference(){
    translate([-30,0,-22]) rotate([0,90,0]) cylinder(d=25,h=65);
    translate([-30,0,-22]) rotate([0,90,0]) cylinder(d=23,h=66);
    translate([0,0,-28])cube([80,30,30],true);
    translate([27,0,-18]) kaari();
    translate([-22,0,-18]) rotate([0,0,180]) kaari();
  }
}
module  pidike()  difference(){
  pidike1();
  $fn=20;
  //  translate([-25,0,-3]) rotate([0,90,0])cylinder(d=3,h=70,true,);
  translate([37,-5,8]) rotate([0,30,0]) cube(14);
  translate([-50,-5,8]) rotate([0,70,0]) cube([10,10,20]);
}

//translate([36,0,36])rotate([0,90,0])
kela();
color("RED")
pidike();

