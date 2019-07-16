cl=0.1;
Point(1) = {-1, -1, 0, cl};
Point(2) = {1, -1, 0, cl};
Point(3) = {1, 1, 0, cl};
Point(4) = {-1, 1, 0, cl};
Point(5) = {-0.1, -0.1, 0, cl};
Point(6) = {0.1, -0.1, 0, cl};
Point(7) = {0.1, 0.1, 0, cl};
Point(8) = {-0.1, 0.1, 0, cl};
//+
Line(1) = {8, 7};
//+
Line(2) = {7, 6};
//+
Line(3) = {6, 5};
//+
Line(4) = {5, 8};
//+
Line(5) = {3, 2};
//+
Line(6) = {2, 1};
//+
Line(7) = {1, 4};
//+
Line(8) = {4, 3};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {8, 5, 6, 7};
//+
Plane Surface(2) = {1, 2};
//+
Physical Surface(1) = {2};
//+
Physical Surface(2) = {1};
//+
Physical Curve(3) = {8, 7, 6, 5};

