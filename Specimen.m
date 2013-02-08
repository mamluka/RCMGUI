classdef Specimen < handle

    properties
        Gruneisen=1.96; %unitless
        AverageAtomMass=167; %gr/mol
        PolarizationSoundVelocity=1770; % m/s
        DebyeTemp = 136; %K
        EnergyTransmissivity = 0.629; % unitless
        GrainSize=120; %nm
        DislocationDensity = 2.5E12; % cm^-2
        VolumePerAtom = 33.69; %angstrom^3
        BurgersVector = 0.5*6.42 % angstrom
        PoissonRatio = 0.2183;
        LongSoundSpeed = 3590; %m/s
        TransSoundSpeed = 1435; %m/s
        ParticipatesRadius = 3;  %nm
        Density = 8.242% %gr/cm^3
        DensityDelta = 8.242-7.597 % gr/cm^3
        ParticipatesDensity = 1.3263E17 % m^-3
        MatrixThermalExpantion = 19.8E-6 %1/K
        ParticipatesThermalExpantion  = 8.5E-6 % 1/K
        MatrixMisfit = 0.02 % this is strain
        
        MatrixDOS=[];
        CvFunction;
        
        MolarWeight = 334 % gr/mol
    end
    
    methods
        function LoadMatrixDOSFromFile(obj,filename)
            dosData = importdata(filename);
            DOS=dosData.Sheet1;
            DOS(:,1) = DOS(:,1)*1E12;
            DOS(:,2) = (DOS(:,2))*1E-12;
            A=trapz(DOS(:,1),DOS(:,2));
            DOS(:,2) = DOS(:,2)./A;
            obj.MatrixDOS=DOS;
        end
        
        function AproximateCvFunction(obj,filename)
            cvData = importdata(filename);
            cv=cvData.Sheet1;
            curve = polyfit(cv(:,1),cv(:,2),10);
            obj.CvFunction = @(T) polyval(curve,T);
        end
        % R in nm
        function DensityByRadiiAndVolumeFraction(obj,R,Vf)
            obj.ParticipatesRadius = R;
            obj.ParticipatesDensity =  Vf/((4/3)*pi*(R*1E-9)^3);
        end
        
        function CalculateDensityForRDistribution(obj,tm,func,Vf) 
            R=0:tm.RadiusStep:tm.MaxRadiusForIntegration;
            R=R*1E-9;
            y=func(obj,R);
            V=trapz(R,(4/3)*pi*R.^3.*y);
            obj.ParticipatesDensity = Vf/V;
        end
    end
    
end

