% heavily based upon sample code found here:
% https://au.mathworks.com/help/phased/examples/conventional-and-adaptive-beamformers.html#d119e4336


%% import data
trace = importfile('wifi_trace.CSV');

%% trim it
t = trace.TIME;
%-0.5e-5 to 2e-5
startIdx = 497000;
endIdx = 503000;
v = trace.CH1;
v = normalize(v);

t = t(startIdx:endIdx);
v = v(startIdx:endIdx);
plot(t,v);

%% compute RF power
signalSquared = trace.CH1.*trace.CH1;
segLen = 1000;
segPwr = zeros(1,length(signalSquared)/segLen);
for k = 1:length(segPwr)-1
    segPwr(k) = trapz(signalSquared(k*(segLen):(k+1)*(segLen)-1));
end
plot(log10((segPwr.*segPwr)/50));
%%
plot(t,v);
title('Pulse');xlabel('Time (s)');ylabel('Amplitude (V)');

carrierFreq = 2.4e9;
wavelength = physconst('LightSpeed')/carrierFreq;

ula = phased.ULA('NumElements',3,'ElementSpacing',wavelength/2);
ula.Element.FrequencyRange = [2.2e9 2.6e9];

inputAngle = [45; 0];
x = collectPlaneWave(ula,v,inputAngle,carrierFreq);


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

figure;
[yCbf, w] = triple_antenna_beamform(rxSignal);

%% Plot the output
clf;
%plot(t,abs(yCbf)); axis tight;
N = 13;
figure;
nS   = sqrt(N);
nCol = ceil(nS);
nRow = nCol - (nCol * nCol - N > nCol - 1);
for k = 1:N
  subplot(nRow, nCol, k);
  plot(t, abs(yCbf(:,k)));
end

title('Output of Phase Shift Beamformer');
xlabel('Time (s)');ylabel('Magnitude (V)');

%% Plot array response with weighting
pattern(ula,carrierFreq,-180:180,0,'Weights',w,'Type','powerdb',...
    'PropagationSpeed',physconst('LightSpeed'),'Normalize',false,...
    'CoordinateSystem','rectangular');
axis([-90 90 -60 0]);
