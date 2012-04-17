function taoRep = TaoParticipates(specimen,w)
    R = specimen.ParticipatesRadius*1E-9;
    dD = UnitConverter.FromDensityGramCmtoKgMeter(specimen.DensityDelta);
    D= UnitConverter.FromDensityGramCmtoKgMeter(specimen.Density);
    Vp = specimen.ParticipatesDensity;
    v = specimen.PolarizationSoundVelocity;
      
    sigmaS = 2*pi*R.^2;
    sigmaL = pi.*R.^2.*(4/9).*(dD/D)^2.*(w.*R./v).^4;
    
    taoRep = Vp.*v.*(sigmaS.^-1+sigmaL.^-1).^-1;
end