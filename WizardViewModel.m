classdef WizardViewModel < handle
   properties
      ModelType=0
      UseUmklapp=0
      UseNormal=0
      UseGB=0
      UseDislocation=0
      UsePrecipitates=0
      UseStrain=0
      VdosFile=''
      cvFile=''
      
      Specimen
      AxisData=cell(3,1)
      Temperature
      Distribution
   end
end 