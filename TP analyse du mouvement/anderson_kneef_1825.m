function Cmax= anderson_kneef_1825(q,dq,bw,h)

C1=0.163;
C2=1.258;
C3=1.133;
C4=1.517;
C5=3.952;
C6=0.095;
B1=0;
k1=0;
B2=-6.25;
k2=-4.521;

Cmax=C1*cos(C2*(q-C3))*((2*C4*C5+dq*(C5-3*C4))/(2*C4*C5+dq*(2*C5-4*C4)));

if dq<0
Cmax=Cmax*(1-C6*dq);
end
Cmax=Cmax*bw*h*9.81;
end
