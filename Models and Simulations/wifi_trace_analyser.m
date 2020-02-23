%% import data
trace = importfile('wifi_trace.CSV');

%% trim it
t = trace.TIME;
v = trace.CH1;
plot(t, v);