%% generate signal

test_data = uint8('Hello World ')';

modulator = comm.QPSKModulator(BitInput=true);

signal = step(modulator, test_data);
plot(signal)
