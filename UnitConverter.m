classdef UnitConverter
    %UNITCONVERTER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods(Static)
        function kg = FromMolecularWeightToKg(fromValue) 
            %m=Units();
            kg = fromValue*1.6605e-027;
        end
        function m3 = FromAngstromVolumeToMeterVolume(fromValue) 
            m3 = fromValue/1E30;
            
        end
        
         function roo = FromDensityGramCmtoKgMeter(fromValue) 
            roo = fromValue*1000;       
         end
         
         function m2 = FromCmSquareToMeterSquare(fromValue) 
            m2 = fromValue*100^2;       
         end
         
         function m3 = FromCmCubeToMeterCube(fromValue) 
            m3 = fromValue*100^3;       
         end
         function x = FromWToX(w,T)
            %m=Units();
            h=6.6261e-034;
            k=1.3807e-023;
            x=w/(k*T/h);
            
         end
         function w = FromXToW(x,T)
            %m=Units();
            h=6.6261e-034;
            k=1.3807e-023;
            w=x*(k*T/h);
            
         end
         % ro in gr*cm-3
         function VCv = FromMolarHeatCondToVolumatricHeatCond(MCv,ro,Mw)
             VCv = MCv*(ro/0.01^3)/Mw;
         end
    end
    
end

