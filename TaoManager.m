classdef TaoManager < handle
    %TAOMANAGER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        useTaoU=0;
        useTaoN=0;
        useTaoB=0;
        useTaoD=0;
        useTaoP=0;
        useToaPNewWeights=0;
        MaxRadiusForIntegration=20; %in nm
        RadiusStep=1; %in nm
    end
    
    methods
        function UseTaoU(obj,use)
            obj.useTaoU = use;
        end
        function UseTaoN(obj,use)
            obj.useTaoN = use;
        end
        function UseTaoB(obj,use)
            obj.useTaoB = use;
        end
        function UseTaoD(obj,use)
            obj.useTaoD = use;
        end
        function UseTaoP(obj,use)
            obj.useTaoP = use;
        end
        function UseToaPNewWeights(obj,use)
            obj.useToaPNewWeights = use;
        end
        %in nm
        function SetIntegranRadiusVector(obj,max,step)
            obj.MaxRadiusForIntegration= max;
            obj.RadiusStep=step;
        end
        
        function totaltao = GetTotalTaoForCallway(obj,specimen,x,T)
            %m=Units();
            h=6.6261e-034;
            k=1.3807e-023;
            
            w=x*k*T/h;
            
            reptotalTao = 0;
            
            if (obj.useTaoU == 1 ) 
              reptotalTao = reptotalTao + TaoUmklapp(specimen,w,T);
            end
            

           if (obj.useTaoN == 1) 
                reptotalTao = reptotalTao+TaoNormal(specimen,w,T);
            end
            
            if (obj.useTaoB == 1) 
                reptotalTao = reptotalTao+TaoBoundry(specimen);
            end
            
            if (obj.useTaoD == 1) 
                reptotalTao = reptotalTao+TaoDislocation(specimen,w);
            end
            
            if (obj.useTaoP == 1) 
                reptotalTao = reptotalTao+TaoParticipates(specimen,w);
                TaoParticipates(specimen,w)
            end
            
            if (obj.useToaPNewWeights == 1) 
                reptotalTao = reptotalTao+TaoParticipatesOurInterpretation(specimen,w);
            end
            
            totaltao = reptotalTao.^-1;
        end
        
        function repTotalTao = GetTotalRepTaoForFP(obj,specimen,TaoPFunction,w,T)
            
           repTotalTao = 0;
          
            
           
            if (obj.useTaoU == 1 ) 
              repTotalTao = repTotalTao + TaoUmklapp(specimen,w,T);
            end

           if (obj.useTaoN == 1) 
                repTotalTao = repTotalTao+TaoNormal(specimen,w,T);
            end
            
            if (obj.useTaoB == 1) 
                repTotalTao = repTotalTao+TaoBoundry(specimen);
            end
            
            if (obj.useTaoD == 1) 
                repTotalTao = repTotalTao+TaoDislocation(specimen,w);
            end
            
            if (obj.useTaoP == 1) 
                
                R=0:obj.RadiusStep:obj.MaxRadiusForIntegration;
                R=R*1E-9;
                
                TaoPAsAFunctionOfR=TaoParticipatesWithFluentR(specimen,w,R).*TaoPFunction(R);

                repTaoP = trapz(R,TaoPAsAFunctionOfR);
                
                repTotalTao = repTotalTao+repTaoP;
            end
            
        
            
            
        end
        
        
        
        
    end
    
end

