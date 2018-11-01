
physical_constants;
f_max = 3e9;
%%
CSX = InitCSX();
CSX = ImportHyperLynx(CSX, 'jlcpcb_patch_test_1.HYP');

%%
[port1_material, port1_start, port1_stop] = GetHyperLynxPort(CSX, 'SMA.1');
[gnd1_material, gnd1_start, gnd1_stop]    = GetHyperLynxPort(CSX, 'SMA.3');

[CSX, port{1}] = AddLumpedPort(CSX, 5 ,1 , 50, port1_start, port1_stop, [0 1 0], true);

unit = GetUnits(CSX);
substrate_epr = GetEpsilon(CSX);
resolution = c0 / f_max / sqrt(substrate_epr) / unit / 25;
AirBox = c0 / f_max / unit / 25;

%%
z_top = port1_start(3);
z_bottom = gnd1_start(3);
z_middle = (z_top+z_bottom)/2;
 
mesh.x = [];
mesh.y = [];
mesh.z = [ z_middle ];

mesh = DetectEdges(CSX, mesh);
mesh.x = [min(mesh.x)-AirBox max(mesh.x)+AirBox mesh.x];
mesh.y = [min(mesh.y)-AirBox max(mesh.y)+AirBox mesh.y];
mesh.z = [min(mesh.z)-AirBox max(mesh.z)+2*AirBox mesh.z];
mesh = SmoothMesh(mesh, resolution*4);

%%
FDTD = InitFDTD();
FDTD = SetGaussExcite(FDTD, f_max/2, f_max/2);
BC   = {'PML_8' 'PML_8' 'PML_8' 'PML_8' 'PML_8' 'PML_8'};
FDTD = SetBoundaryCond(FDTD, BC );

mesh = AddPML(mesh, 8);
CSX = DefineRectGrid(CSX, unit, mesh);

%%
Sim_Path = 'tmp';
Sim_CSX = 'msl.xml';
 
[status, message, messageid] = rmdir(Sim_Path, 's'); % clear previous directory
[status, message, messageid] = mkdir(Sim_Path ); % create empty simulation fol
WriteOpenEMS([Sim_Path '/' Sim_CSX], FDTD, CSX);
%%
CSXGeomPlot([Sim_Path '/' Sim_CSX]);

%% Simulation zone
RunOpenEMS(Sim_Path, Sim_CSX);

%%

close all
f = linspace( 1e6, f_max, 1601 );
port = calcPort( port, Sim_Path, f, 'RefImpedance', 50);
s11 = port{1}.uf.ref./ port{1}.uf.inc;

semilogx(f/1e9,20*log10(abs(s11)),'k-','LineWidth',2);
hold on;
grid on;
legend('S_{11}');
ylabel('S-Parameter (dB)','FontSize',12);
xlabel('frequency (GHz) \rightarrow','FontSize',12);
ylim([-80 10]);
print('sparam.png', '-dpng');

%% NFFF contour plots %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%find resonance frequncy from s11
f_res_ind = find(s11==min(s11));
f_res = freq(f_res_ind);

% calculate the far field at phi=0 degrees and at phi=90 degrees
disp( 'calculating far field at phi=[0 90] deg...' );

nf2ff = CalcNF2FF(nf2ff, Sim_Path, f_res, [-180:2:180]*pi/180, [0 90]*pi/180);

% display power and directivity
disp( ['radiated power: Prad = ' num2str(nf2ff.Prad) ' Watt']);
disp( ['directivity: Dmax = ' num2str(nf2ff.Dmax) ' (' num2str(10*log10(nf2ff.Dmax)) ' dBi)'] );
disp( ['efficiency: nu_rad = ' num2str(100*nf2ff.Prad./port.P_inc(f_res_ind)) ' %']);

% normalized directivity as polar plot
figure
polarFF(nf2ff,'xaxis','theta','param',[1 2],'normalize',1)

% log-scale directivity plot
figure
plotFFdB(nf2ff,'xaxis','theta','param',[1 2])
% conventional plot approach
% plot( nf2ff.theta*180/pi, 20*log10(nf2ff.E_norm{1}/max(nf2ff.E_norm{1}(:)))+10*log10(nf2ff.Dmax));

drawnow


