function KappaLattice = CallawayLatticeHeatCond(specimen,taomanager,T)
    %m=Units();
    k = 1.3807e-023;
    h = 6.6261e-034/(2*pi);
    
    v=specimen.PolarizationSoundVelocity;
    theta = specimen.DebyeTemp;
    
    x1=h/(k*T);
    
    eq1 = k/(2*pi^2*v);
    eq2 = 1/x1^3;
    
    
    tao = @(x) taomanager.GetTotalTaoForCallway(specimen,x,T);
   
    inteq1 = @(x) x.^4.*exp(x)./(exp(x)-1).^2;
    
    integralfunction = @(x) tao(x).*inteq1(x);

    KappaLattice = eq1*eq2*quad(integralfunction,0.0001,theta/T);
    
end