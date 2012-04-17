function p = PlanckDist(w,T)
%PLANCKDIST Summary of this function goes here
%   Detailed explanation goes here
%m=Units;
h = 1.0546e-034;
k = 1.3807e-023;
p=(exp(h*w/(k*T))-1).^-1;
end

