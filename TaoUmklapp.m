function reciprocalt = TaoUmklapp(specimen,w,T)
    %m=Units();
    h=1.0546e-034;
    
    gamma = specimen.Gruneisen;
    M=UnitConverter.FromMolecularWeightToKg(specimen.AverageAtomMass) %kg
    v=specimen.PolarizationSoundVelocity;
    theta = specimen.DebyeTemp;
   
    eq1 = h*gamma^2/(M*v^2*theta);
    eq2 = w.^2*T*exp(-theta/(3*T));
    
    reciprocalt=eq1*eq2
    
    
end