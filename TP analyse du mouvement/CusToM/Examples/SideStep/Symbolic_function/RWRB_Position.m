function out1 = RWRB_Position(in1,in2,in3,in4,in5,in6)
%RWRB_POSITION
%    OUT1 = RWRB_POSITION(IN1,IN2,IN3,IN4,IN5,IN6)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    17-Nov-2021 17:55:52

R9cut1_1 = in6(73);
R9cut1_2 = in6(76);
R9cut1_3 = in6(79);
R9cut2_1 = in6(74);
R9cut2_2 = in6(77);
R9cut2_3 = in6(80);
R9cut3_1 = in6(75);
R9cut3_2 = in6(78);
R9cut3_3 = in6(81);
k_sym17 = in4(17,:);
p9cut1 = in5(25);
p9cut2 = in5(26);
p9cut3 = in5(27);
p_adapt_sym42 = in4(64,:);
q53 = in3(47,:);
t2 = cos(q53);
t3 = sin(q53);
t4 = k_sym17./5.0;
t5 = p_adapt_sym42./2.0e+1;
t7 = k_sym17.*5.833333333333333e-3;
t6 = t4+1.0;
t8 = t7+7.0./2.4e+2;
t9 = t5-2.529722222222222e-1;
out1 = [p9cut1-t8.*(R9cut1_1.*t3+R9cut1_3.*t2)+R9cut1_2.*t6.*t9;p9cut2-t8.*(R9cut2_1.*t3+R9cut2_3.*t2)+R9cut2_2.*t6.*t9;p9cut3-t8.*(R9cut3_1.*t3+R9cut3_3.*t2)+R9cut3_2.*t6.*t9];
