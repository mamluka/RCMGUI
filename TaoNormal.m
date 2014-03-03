function reciprocalt = TaoNormal(specimen,w,T)
    k = 1.3807e-023;
    gamma = specimen.Gruneisen;
    M=UnitConverter.FromMolecularWeightToKg(specimen.AverageAtomMass); %kg
    Vs=specimen.PolarizationSoundVelocity;
    Vat = specimen.VolumePerAtom*10^-30;
    hbar = 6.6261e-034/(2*pi);
    
    C = k^3*gamma^2*Vat/(M*hbar*Vs^5);
    reciprocalt = C.*w.^2.*T.^3
    
end