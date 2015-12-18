%% Calculates stdev for pitch production exp for healthy and patients
% -------------------------------------------------------------------------
% ZKA Jan 2015

% Loads goodpitchdata which contains the good data from before, both as a whole trial, a window and the stdev of the window (400 - 1000 frame as default).
% converts each trial into cents by normalising it to the mean of that
% trial
% plots each trial

clear all
close all
set_params;
fs_spec=345;

bigdown_gs=[0 0 0]+0.2;
down_gs=[0 0 0]+0.4;
bigup_gs=[0 0 0]+0.8;
up_gs=[0 0 0]+0.6;
flat_gs=[0 0 0]+0.5;

cerebellar_data_rootdir = '/Users/zagnew/Cereb_data/data_final_run/';
load /Users/zagnew/Dropbox/cerebellum_expr_devel/Zed/meanpitches/subj_MP_allsubs

cd(cerebellar_data_rootdir)

npatients = 0;
npatients = npatients + 1; %400 and 1000 are ok
patient_info{npatients}.exprdir = 'SUB01/expr20140321T103415_SUBJ01_measurepitch/speak/'; % % %This suxxxbject is a good one for a figure:
% % %plot(frame_taxis_prod, goodpitchdata_cents(1).window{15})

npatients = npatients + 1; % needs manual
patient_info{npatients}.exprdir = 'SUB02/expr20140321T121956_Sub2_measurepitch/speak/';
meanpitchtag(npatients)=2;

npatients = npatients + 1; % needs manual
patient_info{npatients}.exprdir = 'SUB03/expr20140321T142416_Subj3-measurepitch/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir ='SUB04/expr20140321T170947_Subj4_measurepitch/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB05/expr20140321T183529_Subj5_measurepitch/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB06/expr20140322T104901_SUB06_measurepitch/speak/';
%BAD SUBJECT

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB07/expr20140322T115150_Sub7_measurepitch/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB08/expr20140322T134549_Sub08_measurepitch/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB09/expr20140322T154047_SUB09_measure_pitch/speak/';
meanpitchtag(npatients)=9;

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB10/expr20140322T162455_SUB10_measurepitch/speak/';
meanpitchtag(npatients)=10;

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB11/expr20140322T183812_Subj11_measurepitch/speak/';
meanpitchtag(npatients)=11;
% v wobbly

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB12/expr20140323T104953_Sub12_measurepitch/speak/';
meanpitchtag(npatients)=12;

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB13/expr20140323T132703_Sub13_measurepitch/speak/';
meanpitchtag(npatients)=13;

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB14/expr20140323T150747_subj14/speak/';
meanpitchtag(npatients)=14;

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB15/expr20140323T162223_SUB15_measurepitch/speak/';
meanpitchtag(npatients)=15;

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'SUB16/expr20140323T180417_sub16_measurepitch/speak/';
meanpitchtag(npatients)=16;
%missing data
% npatients = npatients + 1;
% patient_info{npatients}.exprdir = 'HC01/expr20140506T121323_ZKA/speak/';

meanpitchtag(npatients)=17;
npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC02/expr20140617T123801_HC02_pitchprodn/speak/';
meanpitchtag(npatients)=17;
npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC03/expr20140617T133413_HC03_measurepitch/speak/';
meanpitchtag(npatients)=18;
npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC04/expr20140617T161417_measurepitch/speak/'; %400 to 1000 ok
meanpitchtag(npatients)=19;

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC05/expr20140618T150410_HC05_measurepitch/speak/'; %400 to 1000 ok

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC06/expr20140618T160728_HC06_measurepitch/speak/';
meanpitchtag(npatients)=20;

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC07/expr20140725T101015_W4Z_subj25/speak/';
meanpitchtag(npatients)=19;

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC08/expr20140814T154458_W4Z_subj3/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC09/expr20140921T133544_annette/speak/';

%BAD TRACKING
npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC10/expr20140921T152451_JL/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC11/expr20140923t151309_sn/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC12/expr20150511T110701_20150511_JR/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC13/expr20150511T114119_20150511_HC/speak/';

npatients = npatients + 1;
patient_info{npatients}.exprdir = 'HC14/expr20150511T122025_20150511_SB_measurepitch/speak/';

patients=[1:16];
HCs=[17:npatients];
figure
% Subject Loop
for subj=1:npatients
    cd(cerebellar_data_rootdir);
    load (sprintf('%sgoodpitchdata.mat',patient_info{subj}.exprdir));
    
    % convert to cents
    goodpitchdata_cents=goodpitchdata;
    
    % nans for bad trials
    for d=1:15
        if isnan(goodpitchdata(1).window{d})
            goodpitchdata(1).window{d}=NaN(1,871);
        end
    end
    
    for d=1:15
        for iframe=1:length(goodpitchdata(1).window{1})
            if isnan(goodpitchdata(1).window{d}(iframe))==1;
                goodpitchdata_cents(1).window{d}(iframe)=NaN; %(1, length(goodpitchdata(1).window{1}))
            else
                goodpitchdata_cents(1).window{d}(iframe)=1200*log2(goodpitchdata(1).window{d}(iframe)/nanmean(goodpitchdata(1).window{d}));
            end
        end
    end
    
    %% calc mean pitch in cents for each sub
    for d=1:15
        temp_a1(d,:)=goodpitchdata_cents(1).window{d};
    end
    goodpitchdata_cents(1).meanpitch=nanmean(temp_a1);
    goodpitchdata_cents_alldata(subj)=goodpitchdata_cents;
    
    %% 1. calculate mean spectrum
    for d=1:15
        nfreqs=length(goodpitchdata_cents(1).window{d})/2+1;

        temp1(d,:)=my_spectrum(goodpitchdata_cents(1).window{d},fs_spec);
    end
    GP_DATA.meanspec(subj,:)=nanmean(temp1);
  
    %% 2. calculate stdev for each trial
    for a=1:15
        DATA(subj).trialstdev(a)=nanstd(goodpitchdata_cents_alldata(subj).window{a});
    end
    
    % replace infs with nans
    for a=1:15
        if sum(isinf(goodpitchdata_cents_alldata(subj).window{a}))>0
            goodpitchdata_cents_alldata(subj).window{a}=NaN(1,length(goodpitchdata_cents_alldata(subj).window{a}));
        else
            goodpitchdata_cents_alldata(subj).window{a}=goodpitchdata_cents_alldata(subj).window{a}
        end
    end
    
    GP_DATA.wt_stddev(subj)=nanmean(DATA(subj).trialstdev(a)); %write HC data and subject data in one structure

    %% 2. calc high freq variability for each trial (GP_DATA_highfreq) and 3. within trial stdev (GP_DATA)
    for a=1:15        
        if sum(isnan(goodpitchdata_cents_alldata(subj).window{a}))>0;
            DATA_1(subj).lowpassdata(a,:)=NaN(1,length(goodpitchdata_cents_alldata(subj).window{a}));
            DATA_1(subj).highfreqvar(a,:)=NaN(1,length(goodpitchdata_cents_alldata(subj).window{a}));
        else
            DATA_1(subj).lowpassdata(a,:)=lowpass(goodpitchdata_cents_alldata(subj).window{a}, 0.01, 3);
            DATA_1(subj).highfreqvar(a,:)=calc_distance(DATA_1(subj).lowpassdata(a,:),goodpitchdata_cents_alldata(subj).window{a});
        end
    end
    GP_DATA.highfreq(subj)=nanmean(DATA_1(subj).highfreqvar(a)); %write HC data and subject data in one structure
    
    
    % plot this
%     
%     for a=1:15        
%         subplot(15, 1, a)
%         plot(DATA_1(subj).lowpassdata(a,:))
%         hold
%         plot(goodpitchdata_cents_alldata(subj).window{a}, 'm')
%         goodplot
%     end
%     pause
%     clf
end


% group WT stddev

DATA(subj).trialstdev



%% split patients and HCs
patients=DATA(1:16);
hcs=DATA(17:end);

mean_pat_meanspec=nanmean(GP_DATA.meanspec(1:16,:));
mean_HC_meanspec=nanmean(GP_DATA.meanspec(17:end,:));
mean_pat_wtstdev=nanmean(GP_DATA.wt_stddev(1:16));
mean_HC_wtstdev=nanmean(GP_DATA.wt_stddev(17:end));
wtstdev_ttest=ttest2(GP_DATA.wt_stddev(1:16), GP_DATA.wt_stddev(17:end))

mean_pat_highfreq=nanmean(GP_DATA.highfreq(1:16));
mean_HC_highfreq=nanmean(GP_DATA.highfreq(17:end));
wtstdev_ttest=ttest2(GP_DATA.highfreq(1:16), GP_DATA.highfreq(17:end))

patients_mean_meanspec=GP_DATA.meanspec(1:16,:);
hc_mean_meanspec=GP_DATA.meanspec(17:end,:);

patient_overall_mean_meanspec=nanmean(patients_mean_meanspec);
HC_overall_mean_meanspec=nanmean(hc_mean_meanspec);
stats_meanspec=ttest2(patient_overall_mean_meanspec,HC_overall_mean_meanspec);

patient_mean_highfreqvar=GP_DATA.highfreq(1:16);
HC_mean_highfreqvar=GP_DATA.highfreq(17:end);
patient_overall_mean_highfreqvar=nanmean(patient_mean_highfreqvar);
HC_overall_mean_highfreqvar=nanmean(HC_mean_highfreqvar);
stats.highfrecar=ttest2(patient_mean_highfreqvar,HC_mean_highfreqvar);

%% group mean pitch prod cents
for moo=1:16
test_pats(moo,:)=goodpitchdata_cents_alldata(moo).meanpitch;
end
temp_a=goodpitchdata_cents_alldata(17:end);
for moop=1:10
test_HCs(moop,:)=temp_a(moop).meanpitch;
end

patgroupmean=nanmean(test_pats);
patgroupstdev=nanstd(test_pats);
pat_sem=patgroupstdev/sqrt(16*15);

HCgroupmean=nanmean(test_HCs);
HCgroupstdev=nanstd(test_HCs);
HC_sem=HCgroupstdev/sqrt(10*15);

upperlimit_pats=patgroupmean+pat_sem;
lowerlimit_pats=patgroupmean-pat_sem;
upperlimit_HCs=HCgroupmean+HC_sem;
lowerlimit_HCs=HCgroupmean-HC_sem;


%% do a ttest at each frame between patients and HC spectrum
        for d=1:15
            for iframe=1:length(HC_overall_mean_meanspec)
            %ttest_spec(:, iframe)=ttest2(meanspec(1:16,iframe), meanspec(17:end,iframe));            
            ttest_spec(:, iframe)=ttest2(patients_mean_meanspec(:,iframe), hc_mean_meanspec(:,iframe));
            %patient_overall_mean_meanspec, HC_overall_mean_meanspec
            end
        end
    
% plot the spectal data
fig3=figure;
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'All production trials - spectrum', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

subplot(2,2,1)
for moo=1:16
    plot(pat_meanspec(moo,:), 'k')
    hold on
    plot(mean_pat_meanspec, 'y','LineWidth',1.3);
    plot(ttest_spec(1:7),'r','LineWidth',1.3);
    axis([0 100 0 50])
    ylabel('Pitch (cents)')
    xlabel('Hz')    
    title(sprintf('Patients'));
        
end


subplot(2,2,2)
for moo=1:16
    plot(pat_meanspec(moo,:), 'k')
    hold on
    plot(mean_pat_meanspec, 'y','LineWidth',1.3);
    plot(ttest_spec(1:7),'r','LineWidth',1.3);
    axis([0 15 0 50])
    ylabel('Pitch (cents)')
    xlabel('Hz')    
    title(sprintf('Patients'));
        
end

subplot(2,2,3)
for moo=1:10
    plot(HC_meanspec(moo,:), 'k')
    hold on
    plot(mean_HC_meanspec, 'm','LineWidth',1.3);
    axis([0 100 0 50])
    ylabel('Pitch (cents)')
    xlabel('Hz')
    title(sprintf('HCs'));
end

subplot(2,2,4)
for moo=1:10
    plot(HC_meanspec(moo,:), 'k')
    hold on
    plot(mean_HC_meanspec, 'm','LineWidth',1.3);
    axis([0 15 0 50])
    ylabel('Pitch (cents)')
    xlabel('Hz')    
    title(sprintf('HCs'));
    
end

STATS.meanspec_pats_HC=ttest2(mean_pat_meanspec, mean_HC_meanspec);

%% 2. WT stdev
pat_WTstd=GP_DATA.wt_stddev(1:16);
HC_WTstd=GP_DATA.wt_stddev(17:end);

figure
whitebg('white')
y_pitch2=[ nanmean(HC_WTstd);nanmean(pat_WTstd)];
errY2 = [nanstd(HC_WTstd)/sqrt(length(HC_WTstd));nanstd(pat_WTstd)/sqrt(length(pat_WTstd))];

h = barwitherr(errY2, y_pitch2);% Plot with errorbars

set(gca,'XTickLabel',{'Controls','Patients'})
ylabel('within trial pitch variability')
set(h(1),'FaceColor',down_gs,'EdgeColor', 'k' ,'LineWidth',1.5);
%set(h(2),'FaceColor',bigup_gs,'EdgeColor', 'k' ,'LineWidth',1.5);
goodplot

print(gcf, '-dpdf', '-r150', '/Users/zagnew/Cereb_data/data_final_run/figures/WT variability pitch production.pdf');

ttest2(HC_WTstd, pat_WTstd)


%% make final figures
% plot(test, 'Color',[name of coulour], 'LineWidth',1.3);
 
fig1a_final=figure;
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'All production trials - patients', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

for moo=1:16
    for d= 1:15
        subplot(4,4,moo)
        cabbage=plot(goodpitchdata_cents_alldata(moo).meanpitch);
        ylabel('Pitch (cents)')
        %title(sprintf('each patient'));
        hold all
        axis([0 900 -300 300])
        %goodplot
        set(cabbage,'LineWidth',2);
        set(cabbage,'Color',[up_gs]);        
    end
end

fig1b_final=figure;
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'All production trials - HCs', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

for moo=1:10
    for d= 1:15
        subplot(4,4,moo)
        cabbage2=plot(goodpitchdata_cents_alldata(moo+16).meanpitch, 'Color',[down_gs], 'LineWidth',1.3);
        ylabel('Pitch (cents)')        
        %title(sprintf('each patient'));
        hold all
        axis([0 900 -300 300])        
        set(cabbage2,'LineWidth',2);
        set(cabbage2,'Color',[up_gs]);
    end
end


significant_frames=find(ttest_spec);

fig1c_final=figure;
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'All production trials - HCs', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

subplot(2,1,1)
axis([0 150 0 30])
patch([1 7 7  1], [1 1 25 25], [0.8500    0.8500    0.8500],'EdgeColor', 'none');
patch([24.5 25.5 25.5 24.5], [1 1 25 25], [0.8500    0.8500    0.8500],'EdgeColor', 'none');
patch([27.5 28.5 28.5 27.5], [1 1 25 25], [0.8500    0.8500    0.8500],'EdgeColor', 'none');
patch([31.5 32.5 32.5 31.5], [1 1 25 25], [0.8500    0.8500    0.8500],'EdgeColor', 'none');
patch([39.5 40.5 40.5 39.5], [1 1 25 25], [0.8500    0.8500    0.8500],'EdgeColor', 'none');


hold on
plot(mean_pat_meanspec, 'Color',[down_gs],'LineWidth',1.5);
plot(mean_HC_meanspec, 'Color',[up_gs],'LineWidth',1.5);
grid on
ylabel('Pitch (cents)')
xlabel('Hz')    
    
set(get(gca,'xlabel'),'FontSize', 14, 'FontWeight', 'Bold');
set(get(gca,'ylabel'),'FontSize', 14, 'FontWeight', 'Bold');
set(get(gca,'title'),'FontSize', 14, 'FontWeight', 'Bold');
box off; %axis square;
set(gca,'LineWidth',1.2);
set(gca,'FontSize',12);
set(gca,'FontWeight','Bold');
set(gcf,'color','w');
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize', [8 8]);
set(gcf,'PaperPosition',[0.5 0.5 7 7]);
set(gcf,'PaperPositionMode','Manual');


subplot(2,1,2)
axis([0 10 0  30])
patch([0.1 7 7 0.1], [1 1 25 25], [0.8500    0.8500    0.8500],'EdgeColor', 'none');
hold on
plot(mean_pat_meanspec, 'Color',[down_gs],'LineWidth',1.5);
plot(mean_HC_meanspec, 'Color',[up_gs],'LineWidth',1.5);
grid on
%plot(ttest_spec(1:7), 'Color',[sig_colour],'LineWidth',1.3);
%axis off 
ylabel('Pitch (cents)')
xlabel('Hz') 

set(get(gca,'xlabel'),'FontSize', 14, 'FontWeight', 'Bold');
set(get(gca,'ylabel'),'FontSize', 14, 'FontWeight', 'Bold');
set(get(gca,'title'),'FontSize', 14, 'FontWeight', 'Bold');
box off; %axis square;
set(gca,'LineWidth',1.2);
set(gca,'FontSize',12);
set(gca,'FontWeight','Bold');
set(gcf,'color','w');
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize', [8 8]);
set(gcf,'PaperPosition',[0.5 0.5 7 7]);
set(gcf,'PaperPositionMode','Manual');

print(gcf, '-dpdf', '-r150', '/Users/zagnew/Cereb_data/data_final_run/figures/PitchProduction_groupspecanal.pdf');
