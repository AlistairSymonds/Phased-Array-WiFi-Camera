function [yCbf, w] = triple_antenna_beamform(signal)
carrierFreq = 2.4e9;
wavelength = physconst('LightSpeed')/carrierFreq;

ula = phased.ULA('NumElements',3,'ElementSpacing',wavelength/2);
ula.Element.FrequencyRange = [2.2e9 2.6e9];

angles = [-60:10:60];
angles(2,:) = 0;



psbeamformer = phased.PhaseShiftBeamformer('SensorArray',ula,...
    'OperatingFrequency',carrierFreq,'Direction',angles,...
    'WeightsOutputPort', true);

[yCbf,w] = psbeamformer(signal);

end

