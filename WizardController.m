function WizardController(viewModel)
c=viewModel.Specimen;
if viewModel.ModelType == ModelType.OurModel
    c.LoadMatrixDOSFromFile(viewModel.VdosFile);
    c.AproximateCvFunction(viewModel.cvFile);
end

tm=TaoManager();

if viewModel.UseUmklapp == 1
    tm.UseTaoU(1);
end

if viewModel.UseGB == 1
    tm.UseTaoB(1);
end

if viewModel.UseDislocation == 1
    tm.UseTaoD(1);
end

if viewModel.UsePrecipitates == 1
    tm.UseTaoP(1);
end


vector1 = viewModel.AxisData{1}.Vector;
vector2 = viewModel.AxisData{2}.Vector;

vector1Type = viewModel.AxisData{1}.AxisType;
vector2Type = viewModel.AxisData{2}.AxisType;

vector1Length = length(vector1);
vector2Length = length(vector2);

T=viewModel.Temperature;

dist = viewModel.Distribution;

Kappa=zeros(vector1Length,vector2Length);

for i=1:vector1Length
    
    actionType = SelectAxisAction(vector1Type);
    switch actionType
        case ActionType.Temperature
            T=vector1(i);
        case ActionType.Distribution
            IncimentDistributionParamter(dist,vector1(i),vector1Type);
        case ActionType.Specimen
            IncrementAxisParameter(c,vector1(i),vector1Type);
        case ActionType.CalculatedValue
            IncrementCalculatedAxisParameter(c,vector1(i),vector1Type);
    end
    
    for j=1:vector2Length
        actionType = SelectAxisAction(vector2Type);
        switch actionType
            case ActionType.Temperature
                T=vector2(j);
            case ActionType.Distribution
                IncimentDistributionParamter(dist,vector2(j),vector2Type);
            case ActionType.Specimen
                IncrementAxisParameter(c,vector2(j),vector2Type);
            case ActionType.CalculatedValue
                IncrementCalculatedAxisParameter(c,vector1(i),vector1Type);
        end
        
        if viewModel.UsePrecipitates == 1 && viewModel.ModelType == ModelType.OurModel
            taoPFunction = dist.DistributionFunction();
        else
            taoPFunction=0;
        end
        
        if viewModel.ModelType == ModelType.OurModel
            Kappa(i,j) = FPLatticeHeatCond(c,tm,taoPFunction,T);
        else
            Kappa(i,j) = CallawayLatticeHeatCond(c,tm,T);
        end
    end
end

dt = DisplayData();
dt.Kappa = Kappa;
dt.Axis1 = vector1;
dt.Axis2 = vector2;
dt.Labels{1}=GetLabel(vector1Type);
dt.Labels{2}=GetLabel(vector2Type);
results(dt);

function IncrementAxisParameter(c,value,type)
switch type
    case AxisType.PrecipitatesRadius
        c.ParticipatesRadius = value;
end

function IncrementCalculatedAxisParameter(c,value,type)
switch type
    case AxisType.VolumeFractionWithContantRadius
        c.ParticipatesDensity = value/((4/3)*pi*(c.ParticipatesRadius*1E-9)^3);
    case AxisType.VolumeFractionWithConstantDensity
        c.ParticipatesRadius = 1E9*(value/((4/3)*pi*c.ParticipatesDensity))^(1/3);
end

function IncimentDistributionParamter(dist,value,type)

if type == AxisType.DistributionParameter1
    dist.Parameter1 = value;
end
if type == AxisType.DistributionParameter2
    dist.Parameter2 = value;
end


function actionType = SelectAxisAction(type)
switch type
    case AxisType.Temperature
        actionType = ActionType.Temperature;
    case AxisType.DistributionParameter1
        actionType = ActionType.Distribution;
    case AxisType.DistributionParameter2
        actionType = ActionType.Distribution;
    case AxisType.VolumeFractionWithContantRadius
        actionType = ActionType.CalculatedValue;
    case AxisType.VolumeFractionWithConstantDensity
        actionType = ActionType.CalculatedValue;
    case AxisType.None
        actionType = ActionType.None;
    otherwise
        actionType = ActionType.Specimen;
end
function returlabel = GetLabel(vectorType)
switch vectorType
    case AxisType.Temperature
        returlabel='Temperature (K)';
    case AxisType.DistributionParameter1
        returlabel='Distribution Parameter #1';
    case AxisType.DistributionParameter2
        returlabel='Distribution Parameter #2';
    case AxisType.PrecipitatesRadius
        returlabel='Precipitates Radius (nm)';
    case AxisType.VolumeFractionWithConstantDensity
        returlabel='Volume fraction';
    case AxisType.VolumeFractionWithContantRadius
        returlabel='Volume fraction';
    otherwise
        returlabel='None';
end

