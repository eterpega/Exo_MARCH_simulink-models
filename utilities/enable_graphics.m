function enable_graphics(enableGraphicsBoolean)

myDictionary = Simulink.data.dictionary.open('ModelDictionary.sldd');

dataOfDictionary = getSection(myDictionary,'Design Data');
enableGraphics = getEntry(dataOfDictionary,'enableGraphcs');
enableGraphicsValue = getValue(enableGraphics);
enableGraphicsValue.Value = enableGraphicsBoolean;
setValue(enableGraphics,enableGraphicsValue);

targetSettings = SimulinkRealTime.getTargetSettings;

if(enableGraphicsBoolean)
    targetSettings.TargetScope = 'Enabled';
else
    targetSettings.TargetScope = 'Disabled';
end



end