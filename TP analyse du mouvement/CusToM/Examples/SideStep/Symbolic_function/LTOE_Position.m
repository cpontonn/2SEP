function out1 = LTOE_Position(in1,in2,in3,in4,in5,in6)
%LTOE_POSITION
%    OUT1 = LTOE_POSITION(IN1,IN2,IN3,IN4,IN5,IN6)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    17-Nov-2021 17:55:49

R2cut1_1 = in6(10);
R2cut1_2 = in6(13);
R2cut1_3 = in6(16);
R2cut2_1 = in6(11);
R2cut2_2 = in6(14);
R2cut2_3 = in6(17);
R2cut3_1 = in6(12);
R2cut3_2 = in6(15);
R2cut3_3 = in6(18);
k_sym14 = in4(14,:);
p2cut1 = in5(4);
p2cut2 = in5(5);
p2cut3 = in5(6);
q48 = in3(42,:);
t2 = cos(q48);
t3 = sin(q48);
t4 = k_sym14.*9.722222222222222e-4;
t5 = k_sym14.*3.616666666666667e-2;
t6 = k_sym14.*9.236111111111111e-3;
t7 = t4+4.861111111111111e-3;
t8 = t5+1.808333333333333e-1;
t9 = t6+4.618055555555556e-2;
mt1 = [p2cut1-t9.*(R2cut1_1./9.007199254740992e+15+R2cut1_2.*t2+R2cut1_3.*t3)-t8.*(-R2cut1_1+(R2cut1_2.*t2)./9.007199254740992e+15+(R2cut1_3.*t3)./9.007199254740992e+15)+t7.*(R2cut1_2.*t3-R2cut1_3.*t2),p2cut2-t9.*(R2cut2_1./9.007199254740992e+15+R2cut2_2.*t2+R2cut2_3.*t3)-t8.*(-R2cut2_1+(R2cut2_2.*t2)./9.007199254740992e+15+(R2cut2_3.*t3)./9.007199254740992e+15)+t7.*(R2cut2_2.*t3-R2cut2_3.*t2)];
mt2 = [p2cut3-t9.*(R2cut3_1./9.007199254740992e+15+R2cut3_2.*t2+R2cut3_3.*t3)-t8.*(-R2cut3_1+(R2cut3_2.*t2)./9.007199254740992e+15+(R2cut3_3.*t3)./9.007199254740992e+15)+t7.*(R2cut3_2.*t3-R2cut3_3.*t2)];
out1 = reshape([mt1,mt2],3,1);