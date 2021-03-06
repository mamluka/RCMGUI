classdef WizardUtils < handle
    methods(Static)
        function text = ReadText(handles,control)
            textControl=handles.(control);
            text=get(textControl,'String');
        end
        function real = ReadNumber(handles,control)
            textControl=handles.(control);
            real=str2double(get(textControl,'String'));
        end
        function prop = ReadProperty(handles,control,propName)
            controlHandle=handles.(control);
            prop=get(controlHandle,propName);
        end
        function SetProperty(handles,control,propName,propValue)
            controlHandle=handles.(control);
            set(controlHandle,propName,propValue);
        end
        function checked = IsChecked(handles,control)
            controlHandle=handles.(control);
            checked=get(controlHandle,'value');
        end
        function result = ToModelType(optionValue)
            if optionValue == 0
                result = ModelType.CallwayModel;
            elseif optionValue == 2
                result = ModelType.ExtendedCallwayModel;
            else
                result = ModelType.OurModel;
            end
        end
        function result = ToAxisType(cmbValue)
            switch cmbValue
                case 1
                    result = AxisType.None;
                case 2
                    result = AxisType.Temperature;
                case 3
                    result = AxisType.VolumeFractionWithContantRadius;
                case 4
                    result = AxisType.VolumeFractionWithConstantDensity;
                case 5
                    result = AxisType.PrecipitatesRadius;
                case 6
                    result = AxisType.DistributionParameter1;
                case 7
                    result = AxisType.DistributionParameter2;
                case 8
                   result = AxisType.PrecipitateNumberDensity;
                case 9
                    result = AxisType.GrainSize;
            end
        end
        function vector = ToVector(startNum,endNum,stepNum)
            vector = linspace(startNum,endNum,stepNum);
        end
        
    end
end