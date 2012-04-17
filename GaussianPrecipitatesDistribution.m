classdef GaussianPrecipitatesDistribution < handle
    properties
        Name = PrecipitatesDistributionName.Real;
        DisplayName = 'Gaussian distribution'
        
        Parameter1=0;
        HasParameter1 = 1;
        Parameter1DisplayName='Most frequent radius';
        Parameter1Units = 'nm'
        
        Parameter2=0;
        HasParameter2 = 1;
        Parameter2DisplayName='Distribution width';
        Parameter2Units = 'nm'
    end
    
    methods
        function func = DistributionFunction(obj)
            func = @(R) pdf('normal',R,obj.Parameter1,obj.Parameter2);
        end
    end
end