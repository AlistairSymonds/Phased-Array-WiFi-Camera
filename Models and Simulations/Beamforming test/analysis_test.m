t = goodinductor.t;
sig1 = goodinductor.ch2;
sig2 = goodinductor.ch4;


%% spectrogram section
spec1 = spectrogram(sig1);

spec2 = spectrogram(sig2);

%% detect frequnecy error between the signals
ref_spec = spec1;

stft_freq_diff = finddelay(abs(ref_spec(:,3)'),abs(spec2(:,3))')

f_offset = 21e6;
shifted_ref = cos(2*pi*f_offset*t);
sig1_shifted = sig1 .* shifted_ref;


%% doa

ula = phased.ULA('NumElements',2,'ElementSpacing',0.125);
fc = 250e6;

spatialspectrum = phased.BeamscanEstimator('SensorArray',ula,...
            'OperatingFrequency',fc,'ScanAngles',-90:90);

spatialspectrum.DOAOutputPort = true;
spatialspectrum.NumSignals = 1;

[~,ang] = spatialspectrum([sig1_shifted sig2]);
plotSpectrum(spatialspectrum);

%% beamforming
angles = [-90:5:90];
angles = [angles; zeros(size(angles))];
psbeamformer = phased.PhaseShiftBeamformer('SensorArray',ula,...
    'OperatingFrequency',fc,'Direction',angles,...
    'WeightsOutputPort', true);

[yCbf, w] = psbeamformer([sig1_shifted sig2]);
figure;
plot(t,real(yCbf(:, 10)));
figure;
plot(t,real(yCbf(:, 19)));

%% plots
plot(t, sig1);
hold on
plot(t, sig2);
figure;
spectrogram(sig1,'yaxis', 1000, 50, 1000, 1e9)

figure;
spectrogram(sig2,'yaxis', 1000, 50, 1000, 1e9);

figure;
spectrogram(sig1_shifted,'yaxis', 1000, 50, 1000, 1e9);

figure;
spectrogram(real(yCbf(:, 10)),'yaxis', 1000, 50, 1000, 1e9);

figure;
spectrogram(real(yCbf(:, 19)),'yaxis', 1000, 50, 1000, 1e9);
