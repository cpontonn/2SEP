function [R6cut,p6cut] = f6cut(in1,in2,in3)
%F6CUT
%    [R6CUT,P6CUT] = F6CUT(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    29-Apr-2021 11:11:56

R4cut1_1 = in3(28);
R4cut1_2 = in3(31);
R4cut1_3 = in3(34);
R4cut2_1 = in3(29);
R4cut2_2 = in3(32);
R4cut2_3 = in3(35);
R4cut3_1 = in3(30);
R4cut3_2 = in3(33);
R4cut3_3 = in3(36);
p4cut1 = in2(10);
p4cut2 = in2(11);
p4cut3 = in2(12);
q7 = in1(7,:);
q8 = in1(8,:);
q9 = in1(9,:);
q10 = in1(10,:);
q29 = in1(29,:);
q30 = in1(30,:);
t2 = cos(q7);
t3 = cos(q8);
t4 = cos(q9);
t5 = cos(q10);
t6 = cos(q29);
t7 = cos(q30);
t8 = sin(q7);
t9 = sin(q8);
t10 = sin(q9);
t11 = sin(q10);
t12 = sin(q29);
t13 = sin(q30);
t14 = R4cut1_1.*t2;
t15 = R4cut1_2.*t3;
t16 = R4cut1_3.*t2;
t17 = R4cut2_1.*t2;
t18 = R4cut2_2.*t3;
t19 = R4cut2_3.*t2;
t20 = R4cut3_1.*t2;
t21 = R4cut3_2.*t3;
t22 = R4cut3_3.*t2;
t23 = R4cut1_1.*t8;
t24 = R4cut1_2.*t9;
t25 = R4cut1_3.*t8;
t26 = R4cut2_1.*t8;
t27 = R4cut2_2.*t9;
t28 = R4cut2_3.*t8;
t29 = R4cut3_1.*t8;
t30 = R4cut3_2.*t9;
t31 = R4cut3_3.*t8;
t32 = -t25;
t33 = -t28;
t34 = -t31;
t35 = t16+t23;
t36 = t19+t26;
t37 = t22+t29;
t38 = t14+t32;
t39 = t17+t33;
t40 = t20+t34;
t41 = t4.*t35;
t42 = t4.*t36;
t43 = t4.*t37;
t44 = t10.*t35;
t45 = t10.*t36;
t46 = t10.*t37;
t47 = t3.*t38;
t48 = t3.*t39;
t49 = t3.*t40;
t50 = t9.*t38;
t51 = t9.*t39;
t52 = t9.*t40;
t53 = -t50;
t54 = -t51;
t55 = -t52;
t56 = t24+t47;
t57 = t27+t48;
t58 = t30+t49;
t59 = t15+t53;
t60 = t18+t54;
t61 = t21+t55;
t62 = t5.*t56;
t63 = t5.*t57;
t64 = t5.*t58;
t65 = t11.*t56;
t66 = t11.*t57;
t67 = t11.*t58;
t68 = t4.*t59;
t69 = -t62;
t70 = t4.*t60;
t71 = -t63;
t72 = t4.*t61;
t73 = -t64;
t74 = t10.*t59;
t75 = t10.*t60;
t76 = t10.*t61;
t77 = -t74;
t78 = -t75;
t79 = -t76;
t80 = t44+t68;
t81 = t45+t70;
t82 = t46+t72;
t83 = t41+t77;
t84 = t42+t78;
t85 = t43+t79;
t86 = t5.*t83;
t87 = t5.*t84;
t88 = t5.*t85;
t89 = t11.*t83;
t90 = t11.*t84;
t91 = t11.*t85;
t92 = t65+t86;
t93 = t66+t87;
t94 = t67+t88;
t95 = t69+t89;
t96 = t71+t90;
t97 = t73+t91;
t101 = -t12.*(t62-t89);
t102 = -t12.*(t63-t90);
t103 = -t12.*(t64-t91);
t104 = t12.*(t62-t89);
t105 = t12.*(t63-t90);
t106 = t12.*(t64-t91);
t98 = t6.*t92;
t99 = t6.*t93;
t100 = t6.*t94;
t107 = t98+t104;
t108 = t99+t105;
t109 = t100+t106;
R6cut = reshape([-t12.*t92+t6.*(t62-t89),-t12.*t93+t6.*(t63-t90),-t12.*t94+t6.*(t64-t91),t7.*t80+t13.*t107,t7.*t81+t13.*t108,t7.*t82+t13.*t109,-t13.*t80+t7.*t107,-t13.*t81+t7.*t108,-t13.*t82+t7.*t109],[3,3]);
if nargout > 1
    p6cut = [R4cut1_2.*2.624100862815549e-1+p4cut1+t14.*3.748715518307927e-2+t16.*1.989702852024977e-2+t23.*1.989702852024977e-2-t25.*3.748715518307927e-2-t44.*1.355304841212582e-2-t62.*4.017854068275598e-2+t65.*1.655202082672388e-1-t68.*1.355304841212582e-2+t86.*1.655202082672388e-1+t89.*4.017854068275598e-2;R4cut2_2.*2.624100862815549e-1+p4cut2+t17.*3.748715518307927e-2+t19.*1.989702852024977e-2+t26.*1.989702852024977e-2-t28.*3.748715518307927e-2-t45.*1.355304841212582e-2-t63.*4.017854068275598e-2+t66.*1.655202082672388e-1-t70.*1.355304841212582e-2+t87.*1.655202082672388e-1+t90.*4.017854068275598e-2;R4cut3_2.*2.624100862815549e-1+p4cut3+t20.*3.748715518307927e-2+t22.*1.989702852024977e-2+t29.*1.989702852024977e-2-t31.*3.748715518307927e-2-t46.*1.355304841212582e-2-t64.*4.017854068275598e-2+t67.*1.655202082672388e-1-t72.*1.355304841212582e-2+t88.*1.655202082672388e-1+t91.*4.017854068275598e-2];
end
