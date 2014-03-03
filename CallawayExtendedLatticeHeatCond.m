function KappaLattice = CallawayExtendedLatticeHeatCond(specimen,taomanager,T)
    k = 1.3807e-023;
    h = 6.6261e-034/(2*pi);
    
    v=specimen.PolarizationSoundVelocity;
    theta = specimen.DebyeTemp;
    
    x1=h/(k*T);
    
    eq1 = k/(2*pi^2*v);
    eq2 = 1/x1^3;
    
    
    tao = @(x) taomanager.GetTotalTaoForCallway(specimen,x,T);
    taoN = @(x) taomanager.GetToaNForExtendedCallway(specimen,x,T);
    
    inteq1 = @(x) x.^4.*exp(x)./(exp(x)-1).^2;
    
    integralfo = @(x) tao(x).*inteq1(x);
    
    % second order for taoN
    print('extended');
    integralso1 = @(x) (tao(x)./taoN(x)).*inteq1(x);
    integralso2 = @(x) (1./(taoN(x))).*(1-(tao(x)./taoN(x))).*inteq1(x);

    KappaLattice = eq1*eq2*(quad(integralfo,0.0001,theta/T) + (quad(integralso1,0.0001,theta/T))^2/quad(integralso2,0.0001,theta/T));
    
end