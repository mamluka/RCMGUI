classdef RealPrecipitatesDistribution < handle
    properties
        Name = PrecipitatesDistributionName.Real;
        DisplayName = 'Real distribution'
        
        Parameter1=0;
        HasParameter1 = 1;
        Parameter1DisplayName='Most frequent radius';
        Parameter1Units = 'nm'
        
        Parameter2=0;
        HasParameter2 = 1;
        Parameter2DisplayName='Radius delta length';
        Parameter2Units = 'nm'
    end
    
    methods
        function func = DistributionFunction(obj)
            func = @(R) EmulatePrecipitateDistribution(R,obj.Parameter1*1E-9,2E-9,obj.Parameter2*1E-9);
        end
    end
end