%% plots group data

%%plot all patients
fig1=figure;
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'All production trials - patients', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

for moo=1:16
    for d= 1:15
        subplot(4,4,moo)
        plot(goodpitchdata_cents_alldata(moo).window{d});
        plot(goodpitchdata_cents_alldata(moo).meanpitch, 'y','LineWidth',1.3);
        ylabel('Pitch (cents)')
        title(sprintf('each patient'));
        hold all
        axis([0 900 -300 300])
        goodplot
    end
end

print(gcf, '-dpdf', '-r150', '/Users/zagnew/Cereb_data/data_final_run/figures/GROUP_pitchproduction_allpatients.pdf');


%%plot all HCs
fig2=figure;
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'All production trials - HCs', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')

for moo=1:10
    subplot(3,4,moo)
    for d=1:15
        plot(goodpitchdata_cents_alldata(moo+16).window{d})
        hold all
    end
    plot(goodpitchdata_cents_alldata(moo+16).meanpitch, 'y','LineWidth',1.3);
    ylabel('Pitch (cents)')
    title(sprintf('each HC'));
    
    axis([0 900 -300 300])
end

print(gcf, '-dpdf', '-r150', '/Users/zagnew/Cereb_data/data_final_run/figures/GROUP_pitchproduction_allHCs.pdf');


%% mean data

fig4=figure;
subplot(2,1,1)
title('patients group mean pitch production')
plot(patgroupmean, 'm','LineWidth',1.2);
hold all
plot(upperlimit_pats, 'k','LineWidth',0.8);
plot(lowerlimit_pats, 'k','LineWidth',0.8);
axis([0 900 -80 20])

subplot(2,1,2)
title('HCs group mean pitch production')
plot(HCgroupmean, 'm','LineWidth',1.2);
hold all
plot(upperlimit_HCs, 'k','LineWidth',0.8);
plot(lowerlimit_HCs, 'k','LineWidth',0.8);
axis([0 900 -80 20])

