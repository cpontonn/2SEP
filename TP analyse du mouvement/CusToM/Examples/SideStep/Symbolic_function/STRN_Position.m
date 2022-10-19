function out1 = STRN_Position(in1,in2,in3,in4,in5,in6)
%STRN_POSITION
%    OUT1 = STRN_POSITION(IN1,IN2,IN3,IN4,IN5,IN6)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    17-Nov-2021 17:55:31

R4cut1_1 = in6(28);
R4cut1_2 = in6(31);
R4cut1_3 = in6(34);
R4cut2_1 = in6(29);
R4cut2_2 = in6(32);
R4cut2_3 = in6(35);
R4cut3_1 = in6(30);
R4cut3_2 = in6(33);
R4cut3_3 = in6(36);
k_sym3 = in4(3,:);
p4cut1 = in5(10);
p4cut2 = in5(11);
p4cut3 = in5(12);
p_adapt_sym1 = in4(23,:);
q7 = in3(7,:);
t2 = cos(q7);
t3 = sin(q7);
t4 = k_sym3./5.0;
t5 = p_adapt_sym1./2.0e+1;
t7 = k_sym3.*2.586111111111111e-2;
t6 = t4+1.0;
t8 = t5+9.138888888888889e-2;
t9 = t7+1.293055555555556e-1;
out1 = [p4cut1+t9.*(R4cut1_1.*t2-R4cut1_3.*t3)+R4cut1_2.*t6.*t8;p4cut2+t9.*(R4cut2_1.*t2-R4cut2_3.*t3)+R4cut2_2.*t6.*t8;p4cut3+t9.*(R4cut3_1.*t2-R4cut3_3.*t3)+R4cut3_2.*t6.*t8];
