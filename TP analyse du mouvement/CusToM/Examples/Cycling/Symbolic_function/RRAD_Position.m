function out1 = RRAD_Position(in1,in2,in3)
%RRAD_POSITION
%    OUT1 = RRAD_POSITION(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    29-Apr-2021 11:08:02

R6cut1_1 = in3(46);
R6cut1_2 = in3(49);
R6cut1_3 = in3(52);
R6cut2_1 = in3(47);
R6cut2_2 = in3(50);
R6cut2_3 = in3(53);
R6cut3_1 = in3(48);
R6cut3_2 = in3(51);
R6cut3_3 = in3(54);
p6cut1 = in2(16);
p6cut2 = in2(17);
p6cut3 = in2(18);
q31 = in1(31,:);
q32 = in1(32,:);
t2 = cos(q31);
t3 = cos(q32);
t4 = sin(q31);
t5 = sin(q32);
t6 = R6cut1_1.*t2;
t7 = R6cut2_1.*t2;
t8 = R6cut3_1.*t2;
t9 = R6cut1_3.*t4;
t10 = R6cut2_3.*t4;
t11 = R6cut3_3.*t4;
t12 = -t9;
t13 = -t10;
t14 = -t11;
t15 = t6+t12;
t16 = t7+t13;
t17 = t8+t14;
out1 = [R6cut1_2.*(-3.426883504894108e-1)+p6cut1+R6cut1_1.*t4.*3.967592878980298e-2-R6cut1_2.*t3.*5.482185097129999e-3+R6cut1_3.*t2.*3.967592878980298e-2+R6cut1_2.*t5.*2.365009647316535e-2+t3.*t15.*2.365009647316535e-2+t5.*t15.*5.482185097129999e-3;R6cut2_2.*(-3.426883504894108e-1)+p6cut2+R6cut2_1.*t4.*3.967592878980298e-2-R6cut2_2.*t3.*5.482185097129999e-3+R6cut2_3.*t2.*3.967592878980298e-2+R6cut2_2.*t5.*2.365009647316535e-2+t3.*t16.*2.365009647316535e-2+t5.*t16.*5.482185097129999e-3;R6cut3_2.*(-3.426883504894108e-1)+p6cut3+R6cut3_1.*t4.*3.967592878980298e-2-R6cut3_2.*t3.*5.482185097129999e-3+R6cut3_3.*t2.*3.967592878980298e-2+R6cut3_2.*t5.*2.365009647316535e-2+t3.*t17.*2.365009647316535e-2+t5.*t17.*5.482185097129999e-3];
