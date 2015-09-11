clear;
clc;

d1 = 0.352;
a1 = 0.07;
a2 = 0.36;
d4 = 0.38;
d6 = 0.065;

L(1) = Link([0 d1 a1 -pi/2]);
L(2) = Link([0  0 a2     0]);
L(3) = Link([0  0  0  pi/2]);
L(4) = Link([0 d4  0 -pi/2]);
L(5) = Link([0  0  0  pi/2]);
L(6) = Link([0 d6  0  pi/2]);

irb_140 = SerialLink(L, 'name', 'IRB140');
irb_140.teach()
