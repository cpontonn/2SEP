function out1 = RKNI_Position(in1,in2,in3,in4,in5,in6)
%RKNI_POSITION
%    OUT1 = RKNI_POSITION(IN1,IN2,IN3,IN4,IN5,IN6)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    17-Nov-2021 17:55:42

R1cut1_1 = in6(1);
R1cut1_2 = in6(4);
R1cut1_3 = in6(7);
R1cut2_1 = in6(2);
R1cut2_2 = in6(5);
R1cut2_3 = in6(8);
R1cut3_1 = in6(3);
R1cut3_2 = in6(6);
R1cut3_3 = in6(9);
k_sym1 = in4(1,:);
k_sym9 = in4(9,:);
k_sym10 = in4(10,:);
p1cut1 = in5(1);
p1cut2 = in5(2);
p1cut3 = in5(3);
p_adapt_sym25 = in4(47,:);
p_adapt_sym26 = in4(48,:);
q1 = in3(1,:);
q37 = in3(31,:);
q38 = in3(32,:);
q39 = in3(33,:);
q40 = in3(34,:);
t2 = cos(q1);
t3 = cos(q37);
t4 = cos(q38);
t5 = cos(q39);
t6 = cos(q40);
t7 = sin(q1);
t8 = sin(q37);
t9 = sin(q38);
t10 = sin(q39);
t11 = sin(q40);
t30 = k_sym10./5.0;
t37 = p_adapt_sym25./2.0e+1;
t38 = p_adapt_sym26./2.0e+1;
t40 = k_sym1.*(7.0./4.5e+2);
t41 = k_sym1.*(7.0./7.2e+2);
t42 = k_sym9.*4.861111111111111e-3;
t43 = k_sym9.*1.944444444444444e-3;
t44 = k_sym1.*1.555555555555556e-3;
t51 = k_sym9.*8.847222222222222e-2;
t12 = R1cut1_1.*t2;
t13 = R1cut1_2.*t2;
t14 = R1cut2_1.*t2;
t15 = R1cut2_2.*t2;
t16 = R1cut3_1.*t2;
t17 = R1cut3_2.*t2;
t18 = R1cut1_3.*t4;
t19 = R1cut2_3.*t4;
t20 = R1cut3_3.*t4;
t21 = R1cut1_1.*t7;
t22 = R1cut1_2.*t7;
t23 = R1cut2_1.*t7;
t24 = R1cut2_2.*t7;
t25 = R1cut3_1.*t7;
t26 = R1cut3_2.*t7;
t27 = R1cut1_3.*t9;
t28 = R1cut2_3.*t9;
t29 = R1cut3_3.*t9;
t39 = t30+1.0;
t58 = t40+7.0./9.0e+1;
t59 = t41+7.0./1.44e+2;
t60 = t42+7.0./2.88e+2;
t70 = t43+7.0./7.2e+2;
t71 = t44+7.0./9.0e+2;
t72 = t38-4.9e+1./9.0e+2;
t73 = t37-2.838888888888889e-2;
t74 = t51+4.423611111111111e-1;
t31 = -t18;
t32 = -t19;
t33 = -t20;
t34 = -t21;
t35 = -t23;
t36 = -t25;
t45 = t12+t22;
t46 = t14+t24;
t47 = t16+t26;
t48 = t13+t34;
t49 = t15+t35;
t50 = t17+t36;
t52 = t3.*t45;
t53 = t3.*t46;
t54 = t3.*t47;
t55 = t8.*t45;
t56 = t8.*t46;
t57 = t8.*t47;
t61 = t3.*t48;
t62 = t3.*t49;
t63 = t3.*t50;
t64 = t8.*t48;
t65 = -t55;
t66 = t8.*t49;
t67 = -t56;
t68 = t8.*t50;
t69 = -t57;
t75 = t52+t64;
t76 = t53+t66;
t77 = t54+t68;
t78 = t61+t65;
t79 = t62+t67;
t80 = t63+t69;
t87 = -t4.*(t55-t61);
t88 = -t4.*(t56-t62);
t89 = -t4.*(t57-t63);
t90 = -t9.*(t55-t61);
t91 = -t9.*(t56-t62);
t92 = -t9.*(t57-t63);
t99 = -t5.*(t18+t9.*(t55-t61));
t100 = -t5.*(t19+t9.*(t56-t62));
t101 = -t5.*(t20+t9.*(t57-t63));
t102 = -t10.*(t18+t9.*(t55-t61));
t103 = -t10.*(t19+t9.*(t56-t62));
t104 = -t10.*(t20+t9.*(t57-t63));
t105 = t5.*(t18+t9.*(t55-t61));
t106 = t5.*(t19+t9.*(t56-t62));
t107 = t5.*(t20+t9.*(t57-t63));
t81 = t5.*t75;
t82 = t5.*t76;
t83 = t5.*t77;
t84 = t10.*t75;
t85 = t10.*t76;
t86 = t10.*t77;
t93 = t27+t87;
t94 = t28+t88;
t95 = t29+t89;
t96 = t31+t90;
t97 = t32+t91;
t98 = t33+t92;
t108 = t81+t102;
t109 = t82+t103;
t110 = t83+t104;
t111 = t84+t105;
t112 = t85+t106;
t113 = t86+t107;
out1 = [p1cut1+R1cut1_3.*t58-t48.*t59-t45.*t71-t74.*t93-t60.*t108+t70.*t111+t39.*t73.*(t6.*t93-t11.*t108)+t39.*t72.*t111;p1cut2+R1cut2_3.*t58-t49.*t59-t46.*t71-t74.*t94-t60.*t109+t70.*t112+t39.*t73.*(t6.*t94-t11.*t109)+t39.*t72.*t112;p1cut3+R1cut3_3.*t58-t50.*t59-t47.*t71-t74.*t95-t60.*t110+t70.*t113+t39.*t73.*(t6.*t95-t11.*t110)+t39.*t72.*t113];
