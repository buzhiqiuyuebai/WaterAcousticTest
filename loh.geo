cl_1 = 500;
Point(1) = {-15000, 15000, 155000, cl_1};
Point(2) = {-15000, 15000, 185000, cl_1};
Point(3) = {-15000, -15000, 155000, cl_1};
Point(4) = {-15000, -15000, 185000, cl_1};
Point(5) = {15000, -15000, 155000, cl_1};
Point(6) = {15000, -15000, 185000, cl_1};
Point(7) = {15000, 15000, 155000, cl_1};
Point(8) = {15000, 15000, 185000, cl_1};
//+
Line(1) = {8, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {4, 6};
//+
Line(4) = {6, 8};
//+
Line(5) = {8, 7};
//+
Line(6) = {7, 5};
//+
Line(7) = {5, 6};
//+
Line(8) = {5, 3};
//+
Line(9) = {3, 4};
//+
Line(10) = {2, 1};
//+
Line(11) = {1, 3};
//+
Line(12) = {1, 7};
//+
Curve Loop(1) = {5, -12, -10, -1};
//+
Plane Surface(2) = {1};
//+
Curve Loop(2) = {3, -7, 8, 9};
//+
Plane Surface(3) = {2};
//+
Curve Loop(3) = {4, 5, 6, 7};
//+
Plane Surface(4) = {3};
//+
Curve Loop(4) = {2, -9, -11, -10};
//+
Plane Surface(5) = {4};
//+
Curve Loop(5) = {3, 4, 1, 2};
//+
Plane Surface(6) = {5};
//+
Curve Loop(6) = {8, -11, 12, 6};
//+
Plane Surface(7) = {6};
//+



cl_2=75;
Point(111) = {-7500, 1500, 169000, cl_2};
Point(112) = {-7500, 1500, 178500, cl_2};
Point(113) = {-7500, -1500, 169000, cl_2};
Point(114) = {-7500, -1500, 178500, cl_2};
Point(115) = {7500, -1500, 169000, cl_2};
Point(116) = {7500, -1500, 178500, cl_2};
Point(117) = {7500, 1500, 169000, cl_2};
Point(118) = {7500, 1500, 178500, cl_2};
//+
Line(111) = {118, 112};
//+
Line(112) = {112, 114};
//+
Line(113) = {114, 116};
//+
Line(114) = {116, 118};
//+
Line(115) = {118, 117};
//+
Line(116) = {117, 115};
//+
Line(117) = {115, 116};
//+
Line(118) = {115, 113};
//+
Line(119) = {113, 114};
//+
Line(1110) = {112, 111};
//+
Line(1111) = {111, 113};
//+
Line(1112) = {111, 117};
//+
Curve Loop(111) = {115, -1112, -1110, -111};
//+
Plane Surface(112) = {111};
//+
Curve Loop(112) = {113, -117, 118, 119};
//+
Plane Surface(113) = {112};
//+
Curve Loop(113) = {114, 115, 116, 117};
//+
Plane Surface(114) = {113};
//+
Curve Loop(114) = {112, -119, -1111, -1110};
//+
Plane Surface(115) = {114};
//+
Curve Loop(115) = {113, 114, 111, 112};
//+
Plane Surface(116) = {115};
//+
Curve Loop(116) = {118, -1111, 1112, 116};
//+
Plane Surface(117) = {116};



//+
Surface Loop(1) = {6, 3, 4, 2, 7, 5};
//+
Surface Loop(2) = {115, 116, 113, 114, 112, 117};
//+
Volume(1) = {1, 2};
//+
Volume(2) = {2};
//+
Physical Surface(105) = {2, 6, 3, 7, 5, 4};
//+
Physical Surface(100) = {112, 116, 113, 117, 115, 114};
//+
Physical Volume(1) = {1};
Physical Volume(2) = {2};
//+
Mesh.MshFileVersion = 2.2;

