//$vpr=[360*$t,0,360*$t];

module rinku(s,l) {
  $fn=20;
  rotate([90,0,0])
    difference() {
    cylinder(d=s,h=l);
    translate([0,0,-1])cylinder(d=s-7,h=l+2);
  }
}
module kayra()
  polygon([[20,0],[32,0],[32,2],[22,2/*1:0,0,0,0*/] ,[22,3.01] ,[22,4.03] ,[22,5.09] ,[22,6.14] ,[22,7.19],[22,8/*1:0,0,0,0*/] ,[22.87,8.54] ,[23.73,9.08] ,[24.57,9.63] ,[25.49,10.25] ,[26.33,10.84] ,[27.15,11.44] ,[28.01,12.11] ,[28.81,12.82],[29,13/*1:-2,-2,3,2*/] ,[29.78,13.63] ,[30.52,14.41] ,[31.19,15.3] ,[31.74,16.14] ,[32.29,17.11] ,[32.78,18.06] ,[33.23,19.04] ,[33.64,20.03] ,[33.99,20.97],[34,21/*1:0,0,0,0*/] ,[33,21],[32,21/*1:0,0,0,0*/] ,[31.85,19.97] ,[31.54,18.93] ,[31.12,17.94] ,[30.63,17.03] ,[30.05,16.16] ,[29.44,15.37] ,[28.71,14.55] ,[27.98,13.84] ,[27.15,13.12],[27,13/*1:5,4,-4,-3*/] ,[26.18,12.4] ,[25.27,11.78] ,[24.42,11.24] ,[23.53,10.7] ,[22.64,10.2] ,[21.71,9.73] ,[20.76,9.3],[20,9]]);



module kela() {
  $fn=100;
  difference(){
    rotate_extrude() kayra();
    translate([34.5,0,0]) cube(4+4.2,true);
    translate([-38,-0.1,1])cube([15,9,3],true);
  }
  translate([36,2+6.2,0]) rinku(10,4);
  translate([36,-2.2-2,0]) rinku(10,4);
  translate([32,2+4.2,1.5]) rotate([0,-25,0]) cube(4,true);
  translate([32,-4.2-2,1.5]) rotate([0,-25,0]) cube(4,true);
  translate([30,6.2,-1.5]) rotate([0,13,0]) cube([15,4,3],true);
  translate([30,-6.2,-1.5]) rotate([0,13,0]) cube([15,4,3],true);
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
  translate([-3,0,-2])cube([65,8,4],true);
  translate([-38.5,0,0])rotate([0,0,0])cube([15,8,8],true);
  translate([-33,0,3.3]) difference() { cube([12,8,2],true);  translate([7,0,1]) rotate([0,70,0]) cube(9,true); }
  translate([43,0,0]) cube([10,8,14],true);
  translate([2,0,-6]) cube([40,10,9],true);
  translate([-55,-8,-4]) cube([16,16,2.5]);
  difference(){
    translate([-30,0,-22]) rotate([0,90,0]) cylinder(d=25,h=65);
    translate([-30,0,-22]) rotate([0,90,0]) cylinder(d=22,h=66);
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


module movie () {
  translate([36,0,0])rotate([0,90*$t,0]) translate([-36,0,0]) kela();
  color("RED") pidike();
}

//movie();

kela();
pidike();
