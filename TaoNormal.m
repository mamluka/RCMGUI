function reciprocalt = TaoNormal(specimen,w,T)
    %m=units();
    k = 1.3807e-023;
    h=1.0546e-034;
    
    %gamma = speciman.Gruneisen;
    %M= unitconverter.FromMolecularWeightToKg(speciman.AverageAtomMass); %kg
    %v=speciman.PolarizationSoundVelocity;
    %V0 = unitconverter.FromAngstromVolumeToMeterVolume(speciman.VolumePerAtom);
    
    %Bn1 = k^3*gamma^2*V0/(M*h^2*v^5);
    
    %Bn2 = k^4*gamma^2*V0/(M*h^3*v^5);
    
    taoU = taoumklapp(specimen,w,T);
    beta = 67;
    
    %reciprocalt = (Bn1*w.^2*T^3);
    reciprocalt = beta*taoU;
    
end