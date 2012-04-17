%% callaway k(T) with precipitates
T1=50:50:1000;
c=Specimen();
c.DensityByRadiiAndVolumeFraction(3,0.015);
tm = TaoManager();
tm.UseTaoU(1);
tm.UseTaoP(1);
Kappa=zeros(1,length(T1));

CallawayKvsTWithP=zeros(length(T1),2);
CallawayKvsTWithP(:,1) = T1';

for i=1:length(T1)
    Kappa(i) = CallawayLatticeHeatCond(c,tm,T1(i));
    CallawayKvsTWithP(i,2) =Kappa(i);
end


%% callaway k(T) pure
clear c
T1=50:50:1000;
c=Speciman();
c.DensityByRadiiAndVolumeFraction(3,0.015);
tm = TaoManager();
tm.UseTaoU(1);
tm.UseTaoP(0);
Kappa=zeros(1,length(T1));

CallawayKvsT=zeros(length(T1),2);
CallawayKvsT(:,1) = T1';

for i=1:length(T1)
    Kappa(i) = CallawayLatticeHeatCond(c,tm,T1(i));
    CallawayKvsT(i,2) =Kappa(i);
end

%% callaway K(R,T)
R=3:3:200;
%R=5;
rCounter = 1;
T1=50:50:1000;
tm = TaoManager();
tm.UseTaoU(1);
tm.UseTaoP(1);

c=Speciman();
Kappa=zeros(1+length(R),length(T1));
CallawayKappaVsR=zeros(length(T1),2);
CallawayKappaVsR(:,1) = T1';

for currentR = R
    c.DensityByRadiiAndVolumeFraction(currentR,0.015);
    for i=1:length(T1)
        Kappa(i) = CallawayLatticeHeatCond(c,tm,T1(i));
        CallawayKappaVsR(i,rCounter+1) = Kappa(i);
    end
    rCounter = rCounter+1;
end
%% callaway K(Vf,T)
Vf=0.005:0.005:0.1;
vfCounter = 1;
T1=50:50:1000;
c=Speciman();
Kappa=zeros(length(T1),1);
CallawayKappaVsVf=zeros(length(T1),1+length(Vf));
CallawayKappaVsVf(:,1) = T1';

 R=5;
 
for currentVf = Vf
   
    c.DensityByRadiiAndVolumeFraction(R,currentVf);
    tm = TaoManager();
    tm.UseTaoU(1);
    tm.UseTaoP(1);
    
    
    for i=1:length(T1)
        Kappa(i) = CallawayLatticeHeatCond(c,tm,T1(i));
        CallawayKappaVsVf(i,vfCounter+1) =Kappa(i);
    end
    vfCounter = vfCounter+1;
end
%%
Vf=0.005:0.005:0.1;
vfCounter = 1;
T1=300;
R=[3 4 5 6 7 10 15 20 50 100];
c=Speciman();
Kappa=zeros(length(R),1);
ExcelData=zeros(length(R),1+length(Vf));
ExcelData(:,1) = R';
tm = TaoManager();
tm.UseTaoU(1);
tm.UseTaoP(1);
DensityData = zeros(length(R),1+length(Vf));
for currentVf = Vf
    
    
    rCounter = 1;
    for currentR = R
        c.DensityByRadiiAndVolumeFraction(currentR,currentVf);
        Kappa(rCounter) = CallawayLatticeHeatCond(c,tm,T1);
        ExcelData(rCounter,vfCounter+1) =Kappa(rCounter);
        DensityData(rCounter,vfCounter+1)=c.ParticipatesDensity;
        rCounter = rCounter +1;
    end
    vfCounter = vfCounter+1;
end