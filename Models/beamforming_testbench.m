% heavily based upon sample code found here:
% https://au.mathworks.com/help/phased/examples/conventional-and-adaptive-beamformers.html#d119e4336


t = 0:(1/200e6):0.00003;                % Time, sampling frequency is 1kHz
s = zeros(size(t));  
s = s(:);                       % Signal in column vector
s(201:300) = s(201:300) + 1;    % Define the pulse
plot(t,s);
title('Pulse');xlabel('Time (s)');ylabel('Amplitude (V)');

carrierFreq = 2.4e9;
wavelength = physconst('LightSpeed')/carrierFreq;

ula = phased.ULA('NumElements',3,'ElementSpacing',wavelength/2);
ula.Element.FrequencyRange = [2.2e9 2.6e9];

inputAngle = [45; 0];
x = collectPlaneWave(ula,s,inputAngle,carrierFreq);


% Create and reset a local random number generator so the result is the
% same every time.
rs = RandStream.create('mt19937ar','Seed',2008);

noisePwr = .5;   % noise power 
noise = sqrt(noisePwr/2)*(randn(rs,size(x))+1i*randn(rs,size(x)));
rxSignal = x + noise;

subplot(211); 
plot(t,abs(rxSignal(:,1)));axis tight;
title('Pulse at Antenna 1');xlabel('Time (s)');ylabel('Magnitude (V)');
subplot(212);
plot(t,abs(rxSignal(:,2)));axis tight;
title('Pulse at Antenna 2');xlabel('Time (s)');ylabel('Magnitude (V)');  


[yCbf, w] = triple_antenna_beamform(rxSignal);

%% Plot the output
clf;
plot(t,abs(yCbf)); axis tight;
for
title('Output of Phase Shift Beamformer');
xlabel('Time (s)');ylabel('Magnitude (V)');

%% Plot array response with weighting
pattern(ula,carrierFreq,-180:180,0,'Weights',w,'Type','powerdb',...
    'PropagationSpeed',physconst('LightSpeed'),'Normalize',false,...
    'CoordinateSystem','rectangular');
axis([-90 90 -60 0]);
