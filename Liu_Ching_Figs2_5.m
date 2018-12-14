function Liu_Ching_Figs2_5
% ----------------------------------
% Burst suppression demo
% ----------------------------------


%% 


clear;


[t1 x1] = ode45(@BSnw,[0,5000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,12,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,1.25,0);
[t2 x2] = ode45(@BSnw,[0,6000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,12,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,1.25,0.65);
[t3 x3] = ode45(@BSnw,[0,6000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,12,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,1.25,1.40);
[t4 x4] = ode45(@BSnw,[0,5000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,12,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,0.90,0);
[t5 x5] = ode45(@BSnw,[0,5000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,12,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,0.90,0.65);
[t6 x6] = ode45(@BSnw,[0,6000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,12,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,0.90,1.40);
[t7 x7] = ode45(@BSnw,[0,5000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,12,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,0.55,0);
[t8 x8] = ode45(@BSnw,[0,6000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,12,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,0.55,0.65);
[t9 x9] = ode45(@BSnw,[0,4000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,12,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,0.55,1.40);



figure('units','normalized','outerposition',[0 0 1 1]);  
subplot(331),plot(t1,x1(:,1),'k');axis([2900 4900 0 0.5]);set(gca,'FontSize',12,'Xtick',[2900,3900,4900],'XTickLabel',{'0s','1s','2s'}); title('k_r=0,k_c =1.25');
subplot(332),plot(t2,x2(:,1),'k');axis([3000 5000 0 0.5]);set(gca,'FontSize',12,'Xtick',[3000,4000,5000],'XTickLabel',{'0s','1s','2s'}); title('k_r=0.65,k_c =1.25');
subplot(333),plot(t3,x3(:,1),'k');axis([4000 6000 0 0.5]);set(gca,'FontSize',12,'Xtick',[4000,5000,6000],'XTickLabel',{'0s','1s','2s'}); title('k_r=1.40,k_c =1.25');
subplot(334),plot(t4,x4(:,1),'k');axis([3000 5000 0 0.5]);set(gca,'FontSize',12,'Xtick',[3000,4000,5000],'XTickLabel',{'0s','1s','2s'}); title('k_r=0,k_c =0.90');
subplot(335),plot(t5,x5(:,1),'k');axis([2500 4500 0 0.5]);set(gca,'FontSize',12,'Xtick',[2500,3500,4500],'XTickLabel',{'0s','1s','2s'}); title('k_r=0.65,k_c =0.90');
subplot(336),plot(t6,x6(:,1),'k');axis([3500 5500 0 0.5]);set(gca,'FontSize',12,'Xtick',[3500,4500,5500],'XTickLabel',{'0s','1s','2s'}); title('k_r=1.40,k_c =0.90'); 
subplot(337),plot(t7,x7(:,1),'k');axis([3000 5000 0 0.5]);set(gca,'FontSize',12,'Xtick',[3000,4000,5000],'XTickLabel',{'0s','1s','2s'}); title('k_r=0,k_c =0.55');
subplot(338),plot(t8,x8(:,1),'k');axis([3800 5800 0 0.5]);set(gca,'FontSize',12,'Xtick',[3800,4800,5800],'XTickLabel',{'0s','1s','2s'}); title('k_r=0.65,k_c =0.55');
subplot(339),plot(t9,x9(:,1),'k');axis([2800 3800 0 0.5]);set(gca,'FontSize',12,'Xtick',[2800,3300,3800],'XTickLabel',{'0s','0.5s','1s'}); title('k_r=1.40,k_c =0.55');

figure('units','normalized','position',[.5 .3 .5 .5]);
subplot(4,1,1),plot(t8,x8(:,1),'k'); axis([3800 5800 0 0.5]);set(gca,'FontSize',12,'Xtick',[3800,4800,5800],'XTickLabel',{'0s','1s','2s'});ylabel('e');
subplot(4,1,2),plot(t8,x8(:,5),'k');axis([3800 5800 0 1]);set(gca,'FontSize',12,'Xtick',[3800,4800,5800],'XTickLabel',{'0s','1s','2s'}); ylabel('\phi');
subplot(4,1,3),plot(t8,x8(:,6),'k');axis([3800 5800 0 50]);set(gca,'FontSize',12,'Xtick',[3800,4800,5800],'XTickLabel',{'0s','1s','2s'});ylabel('M');
subplot(4,1,4),plot(t8,x8(:,7),'k');axis([3800 5800 0 0.6]);set(gca,'FontSize',12,'Xtick',[3800,4800,5800],'XTickLabel',{'0s','1s','2s'});ylabel('\beta');

display('Press any key to continue');
pause;



%% 
% 

clear;
[ta xa] = ode45(@BSnw,[0,9000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,6.3,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,0.70,0.90);
ea = xa(:,1);ia = xa(:,2);phia=xa(:,5);
ea = ea(round(length(ta)*0.993):end);ia = ia(round(length(ta)*0.993):end);phia = phia(round(length(ta)*0.993):end);


[tb xb] = ode45(@BSnw,[0,55000],[0.5 0.1 0.5 0.1 0.50 25 0.1 0.50 25 0.1],[],16,165,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,0.70,0.90);
eb = xb(:,1);ib = xb(:,2);phib=xb(:,5);

[tc xc] = ode45(@BSnw,[0,5000],[0.3 0.1 0.3 0.1 0.25 10 0.3 0.25 10 0.3],[],16,14,15,3,4,3.7,1.3,2,0.9,0,0.002,0.08e-3,25,0.25,75,15,0,0,0.70,0.90);
ec = xc(:,1);ic = xc(:,2);phic=xc(:,5);Mc=xc(:,6);
ec = ec(round(length(tc)*0.915):end);ic = ic(round(length(tc)*0.915):end);phic = phic(round(length(tc)*0.915):end);Mc = Mc(round(length(tc)*0.915):end);



figure('units','normalized','position',[.2 .3 .5 .5]);
subplot(221),plot3(phia,ea,ia,'k','LineWidth',2);axis([-0.01 0.01 0 0.5 0 0.5]);xlabel('\phi');ylabel('e');zlabel('i');grid on;
subplot(222),plot3(phib,eb,ib,'k','LineWidth',2);hold on; 
            plot3(phib(end),eb(end),ib(end),'s','MarkerSize',10,'MarkerEdgeColor','b','MarkerFaceColor',[0.5,0.5,0.5]);
            axis([0 1 0 0.5 0 0.5]);xlabel('\phi');ylabel('e');zlabel('i');grid on;
subplot(223),plot3(Mc,ec,ic,'k','LineWidth',2); axis([0 40 0 0.4 0 0.35]); xlabel('M');ylabel('e');zlabel('i');grid on;
subplot(224),plot3(Mc,phic,ec,'k','LineWidth',2);hold on;
            plot(Mc,phic,'LineWidth',3);axis([-12 40 0 0.3 0 0.35]);xlabel('M');ylabel('\phi');zlabel('e');grid on;

            
            
            
            
            

%%
function Fv=BSnw(t,Y,c1,c2,c3,c4,thetae,thetai,ae,ai,P,Q,mu,nu,eta,zeta,kappaf,kappab,kfastex,kfastin,kc,kr)
% Burst suppression
% kfastex,kfastin = 0 for isolated column analysis


% Isolated columns when coulpings are zero.
Fv(1,1)= -Y(1)+(1-Y(1))*(-1/(1+exp(ae*thetae))+1/(1+exp(-ae*(c1*Y(1)-c2*Y(2)+kfastex*Y(3)-thetae+P+Y(5))))); 
Fv(2,1)= -Y(2)+(1-Y(2))*(1/(1+exp(-ai*(c3*Y(1)-c4*Y(2)+kfastin*Y(3)-thetai+Q)))-1/(1+exp(ai*thetai))); 
Fv(3,1)= -Y(3)+(1-Y(3))*(1/(1+exp(-ae*(c1*Y(3)-c2*Y(2)+kfastex*Y(1)-thetae+P+Y(8))))-1/(1+exp(ae*thetae)));
Fv(4,1)= -Y(4)+(1-Y(4))*(1/(1+exp(-ai*(c3*Y(3)-c4*Y(2)+kfastin*Y(1)-thetai+Q)))-1/(1+exp(ai*thetai)));
Fv(5,1)= mu*(1/(1+exp(-kappaf*(Y(6)-eta)))-Y(5)); 
consump= @(x) x.^2./(0.01+x.^2); 
Fv(6,1)= -kc*consump(Y(1))+kr*Y(7); 
Fv(7,1)= nu*(1/(1+exp(-kappab*(Y(1)-zeta)))-Y(7)); 
Fv(8,1)= mu*(1/(1+exp(-kappaf*(Y(9)-eta)))-Y(8)); 
Fv(9,1)= -kc*consump(Y(3))+kr*Y(10); 
Fv(10,1) =nu*(1/(1+exp(-kappab*(Y(3)-zeta)))-Y(10));   
% 







