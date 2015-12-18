%% Wrapper script that runs the whole thing from start to finish

% ------
% ZKA 2015
% run this in this order!

clear all
close all

set(0,'DefaultFigureWindowStyle','docked');
cerebellar_data_rootdir = '/Users/zagnew/Cereb_data/data_final_run/';


clc

goodtrials_pitchprodn;

groupstats_pitchprodn;

plot_groupdata_pitchprodn;