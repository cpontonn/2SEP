function out1 = RSHO_Position(in1,in2,in3,in4,in5,in6)
%RSHO_POSITION
%    OUT1 = RSHO_POSITION(IN1,IN2,IN3,IN4,IN5,IN6)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    17-Nov-2021 17:55:33

R8cut1_1 = in6(64);
R8cut1_2 = in6(67);
R8cut1_3 = in6(70);
R8cut2_1 = in6(65);
R8cut2_2 = in6(68);
R8cut2_3 = in6(71);
R8cut3_1 = in6(66);
R8cut3_2 = in6(69);
R8cut3_3 = in6(72);
k_sym5 = in4(5,:);
p8cut1 = in5(22);
p8cut2 = in5(23);
p8cut3 = in5(24);
p_adapt_sym6 = in4(28,:);
p_adapt_sym7 = in4(29,:);
q19 = in3(16,:);
q20 = in3(17,:);
t2 = cos(q19);
t3 = cos(q20);
t4 = sin(q19);
t5 = sin(q20);
t12 = k_sym5./5.0;
t13 = p_adapt_sym6./2.0e+1;
t14 = p_adapt_sym7./2.0e+1;
t19 = k_sym5.*1.015626111111111e-2;
t6 = R8cut1_1.*t2;
t7 = R8cut2_1.*t2;
t8 = R8cut3_1.*t2;
t9 = R8cut1_2.*t4;
t10 = R8cut2_2.*t4;
t11 = R8cut3_2.*t4;
t15 = t12+1.0;
t20 = t13+4.427879166666666e-2;
t21 = t14+5.555689102696078e-2;
t22 = t19+5.078130555555555e-2;
t16 = t6+t9;
t17 = t7+t10;
t18 = t8+t11;
out1 = [p8cut1+t22.*(R8cut1_2.*t2-R8cut1_1.*t4)-t15.*t20.*(R8cut1_3.*t5-t3.*t16)+t15.*t21.*(R8cut1_3.*t3+t5.*t16);p8cut2+t22.*(R8cut2_2.*t2-R8cut2_1.*t4)-t15.*t20.*(R8cut2_3.*t5-t3.*t17)+t15.*t21.*(R8cut2_3.*t3+t5.*t17);p8cut3+t22.*(R8cut3_2.*t2-R8cut3_1.*t4)-t15.*t20.*(R8cut3_3.*t5-t3.*t18)+t15.*t21.*(R8cut3_3.*t3+t5.*t18)];
