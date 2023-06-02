clc
clear

% load the model coefficients
load('coefficient.mat');
% The size of the coefficients 497*641(grid point). The two dimensions represent 
%longitude and latitude, respectively.

% load the look-up table
load('look-up.mat');
% grid_lat, grid_lon, and grid_hell stores the latitude, longitude and height
% of each grid point, respectively.

% This is an example
% Get the decrease factor for a given grid point (lat = 45;  lon = 100);
row     =  269;
column  =  141;

doy     =  244;

% Use the VCM model
t=doy/365.25;
A(1,1)=1;
A(1,2)=sin(2*pi*t);  A(1,3)=cos(2*pi*t);
A(1,4)=sin(4*pi*t);  A(1,5)=cos(4*pi*t);

df      =  A*coefficient{row,column};

% Output the results
disp(['decrease factor is ',num2str(df)]);




