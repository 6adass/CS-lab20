%effects of p pi pid pd controller
  num=[1];
  den=[1 15 25];
  g=tf(num,den)
  t=feedback(g,1)
  figure(1)
  step(t,4);
  title('Step Response of feedback system');
  kp=300;
  kd=10;
  ki=70;
  %introduction of P controller
  cont=pid(kp)
  g1=g*cont
  t1=feedback(g1,1)
  figure(2)
  step(t1,4);
  title('step response of system with p controller');
%introduction of P D controller
  cont=pid(kp,kd)
  g2=g*cont
  t2=feedback(g2,1)
  figure(3)
  step(t2,4);
  title('step response pd controller');
 %introduction of P I controller
  cont=pid(kp,0,ki)
  g3=g*cont
  t3=feedback(g3,1)
  figure(4)
  step(t3,4);
  title('step response of pi controller');
  %introduction of P I D controller
  cont=pid(kp,kd,ki)
  g4=g*cont
  t4=feedback(g4,1)
  figure(5)
  step(t4,4);
  figure(6) 
  ('step response of pid controller');
 %comparison graph
   step(t,4);
   hold on
   step(t1,4);
   hold on
   step(t2,4);
   hold on
   step(t3,4);
   hold on
   step(t4,4);
   legend('feedback system','p controller','pd controller','pi controller','pid controller');
   grid;  
   ('comparision graph');