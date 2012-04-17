function repTaoInt = FPIntergralRelaxationTime(specimen,taoManager,TaoPFunction,T)

MatrixDOS = specimen.MatrixDOS;
wvector = MatrixDOS(:,1);
repTaoInt=zeros(length(wvector),1);

for i=1:length(wvector)
    repTaoInt(i) = taoManager.GetTotalRepTaoForFP(specimen,TaoPFunction,wvector(i),T);
end

integrand = MatrixDOS(:,2).*PlanckDist(wvector,T).*repTaoInt;

repTaoInt = trapz(wvector,integrand);

end

