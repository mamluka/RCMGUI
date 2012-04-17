function y=EmulatePrecipitateDistribution(x,mode,forwardWidth,tail)
    yG =pdf('normal',x,mode,forwardWidth);
    yD = max(yG)*exp(-x./(tail/-log(0.05)));
    
    mask = x>(mode);
    y=yG;
    startI = find(mask,1,'first');
    y(mask)=yD(1:end-startI+1);

    A=trapz(x,y);
    y=y./A;
end