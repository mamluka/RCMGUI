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
                    result = AxisType.PrecipitatesRadius;
                case 4
                    result = AxisType.DistributionParameter1;
                case 5
                    result = AxisType.DistributionParameter2;
            end
        end
        function vector = ToVector(startNum,endNum,stepNum)
            vector = startNum:stepNum:endNum;
        end
        
    end
end