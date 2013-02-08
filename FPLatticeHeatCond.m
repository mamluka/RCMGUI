function KappaLattice = FPLatticeHeatCond(specimen,taoManager,taoPFunction,T)

    v=specimen.PolarizationSoundVelocity;
    
    Cv = UnitConverter.FromMolarHeatCondToVolumatricHeatCond(specimen.CvFunction(T),specimen.Density,specimen.MolarWeight);
    
    
    
    repTaoInt = FPIntergralRelaxationTime(specimen,taoManager,taoPFunction,T);
    
    KappaLattice = (1/3)*Cv*v^2*repTaoInt^(-1);
    
end