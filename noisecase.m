function [t,X] = noisecase(tmax,c,plt)
% Burst Supp Model when with white noise 
% [t,X] = noisecase(tmax,c,plt)
% t: time 
% X: Dynamics of the system, containing 1 dummy col
% tmax: simulation duration
% c: c_2 inhibitory coupling 
% plt: option of plotting results

if nargin < 3
  plt = 0;
end

%tmax = 2000; 
n = tmax*5; 
dt = tmax / n;
t= zeros(1,n); 
 %  Define the increments dW.
 

yx = @(a,x) a*x;
consump= @(x) x.^2./(0.01+x.^2);
%c =12+ min(24,max(0,(n-100)/30));%-max(0,(t-2000)/20);

  dwe = sqrt ( dt ) * randn ( 1, n )*0.01;
  dwi = sqrt ( dt )* randn ( 1, n )* 0.01;
  Yzero = 0.05*ones(1,7); 
  X = ones(7,n)*0.5;
  Y = Yzero;

  for j = 1 : n
    f1= -Y(1)+(1-Y(1))*(-1/(1+exp(5.2))+1/(1+exp(-1.3*(17.5*Y(1)-c*Y(2)+1.5*Y(3)-4+yx(2.0,Y(5))))));
    f2= -Y(2)+(1-Y(1))*(1/(1+exp(-2*(16.5*Y(1)-3*Y(2)+1.5*Y(3)-3.7)))-1/(1+exp(7.4)));
    % dummy col without extensions
    f3= -Y(3)+(1-Y(3))*(1/(1+exp(-1.3*(17.5*Y(3)-c*Y(4)+1.5*Y(1)-4)))-1/(1+exp(5.2)));
    f4= -Y(4)+(1-Y(3))*(1/(1+exp(-2*(16.5*Y(3)-3*Y(4)+1.5*Y(1)-3.7)))-1/(1+exp(7.4)));
    f5= 0.001*(1/(1+exp(-75*(Y(6)-20)))-Y(5));
    f6 = -consump(Y(1))+0.5*Y(7);
    f7= 0.08e-3*(1/(1+exp(-4.5*(Y(1)-.27)))-Y(7));
    %Y(1) = Y(1) + dt * f1; % + dw(j));
    %Y(2) = Y(2) + dt * f2; 
    %Y(3) = Y(3) + dt * f3;
    %Y(4) = Y(4) + dt * f4;
    %Y(5) = Y(5) + dt * f5;
    Y = Y+ dt*[f1,f2,f3,f4,f5,f6,f7]+[dwe(j),dwi(j),0,0,0,0,0];
    X(:,j) = Y';
    t(j) = j*dt;
  end
  
  if plt,
      figure;
      subplot(2,1,1),plot(t, X(1,:));
      subplot(2,1,2),plot(t, X(5,:));
  end