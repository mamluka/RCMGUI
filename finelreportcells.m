%%
w=(0.08:0.1:3)*1E12;
specimen = Specimen();
R = 20E-9;
    dD = UnitConverter.FromDensityGramCmtoKgMeter(specimen.DensityDelta);
    D= UnitConverter.FromDensityGramCmtoKgMeter(specimen.Density);
    Vp = specimen.ParticipatesDensity;
    v = specimen.PolarizationSoundVelocity;
      
    sigmaS = 2*pi*R.^2;
    sigmaL = pi.*R.^2.*(4/9).*(dD/D)^2.*(w.*R./v).^4;
    
    sigmaT = (sigmaS.^-1+sigmaL.^-1).^-1;
    
    h=semilogy(w,sigmaL,w,repmat(sigmaS,[1 30]),w,sigmaT);
    legend('Long wavelength','Short wavelength','Total')
    xlabel('\omega Hz')
    ylabel('\sigma m^-2')
    title('Cross sections')
    forprint(h)
    