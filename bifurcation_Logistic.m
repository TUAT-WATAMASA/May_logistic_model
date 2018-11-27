function bifurcation
clear all;close all;

a = 0;
x(1) = 0.02;
figure;
for i =1:400
    
    for j = 1:1000
        x(j+1) = a*x(j)*(1-x(j));        %logistic map  a=1:4
        %x(j+1) =a*x(j)*(1+x(j))^(-6); %Hassell model a=0:60
        %x(j+1) =a*x(j)*exp(-4*x(j));  %Ricker model  a=0:30
        
    end
        
        for k = 1:100
            z(k) = x(1000+1-k);
        end
    hold on
    plot(a,z);
    a = a +0.01;
end
xlabel('a');
ylabel('x');
end
    