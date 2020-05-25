%Root locus & Step response of continuous system with lead/lag compensator
clear;
close all;
clc;
s=tf('s');
num=input('please enter the numerator of your plant transfer function ex. [1 2 3]');% here s is assigned as variable in transfer function
den=input('please enter the denominator of your plant transfer function ex. [1 2 5]');
OLTF=tf(num,den); % here open loop transfer function is written 
LeadCompensator=(s+1)/(s+3); % here lead compensator equation is written
LagCompensator=(s+5)/(s+2);  % here lag compensator equation is written
fprintf('enter 1 for root locus of CLTF \n');
fprintf('enter 2 for step response of CLTF \n');
fprintf('enter 3 for root locus of CLTF with lead compensator \n');
fprintf('enter 4 for step response of CLFT with lead compensator \n');
fprintf('enter 5 for root locus of CLTF with lag compensator \n');
fprintf('enter 6 for step response of CLTF with lag compensator \n');
fprintf('enter 7 for bode plot response of CLTF with Lead compensator');
fprintf('enter 8 for bode plot response of CLTF with Lag compensator');
    x=input('please enter your choice \n');
    if x==1
        rlocus(feedback(OLTF,1));
    elseif x==2
        step(feedback(OLTF,1));
    elseif x==3
        rlocus(feedback(OLTF*LeadCompensator,1));
    elseif x==4
        step(feedback(OLTF*LeadCompensator,1));
    elseif x==5
        rlocus(feedback(OLTF*LagCompensator,1));
    elseif x==6
        step(feedback(OLTF*LagCompensator,1));
    elseif x==7
        bodeplot(feedback(OLTF*LeadCompensator,1));
    elseif x==8
        bodeplot(feedback(OLTF*LagCompensator,1));
    end 
