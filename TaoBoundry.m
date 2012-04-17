function reciprocalt = TaoBoundry(specimen)
    v=specimen.PolarizationSoundVelocity;
    t = specimen.EnergyTransmissivity;
    L = specimen.GrainSize *1E-9;
    
    reciprocalt = v*(1-t)/(L*(3/4)*t);
    
end