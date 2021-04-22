% JEREMY CHOY (145923)

clc, close all, clear all 

S0=input('<strong>Initial Salt Amount [kg]\n</strong> S0 = ');
Sl=S0/2;
r=3;
t=0:0.1:180;
S=Sl+(S0-Sl).*exp(-r.*t/100);

% Instantaneous Salt Amount
hold on;
plot(t,S);

% Lines & Limits
yline(S0, 'b--','Initial Salt Amount');
yline(Sl, 'r--','Limiting Salt Amount');
ylim([0 S0+1]);  

% Labels
title('Tank Flow');
xlabel('Time (s)');
ylabel('Concentration of Salt (kg)');
legend('Instantaneous Salt Amount');
