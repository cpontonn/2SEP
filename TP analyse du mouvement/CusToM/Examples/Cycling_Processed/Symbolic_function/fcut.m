function [Rcut,pcut] = fcut(in1)
%FCUT
%    [RCUT,PCUT] = FCUT(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    04-Apr-2022 16:52:20

q1 = in1(1,:);
q2 = in1(2,:);
q3 = in1(3,:);
q4 = in1(4,:);
q5 = in1(5,:);
q6 = in1(6,:);
q7 = in1(7,:);
q8 = in1(8,:);
q9 = in1(9,:);
q10 = in1(10,:);
q11 = in1(11,:);
q12 = in1(12,:);
q13 = in1(13,:);
q17 = in1(17,:);
q18 = in1(18,:);
q19 = in1(19,:);
q20 = in1(20,:);
q21 = in1(21,:);
q23 = in1(23,:);
q24 = in1(24,:);
q25 = in1(25,:);
q26 = in1(26,:);
q27 = in1(27,:);
q29 = in1(29,:);
q30 = in1(30,:);
q37 = in1(36,:);
q38 = in1(37,:);
q46 = in1(43,:);
q47 = in1(44,:);
q48 = in1(45,:);
q49 = in1(46,:);
q50 = in1(47,:);
t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = cos(q4);
t6 = cos(q5);
t7 = cos(q6);
t8 = cos(q7);
t9 = cos(q8);
t10 = cos(q9);
t11 = cos(q10);
t12 = cos(q11);
t13 = cos(q12);
t14 = cos(q13);
t15 = cos(q17);
t16 = cos(q18);
t17 = cos(q19);
t18 = cos(q20);
t19 = cos(q21);
t20 = cos(q23);
t21 = cos(q24);
t22 = cos(q25);
t23 = cos(q26);
t24 = cos(q27);
t25 = cos(q29);
t26 = cos(q30);
t27 = cos(q37);
t28 = cos(q38);
t29 = cos(q49);
t30 = cos(q50);
t31 = sin(q1);
t32 = sin(q2);
t33 = sin(q3);
t34 = sin(q4);
t35 = sin(q5);
t36 = sin(q6);
t37 = sin(q7);
t38 = sin(q8);
t39 = sin(q9);
t40 = sin(q10);
t41 = sin(q11);
t42 = sin(q12);
t43 = sin(q13);
t44 = sin(q17);
t45 = sin(q18);
t46 = sin(q19);
t47 = sin(q20);
t48 = sin(q21);
t49 = sin(q23);
t50 = sin(q24);
t51 = sin(q25);
t52 = sin(q26);
t53 = sin(q27);
t54 = sin(q29);
t55 = sin(q30);
t56 = sin(q37);
t57 = sin(q38);
t58 = sin(q49);
t59 = sin(q50);
t60 = t2.*t29;
t61 = t2.*t58;
t62 = t29.*t31;
t63 = t4.*t59;
t64 = t16.*t59;
t65 = t21.*t59;
t66 = t31.*t58;
t67 = t33.*t59;
t68 = t45.*t59;
t69 = t50.*t59;
t71 = t2.*t3.*t30;
t72 = t2.*t15.*t30;
t73 = t2.*t20.*t30;
t74 = t4.*t29.*t30;
t75 = t16.*t29.*t30;
t76 = t21.*t29.*t30;
t77 = t2.*t30.*t32;
t78 = t3.*t30.*t31;
t79 = t2.*t30.*t44;
t80 = t15.*t30.*t31;
t81 = t2.*t30.*t49;
t82 = t20.*t30.*t31;
t84 = t4.*t30.*t58;
t85 = t29.*t30.*t33;
t86 = t16.*t30.*t58;
t87 = t29.*t30.*t45;
t88 = t21.*t30.*t58;
t89 = t29.*t30.*t50;
t90 = t30.*t31.*t32;
t91 = t30.*t31.*t44;
t92 = t30.*t31.*t49;
t95 = t30.*t33.*t58;
t96 = t30.*t45.*t58;
t97 = t30.*t50.*t58;
t193 = t59.*8.40326935710492e-2;
t196 = t2.*t30.*8.40326935710492e-3;
t206 = t29.*t30.*8.40326935710492e-2;
t207 = t30.*t58.*8.40326935710492e-2;
t219 = t30.*t31.*4.726839013371518e-2;
t222 = t30.*t31.*5.252043348190575e-2;
t236 = t2.*t30.*5.252043348190572e-3;
t70 = t59.*t66;
t83 = t59.*t60;
t93 = t59.*t61;
t94 = t59.*t62;
t99 = -t74;
t100 = -t75;
t101 = -t76;
t103 = -t90;
t104 = -t91;
t105 = -t92;
t106 = -t95;
t107 = -t96;
t108 = -t97;
t111 = t77+t78;
t112 = t79+t80;
t113 = t81+t82;
t197 = t62.*8.40326935710492e-3;
t198 = t66.*8.40326935710492e-3;
t205 = t67.*1.391315678620561e-1;
t208 = -t196;
t217 = t60.*4.726839013371518e-2;
t218 = t61.*4.726839013371518e-2;
t220 = t60.*5.252043348190575e-2;
t221 = t61.*5.252043348190575e-2;
t231 = t85.*1.391315678620561e-1;
t232 = -t219;
t233 = t95.*1.391315678620561e-1;
t238 = t62.*5.252043348190572e-3;
t239 = t66.*5.252043348190572e-3;
t98 = -t70;
t102 = -t83;
t109 = t61+t94;
t110 = t62+t93;
t128 = t71+t103;
t129 = t72+t104;
t130 = t73+t105;
t131 = t4.*t111;
t132 = t16.*t112;
t133 = t21.*t113;
t134 = t33.*t111;
t135 = t45.*t112;
t136 = t50.*t113;
t209 = -t197;
t210 = -t198;
t223 = t83.*8.40326935710492e-3;
t224 = t93.*8.40326935710492e-3;
t234 = -t220;
t235 = -t221;
t240 = t70.*4.726839013371518e-2;
t241 = -t233;
t242 = t94.*5.252043348190575e-2;
t243 = t70.*5.252043348190575e-2;
t244 = t94.*4.726839013371518e-2;
t247 = t83.*5.252043348190572e-3;
t248 = t93.*5.252043348190572e-3;
t114 = t60+t98;
t115 = t66+t102;
t116 = t3.*t109;
t117 = t3.*t110;
t118 = t15.*t109;
t119 = t15.*t110;
t120 = t20.*t109;
t121 = t20.*t110;
t122 = t32.*t109;
t123 = t32.*t110;
t124 = t44.*t109;
t125 = t44.*t110;
t126 = t49.*t109;
t127 = t49.*t110;
t152 = -t131;
t153 = t5.*t128;
t154 = -t132;
t155 = t17.*t129;
t156 = -t133;
t157 = t22.*t130;
t158 = t34.*t128;
t165 = t63+t134;
t166 = t64+t135;
t167 = t65+t136;
t237 = -t224;
t245 = -t240;
t246 = -t242;
t249 = -t247;
t278 = t131.*1.391315678620561e-1;
t137 = t3.*t114;
t138 = t3.*t115;
t139 = t15.*t114;
t140 = t15.*t115;
t141 = t20.*t114;
t142 = t20.*t115;
t143 = t32.*t114;
t144 = t32.*t115;
t145 = -t123;
t146 = t44.*t114;
t147 = t44.*t115;
t148 = -t125;
t149 = t49.*t114;
t150 = t49.*t115;
t151 = -t127;
t162 = -t153;
t163 = -t155;
t164 = -t157;
t168 = t67+t152;
t169 = t68+t154;
t170 = t69+t156;
t171 = t5.*t165;
t172 = t34.*t165;
t173 = t46.*t166;
t174 = t51.*t167;
t297 = -t278;
t301 = t153.*1.837586745347911e-2;
t159 = -t144;
t160 = -t147;
t161 = -t150;
t175 = t6.*t168;
t176 = t18.*t169;
t177 = t23.*t170;
t178 = t35.*t168;
t179 = t47.*t169;
t180 = t52.*t170;
t181 = t117+t143;
t182 = t122+t138;
t183 = t119+t146;
t184 = t124+t140;
t185 = t121+t149;
t186 = t126+t142;
t188 = t137+t145;
t190 = t139+t148;
t192 = t141+t151;
t212 = -t33.*(t123-t137);
t214 = -t45.*(t125-t139);
t216 = -t50.*(t127-t141);
t226 = -t4.*(t123-t137);
t228 = -t16.*(t125-t139);
t230 = -t21.*(t127-t141);
t250 = t158+t171;
t257 = t162+t172;
t258 = t163+t173;
t259 = t164+t174;
t279 = -t6.*(t153-t172);
t281 = -t18.*(t155-t173);
t282 = -t23.*(t157-t174);
t283 = -t35.*(t153-t172);
t284 = -t47.*(t155-t173);
t285 = -t52.*(t157-t174);
t292 = -t6.*(t95+t4.*(t123-t137));
t294 = -t18.*(t96+t16.*(t125-t139));
t296 = -t23.*(t97+t21.*(t127-t141));
t298 = -t35.*(t95+t4.*(t123-t137));
t299 = -t47.*(t96+t16.*(t125-t139));
t300 = -t52.*(t97+t21.*(t127-t141));
t302 = t6.*(t153-t172);
t303 = t18.*(t155-t173);
t304 = t23.*(t157-t174);
t306 = t6.*(t95+t4.*(t123-t137));
t307 = t18.*(t96+t16.*(t125-t139));
t308 = t23.*(t97+t21.*(t127-t141));
t309 = -t301;
t310 = t172.*1.837586745347911e-2;
t314 = t4.*(t123-t137).*(-1.391315678620561e-1);
t187 = t116+t159;
t189 = t118+t160;
t191 = t120+t161;
t194 = t34.*t181;
t195 = t34.*t182;
t199 = t5.*t181;
t200 = t5.*t182;
t201 = t17.*t183;
t202 = t17.*t184;
t203 = t22.*t185;
t204 = t22.*t186;
t254 = t84+t212;
t255 = t86+t214;
t256 = t88+t216;
t263 = t106+t226;
t264 = t107+t228;
t265 = t108+t230;
t266 = t7.*t250;
t267 = t36.*t250;
t317 = t175+t283;
t318 = t176+t284;
t319 = t177+t285;
t321 = t178+t302;
t322 = t179+t303;
t323 = t180+t304;
t211 = t33.*t187;
t213 = t45.*t189;
t215 = t50.*t191;
t225 = t4.*t187;
t227 = t16.*t189;
t229 = t21.*t191;
t271 = t5.*t254;
t275 = t34.*t254;
t276 = t46.*t255;
t277 = t51.*t256;
t280 = -t266;
t311 = t199.*1.837586745347911e-2;
t312 = t200.*1.837586745347911e-2;
t320 = t267.*2.755883747737194e-1;
t324 = t7.*t317;
t325 = t36.*t317;
t328 = t8.*t321;
t329 = t37.*t321;
t251 = t85+t225;
t252 = t87+t227;
t253 = t89+t229;
t260 = t99+t211;
t261 = t100+t213;
t262 = t101+t215;
t286 = -t5.*(t74-t211);
t290 = -t34.*(t74-t211);
t291 = -t271;
t293 = -t46.*(t75-t213);
t295 = -t51.*(t76-t215);
t305 = t5.*(t74-t211);
t313 = t225.*1.391315678620561e-1;
t315 = -t311;
t316 = -t312;
t326 = t275.*1.837586745347911e-2;
t330 = t34.*(t74-t211).*(-1.837586745347911e-2);
t331 = t34.*(t74-t211).*1.837586745347911e-2;
t332 = t199+t275;
t333 = t201+t276;
t334 = t203+t277;
t356 = t324.*2.755883747737194e-1;
t357 = t328.*3.936976782481706e-2;
t358 = t329.*2.089626138394136e-2;
t361 = t267+t324;
t362 = t280+t325;
t367 = -t8.*(t266-t325);
t368 = -t37.*(t266-t325);
t371 = t8.*(t266-t325);
t395 = t37.*(t266-t325).*(-3.936976782481706e-2);
t268 = t6.*t251;
t269 = t18.*t252;
t270 = t23.*t253;
t272 = t35.*t251;
t273 = t47.*t252;
t274 = t52.*t253;
t327 = -t326;
t335 = t200+t290;
t336 = t202+t293;
t337 = t204+t295;
t338 = t194+t291;
t339 = t6.*t332;
t340 = t18.*t333;
t341 = t23.*t334;
t342 = t35.*t332;
t343 = t47.*t333;
t344 = t52.*t334;
t345 = t195+t305;
t363 = t10.*t361;
t364 = t13.*t361;
t365 = t39.*t361;
t366 = t42.*t361;
t396 = t371.*(-2.089626138394136e-2);
t405 = t328+t368;
t406 = t329+t371;
t287 = -t268;
t288 = -t269;
t289 = -t270;
t346 = t6.*t335;
t347 = t18.*t336;
t348 = t23.*t337;
t349 = t35.*t335;
t350 = t7.*t338;
t351 = t47.*t336;
t352 = t52.*t337;
t353 = t36.*t338;
t354 = t7.*t345;
t355 = t36.*t345;
t369 = -t365;
t370 = -t366;
t372 = t298+t339;
t373 = t299+t340;
t374 = t300+t341;
t378 = t306+t342;
t379 = t307+t343;
t380 = t308+t344;
t407 = t9.*t405;
t408 = t12.*t405;
t409 = t38.*t405;
t410 = t41.*t405;
t411 = t9.*t406;
t412 = t12.*t406;
t413 = t38.*t406;
t414 = t41.*t406;
t359 = t353.*2.755883747737194e-1;
t360 = t355.*2.755883747737194e-1;
t375 = t272+t346;
t376 = t273+t347;
t377 = t274+t348;
t381 = t287+t349;
t382 = t288+t351;
t383 = t289+t352;
t386 = t8.*t372;
t387 = t37.*t372;
t388 = -t7.*(t268-t349);
t389 = -t36.*(t268-t349);
t390 = t7.*t378;
t392 = t36.*t378;
t393 = t7.*(t268-t349);
t415 = -t413;
t416 = -t414;
t466 = t409+t411;
t467 = t410+t412;
t384 = t8.*t375;
t385 = t37.*t375;
t391 = -t386;
t394 = -t390;
t398 = t386.*3.936976782481706e-2;
t400 = t387.*2.089626138394136e-2;
t401 = t393.*(-2.755883747737194e-1);
t402 = t390.*2.755883747737194e-1;
t403 = t393.*2.755883747737194e-1;
t417 = t350+t392;
t418 = t354+t389;
t422 = t355+t393;
t468 = t407+t415;
t469 = t408+t416;
t470 = t10.*t466;
t471 = t13.*t467;
t472 = t39.*t466;
t473 = t42.*t467;
t397 = t384.*3.936976782481706e-2;
t399 = t385.*2.089626138394136e-2;
t404 = -t402;
t419 = t353+t394;
t420 = t8.*t417;
t421 = t37.*t417;
t427 = t8.*t418;
t428 = t37.*t418;
t429 = t10.*t422;
t430 = t13.*t422;
t432 = t39.*t422;
t433 = t42.*t422;
t474 = t11.*t468;
t475 = t14.*t469;
t476 = t40.*t468;
t477 = t43.*t469;
t480 = t363+t472;
t481 = t364+t473;
t482 = t369+t470;
t483 = t370+t471;
t488 = -t25.*(t365-t470);
t489 = -t27.*(t366-t471);
t423 = t10.*t419;
t424 = t13.*t419;
t425 = t39.*t419;
t426 = t42.*t419;
t431 = -t428;
t434 = -t432;
t435 = -t433;
t436 = t421.*3.936976782481706e-2;
t437 = t420.*2.089626138394136e-2;
t439 = t427.*2.089626138394136e-2;
t440 = t428.*3.936976782481706e-2;
t442 = t387+t420;
t443 = t385+t427;
t444 = t391+t421;
t454 = -t9.*(t386-t421);
t455 = -t12.*(t386-t421);
t456 = -t38.*(t386-t421);
t457 = -t41.*(t386-t421);
t464 = t38.*(t386-t421);
t465 = t41.*(t386-t421);
t478 = -t476;
t479 = -t477;
t484 = t11.*t480;
[Rcut,pcut] = ft_1({q46,q47,q48,t10,t11,t12,t125,t127,t129,t13,t130,t132,t133,t139,t14,t141,t155,t157,t16,t166,t167,t17,t173,t174,t176,t177,t183,t184,t185,t186,t19,t193,t201,t202,t203,t204,t205,t206,t207,t208,t209,t21,t210,t213,t215,t217,t218,t22,t222,t223,t227,t229,t231,t232,t234,t235,t236,t237,t238,t239,t24,t241,t243,t244,t245,t246,t248,t249,t25,t255,t256,t26,t266,t269,t27,t270,t276,t277,t28,t29,t297,t30,t307,t308,t309,t310,t313,t314,t315,t316,t318,t319,t320,t321,t322,t323,t325,t327,t331,t343,t344,t351,t352,t356,t357,t358,t359,t360,t361,t365,t366,t371,t372,t373,t374,t375,t376,t377,t379,t38,t380,t384,t39,t395,t396,t397,t398,t399,t40,t400,t403,t404,t41,t417,t418,t419,t42,t422,t423,t424,t425,t426,t429,t43,t430,t431,t432,t433,t434,t435,t436,t437,t439,t440,t442,t443,t454,t455,t46,t464,t465,t47,t470,t471,t474,t475,t476,t477,t478,t479,t48,t480,t481,t484,t488,t489,t51,t52,t53,t54,t55,t56,t57,t58,t59,t68,t69,t75,t76,t87,t89,t9,t96,t97}, nargout);
end
function [Rcut,pcut] = ft_1(ct, nargout)
Rcut = 0;
pcut = 0;
q46 = ct{1};
q47 = ct{2};
q48 = ct{3};
t10 = ct{4};
t11 = ct{5};
t12 = ct{6};
t125 = ct{7};
t127 = ct{8};
t129 = ct{9};
t13 = ct{10};
t130 = ct{11};
t132 = ct{12};
t133 = ct{13};
t139 = ct{14};
t14 = ct{15};
t141 = ct{16};
t155 = ct{17};
t157 = ct{18};
t16 = ct{19};
t166 = ct{20};
t167 = ct{21};
t17 = ct{22};
t173 = ct{23};
t174 = ct{24};
t176 = ct{25};
t177 = ct{26};
t183 = ct{27};
t184 = ct{28};
t185 = ct{29};
t186 = ct{30};
t19 = ct{31};
t193 = ct{32};
t201 = ct{33};
t202 = ct{34};
t203 = ct{35};
t204 = ct{36};
t205 = ct{37};
t206 = ct{38};
t207 = ct{39};
t208 = ct{40};
t209 = ct{41};
t21 = ct{42};
t210 = ct{43};
t213 = ct{44};
t215 = ct{45};
t217 = ct{46};
t218 = ct{47};
t22 = ct{48};
t222 = ct{49};
t223 = ct{50};
t227 = ct{51};
t229 = ct{52};
t231 = ct{53};
t232 = ct{54};
t234 = ct{55};
t235 = ct{56};
t236 = ct{57};
t237 = ct{58};
t238 = ct{59};
t239 = ct{60};
t24 = ct{61};
t241 = ct{62};
t243 = ct{63};
t244 = ct{64};
t245 = ct{65};
t246 = ct{66};
t248 = ct{67};
t249 = ct{68};
t25 = ct{69};
t255 = ct{70};
t256 = ct{71};
t26 = ct{72};
t266 = ct{73};
t269 = ct{74};
t27 = ct{75};
t270 = ct{76};
t276 = ct{77};
t277 = ct{78};
t28 = ct{79};
t29 = ct{80};
t297 = ct{81};
t30 = ct{82};
t307 = ct{83};
t308 = ct{84};
t309 = ct{85};
t310 = ct{86};
t313 = ct{87};
t314 = ct{88};
t315 = ct{89};
t316 = ct{90};
t318 = ct{91};
t319 = ct{92};
t320 = ct{93};
t321 = ct{94};
t322 = ct{95};
t323 = ct{96};
t325 = ct{97};
t327 = ct{98};
t331 = ct{99};
t343 = ct{100};
t344 = ct{101};
t351 = ct{102};
t352 = ct{103};
t356 = ct{104};
t357 = ct{105};
t358 = ct{106};
t359 = ct{107};
t360 = ct{108};
t361 = ct{109};
t365 = ct{110};
t366 = ct{111};
t371 = ct{112};
t372 = ct{113};
t373 = ct{114};
t374 = ct{115};
t375 = ct{116};
t376 = ct{117};
t377 = ct{118};
t379 = ct{119};
t38 = ct{120};
t380 = ct{121};
t384 = ct{122};
t39 = ct{123};
t395 = ct{124};
t396 = ct{125};
t397 = ct{126};
t398 = ct{127};
t399 = ct{128};
t40 = ct{129};
t400 = ct{130};
t403 = ct{131};
t404 = ct{132};
t41 = ct{133};
t417 = ct{134};
t418 = ct{135};
t419 = ct{136};
t42 = ct{137};
t422 = ct{138};
t423 = ct{139};
t424 = ct{140};
t425 = ct{141};
t426 = ct{142};
t429 = ct{143};
t43 = ct{144};
t430 = ct{145};
t431 = ct{146};
t432 = ct{147};
t433 = ct{148};
t434 = ct{149};
t435 = ct{150};
t436 = ct{151};
t437 = ct{152};
t439 = ct{153};
t440 = ct{154};
t442 = ct{155};
t443 = ct{156};
t454 = ct{157};
t455 = ct{158};
t46 = ct{159};
t464 = ct{160};
t465 = ct{161};
t47 = ct{162};
t470 = ct{163};
t471 = ct{164};
t474 = ct{165};
t475 = ct{166};
t476 = ct{167};
t477 = ct{168};
t478 = ct{169};
t479 = ct{170};
t48 = ct{171};
t480 = ct{172};
t481 = ct{173};
t484 = ct{174};
t488 = ct{175};
t489 = ct{176};
t51 = ct{177};
t52 = ct{178};
t53 = ct{179};
t54 = ct{180};
t55 = ct{181};
t56 = ct{182};
t57 = ct{183};
t58 = ct{184};
t59 = ct{185};
t68 = ct{186};
t69 = ct{187};
t75 = ct{188};
t76 = ct{189};
t87 = ct{190};
t89 = ct{191};
t9 = ct{192};
t96 = ct{193};
t97 = ct{194};
t485 = t14.*t481;
t486 = t40.*t480;
t487 = t43.*t481;
t438 = -t436;
t441 = -t440;
t445 = t9.*t442;
t446 = t12.*t442;
t447 = t38.*t442;
t448 = t41.*t442;
t449 = t384+t431;
t450 = t9.*t443;
t451 = t12.*t443;
t452 = t38.*t443;
t453 = t41.*t443;
t540 = t474+t486;
t541 = t475+t487;
t542 = t478+t484;
t543 = t479+t485;
t458 = t9.*t449;
t459 = t12.*t449;
t460 = t38.*t449;
t461 = -t452;
t462 = t41.*t449;
t463 = -t453;
t490 = t447+t454;
t491 = t448+t455;
t492 = t445+t464;
t493 = t446+t465;
t544 = t54.*t540;
t545 = t56.*t541;
t494 = t11.*t490;
t495 = t14.*t491;
t496 = t40.*t490;
t497 = t43.*t491;
t498 = t450+t460;
t499 = t451+t462;
t500 = t10.*t492;
t502 = t13.*t493;
t504 = t39.*t492;
t505 = t42.*t493;
t506 = t458+t461;
t507 = t459+t463;
t514 = -t11.*(t452-t458);
t515 = -t14.*(t453-t459);
t516 = -t40.*(t452-t458);
t517 = -t43.*(t453-t459);
t518 = t40.*(t452-t458);
t519 = t43.*(t453-t459);
t546 = t488+t544;
t547 = t489+t545;
t501 = -t494;
t503 = -t495;
t508 = -t500;
t509 = -t502;
t510 = t10.*t498;
t511 = t13.*t499;
t512 = t39.*t498;
t513 = t42.*t499;
t520 = t423+t504;
t521 = t424+t505;
t522 = t425+t508;
t523 = t426+t509;
t524 = t11.*t520;
t525 = t14.*t521;
t526 = t40.*t520;
t527 = t43.*t521;
t528 = t429+t512;
t529 = t430+t513;
t532 = t434+t510;
t533 = t435+t511;
t538 = -t25.*(t432-t510);
t539 = -t27.*(t433-t511);
t530 = t25.*t522;
t531 = t27.*t523;
t534 = t11.*t528;
t535 = t14.*t529;
t536 = t40.*t528;
t537 = t43.*t529;
t548 = t496+t524;
t549 = t497+t525;
t550 = t501+t526;
t551 = t503+t527;
t552 = -t54.*(t494-t526);
t553 = -t56.*(t495-t527);
t554 = t54.*(t494-t526);
t555 = t56.*(t495-t527);
t556 = t514+t536;
t557 = t515+t537;
t558 = t518+t534;
t559 = t519+t535;
t562 = t530+t554;
t563 = t531+t555;
t560 = t54.*t556;
t561 = t56.*t557;
t564 = t538+t560;
t565 = t539+t561;
Rcut = reshape([t30,t58.*t59,-t29.*t59,0.0,t29,t58,t59,-t30.*t58,t29.*t30,t24.*t323+t53.*t319,t24.*t374-t53.*t380,t24.*t377+t53.*(t270-t352),t24.*t319-t53.*t323,-t24.*t380-t53.*t374,-t53.*t377+t24.*(t270-t352),t51.*t130+t22.*t167,t51.*t185-t22.*t256,t51.*t186+t22.*(t76-t215),t19.*t322+t48.*t318,t19.*t373-t48.*t379,t19.*t376+t48.*(t269-t351),t19.*t318-t48.*t322,-t19.*t379-t48.*t373,-t48.*t376+t19.*(t269-t351),t46.*t129+t17.*t166,t46.*t183-t17.*t255,t46.*t184+t17.*(t75-t213),t321,t372,t375,t361,t419,t422,t266-t325,t417,t418,t27.*t541+t56.*(t366-t471),t56.*t523-t27.*(t495-t527),t27.*t557+t56.*(t433-t511),t57.*t547-t28.*(t477-t485),t28.*t549-t57.*t563,t28.*t559+t57.*t565,t28.*t547+t57.*(t477-t485),-t28.*t563-t57.*t549,t28.*t565-t57.*t559,t25.*t540+t54.*(t365-t470),t54.*t522-t25.*(t494-t526),t25.*t556+t54.*(t432-t510),t55.*t546-t26.*(t476-t484),t26.*t548-t55.*t562,t26.*t558+t55.*t564,t26.*t546+t55.*(t476-t484),-t26.*t562-t55.*t548,t26.*t564-t55.*t558],[3,3,6]);
if nargout > 1
    et1 = q46-t69.*4.749604753337022e-1+t133.*4.749604753337022e-1-t157.*2.609672941393968e-2+t174.*2.609672941393968e-2-t177.*4.499013274097309e-1-t193+t208+t222;
    et2 = t51.*t130.*(-1.043869176557587e-2)-t22.*t167.*1.043869176557587e-2+t52.*(t157-t174).*4.499013274097309e-1;
    et3 = q46-t68.*4.774549977508355e-1+t132.*4.774549977508355e-1-t155.*2.623379108521074e-2+t173.*2.623379108521074e-2-t176.*4.486543599193453e-1+t193+t208+t222;
    et4 = t46.*t129.*1.049351643408429e-2+t17.*t166.*1.049351643408429e-2+t47.*(t155-t173).*4.486543599193453e-1;
    et5 = q46+t205+t232+t236+t297+t309+t310+t320+t356+t357-t358+t366.*1.738326671640929e-1+t395+t396-t471.*1.738326671640929e-1-t475.*4.219631525818283e-2+t477.*1.423368529043966e-2;
    et6 = t485.*(-1.423368529043966e-2)-t487.*4.219631525818283e-2;
    et7 = q46+t205+t232+t236+t297+t309+t310+t320+t356+t357+t358-t365.*1.738326671638807e-1+t371.*2.089626138394136e-2+t395+t470.*1.738326671638807e-1-t474.*4.219631525813131e-2+t476.*1.423368529042228e-2;
    et8 = t484.*(-1.423368529042228e-2)-t486.*4.219631525813131e-2;
    et9 = q47+t97.*4.749604753337022e-1-t203.*2.609672941393968e-2+t207+t209+t234+t237+t243-t277.*2.609672941393968e-2+t308.*4.499013274097309e-1+t344.*4.499013274097309e-1;
    et10 = t51.*t185.*(-1.043869176557587e-2)+t22.*t256.*1.043869176557587e-2+t21.*(t127-t141).*4.749604753337022e-1;
    et11 = q47+t96.*4.774549977508355e-1-t201.*2.623379108521074e-2-t207+t209+t234+t237+t243-t276.*2.623379108521074e-2+t307.*4.486543599193453e-1+t343.*4.486543599193453e-1;
    et12 = t46.*t183.*1.049351643408429e-2-t17.*t255.*1.049351643408429e-2+t16.*(t125-t139).*4.774549977508355e-1;
    et13 = q47+t217+t238+t241+t245+t248+t314+t315+t327+t359+t398-t400+t404+t426.*1.738326671640929e-1-t437+t438+t495.*4.219631525818283e-2-t497.*1.423368529043966e-2-t502.*1.738326671640929e-1;
    et14 = t525.*(-1.423368529043966e-2)-t527.*4.219631525818283e-2;
    et15 = q47+t217+t238+t241+t245+t248+t314+t315+t327+t359+t398+t400+t404-t425.*1.738326671638807e-1+t437+t438+t494.*4.219631525813131e-2-t496.*1.423368529042228e-2+t500.*1.738326671638807e-1;
    et16 = t524.*(-1.423368529042228e-2)-t526.*4.219631525813131e-2;
    et17 = q48-t89.*4.749604753337022e-1-t204.*2.609672941393968e-2-t206+t210+t223-t229.*4.749604753337022e-1+t235+t246-t270.*4.499013274097309e-1+t352.*4.499013274097309e-1;
    et18 = t51.*t186.*(-1.043869176557587e-2)-t22.*(t76-t215).*1.043869176557587e-2+t51.*(t76-t215).*2.609672941393968e-2;
    et19 = q48-t87.*4.774549977508355e-1-t202.*2.623379108521074e-2+t206+t210+t223-t227.*4.774549977508355e-1+t235+t246-t269.*4.486543599193453e-1+t351.*4.486543599193453e-1;
    et20 = t46.*t184.*1.049351643408429e-2+t17.*(t75-t213).*1.049351643408429e-2+t46.*(t75-t213).*2.623379108521074e-2;
    et21 = q48+t218+t231+t239+t244+t249+t313+t316+t331+t360+t397-t399+t403+t433.*1.738326671640929e-1-t439+t441-t511.*1.738326671640929e-1-t519.*1.423368529043966e-2-t535.*1.423368529043966e-2;
    et22 = t537.*(-4.219631525818283e-2)+t14.*(t453-t459).*4.219631525818283e-2;
    et23 = q48+t218+t231+t239+t244+t249+t313+t316+t331+t360+t397+t399+t403-t432.*1.738326671638807e-1+t439+t441+t510.*1.738326671638807e-1-t518.*1.423368529042228e-2-t534.*1.423368529042228e-2;
    et24 = t536.*(-4.219631525813131e-2)+t11.*(t452-t458).*4.219631525813131e-2;
    pcut = reshape([q46,q47,q48,et1+et2,et9+et10,et17+et18,et3+et4,et11+et12,et19+et20,q46+t205+t232+t236+t297+t309+t310,q47+t217+t238+t241+t245+t248+t314+t315+t327,q48+t218+t231+t239+t244+t249+t313+t316+t331,et5+et6,et13+et14,et21+et22,et7+et8,et15+et16,et23+et24],[3,1,6]);
end
end
