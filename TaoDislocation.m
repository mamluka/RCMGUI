function reciprocalt = TaoDislocation(specimen,w)

    Nd = unitconverter.FromCmSquareToMeterSquare(specimen.DislocationDensity);
    V0 = unitconverter.FromAngstromVolumeToMeterVolume(specimen.VolumePerAtom);
    gamma = specimen.Gruneisen;
    Bd = specimen.BurgersVector*1E-10;
    nii = specimen.PoissonRatio;
    v = specimen.PolarizationSoundVelocity;
    VL =  specimen.LongSoundSpeed;
    VT = specimen.TransSoundSpeed;
    
    eq1 = Nd*V0^(4/3)*w.^3/v^2;
    eq2 = 0.06*Nd*gamma^2*Bd^2*w;
    eq3 = 0.5+1/24*((1-2*nii)/(1-nii))^2;
    eq4 = (1+sqrt(2)*(VL/VT)^2)^2;
    
    reciprocalt=eq1+eq2*(eq3+eq4);
    

end