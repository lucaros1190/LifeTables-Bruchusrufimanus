
% Script for plotting the results of B. rufimanus life tables analysis
% Created by Luca Rossini on 11 June 2023
% Last update 16 June 2023
% e-mail: luca.rossini@unitus.it

% This script is recalled by 'LifeTablesAnalysis.m'

% Boxplot of the Egg development
% Note: the boxplot in Matlab wants first the y values and then the x

figure

boxplot(RatesSynthesis_EggDevelopment, TemperaturesSynthesis_EggDevelopment)
title('Egg to larva development')
xlabel('Temperature (°C)')
ylabel('Development rates (1/day)')


% Boxplot of the Egg-Adult development
% Note: the boxplot in Matlab wants first the y values and then the x

figure

boxplot(RatesSynthesis_AADevelopment, TemperaturesSynthesis_AADevelopment)
title('Egg to adult development')
xlabel('Temperature (°C)')
ylabel('Development rates (1/day)')


% Boxplot of the Egg development - Degree days

    % Compose the array of data before plotting

DegDay_TemperatureSynthesis_EggDevelopment = [TempSynthesisEggs_12 ...
                                              TempSynthesisEggs_14 ...
                                              TempSynthesisEggs_17 ...
                                              TempSynthesisEggs_20 ...
                                              TempSynthesisEggs_22 ...
                                              TempSynthesisEggs_23 ...
                                              TempSynthesisEggs_24 ...
                                              TempSynthesisEggs_28 ...
                                              TempSynthesisEggs_31 ...
                                              TempSynthesisEggs_35 ...
                                              TempSynthesisEggs_40];

DegDaySynthesis_EggDevelopment = [DDEggs_12 ...
                                  DDEggs_14 ...
                                  DDEggs_17 ...
                                  DDEggs_20 ...
                                  DDEggs_22 ...
                                  DDEggs_23 ...
                                  DDEggs_24 ...
                                  DDEggs_28 ...
                                  DDEggs_31 ...
                                  DDEggs_35 ...
                                  DDEggs_40];

figure

boxchart(DegDay_TemperatureSynthesis_EggDevelopment, ...
         DegDaySynthesis_EggDevelopment)
title('Egg to larva development')
xlabel('Temperature (°C)')
ylabel('Cumulative degree days (°C \cdot day)')


% Boxplot of the Egg-Adult - Degree days

    % Compose the array of data before plotting

DegDay_TemperatureSynthesis_AADevelopment = [TempSynthesisAA_21 ...
                                             TempSynthesisAA_21b ...
                                             TempSynthesisAA_22 ...
                                             TempSynthesisAA_23 ...
                                             TempSynthesisAA_27 ...
                                             TempSynthesisAA_28];

DegDaySynthesis_AADevelopment = [DDAA_21 ...
                                 DDAA_21b ...
                                 DDAA_22 ...
                                 DDAA_23 ...
                                 DDAA_27 ...
                                 DDAA_28];

figure

boxchart(DegDay_TemperatureSynthesis_AADevelopment, ...
         DegDaySynthesis_AADevelopment)
title('Egg to adult development')
xlabel('Temperature (°C)')
ylabel('Cumulative degree days (°C \cdot day)')


% Plot best fit functions - EGG development

    % For loop to evaluate the expressions

BriResEgg = [];
LogResEgg = [];
SDMResEgg = [];
TempResEgg = [];

for j = round(BriEggs_FitRes(2)) * 100 : 4500

    i = j * 0.01;
    
        % Briere

    if i > BriEggs_FitRes(3)

        BriTMP = 0;
    
    else

        BriTMP = BriEggs_FitRes(1) * i * ( i - BriEggs_FitRes(2) ) * ...
                (( BriEggs_FitRes(3) - i )^( 1 / BriEggs_FitRes(4) ));
    end

    BriResEgg = [BriResEgg, BriTMP];
    TempResEgg = [TempResEgg, i];

        % Logan

    if i > LogEggs_FitRes(3)

        LogTMP = 0;

    else

        LogTMP = LogEggs_FitRes(1) * ( exp( LogEggs_FitRes(2) * i) - ...
                 exp( LogEggs_FitRes(2) * LogEggs_FitRes(3) - ...
                 ( ( LogEggs_FitRes(3) - i) / LogEggs_FitRes(4) ) ) );

    end

    LogResEgg = [LogResEgg, LogTMP];

        % Sharpe and De Michele

    SDMTMP = (i * ( exp( SDMEggs_FitRes(1) - ...
             (SDMEggs_FitRes(2) / i ) ) ) ) / ((1 + exp( SDMEggs_FitRes(3) ...
             - ( SDMEggs_FitRes(4) / i ) ) + exp( SDMEggs_FitRes(5) - ...
             ( SDMEggs_FitRes(6) / i ) ) ) );

    SDMResEgg = [SDMResEgg, SDMTMP];
end

    % Make the plot

figure
hold on

boxchart(TemperaturesSynthesis_EggDevelopment, RatesSynthesis_EggDevelopment)
plot(TempResEgg, BriResEgg, '-.', 'LineWidth', 1.25)
plot(TempResEgg, LogResEgg, '--', 'LineWidth', 1.25)
plot(TempResEgg, SDMResEgg, 'LineWidth', 1.25)

title('Egg to larva development')
xlabel('Temperature (°C)')
ylabel('Development rate (1/days)')
legend('Experimental data', 'Briere', 'Logan', 'Sharpe and De Michele')


% Plot best fit functions - EGG-ADULT development

    % For loop to evaluate the expressions

BriResAA = [];
LogResAA = [];
SDMResAA = [];
TempResAA = [];

for j = round(BriAA_FitRes(2)) * 100 : 3500

    i = j * 0.01;
    
        % Briere

    if i > BriAA_FitRes(3)

        BriTMP = 0;
    
    else

        BriTMP = BriAA_FitRes(1) * i * ( i - BriAA_FitRes(2) ) * ...
                (( BriAA_FitRes(3) - i )^( 1 / BriAA_FitRes(4) ));
    end

    BriResAA = [BriResAA, BriTMP];
    TempResAA = [TempResAA, i];

        % Logan

    if i > LogAA_FitRes(3)

        LogTMP = 0;

    else

        LogTMP = LogAA_FitRes(1) * ( exp( LogAA_FitRes(2) * i) - ...
                 exp( LogAA_FitRes(2) * LogAA_FitRes(3) - ...
                 ( ( LogAA_FitRes(3) - i) / LogAA_FitRes(4) ) ) );

    end

    LogResAA = [LogResAA, LogTMP];

        % Sharpe and De Michele

    SDMTMP = (i * ( exp( SDMAA_FitRes(1) - ...
             (SDMAA_FitRes(2) / i ) ) ) ) / ((1 + exp( SDMAA_FitRes(3) ...
             - ( SDMAA_FitRes(4) / i ) ) + exp( SDMAA_FitRes(5) - ...
             ( SDMAA_FitRes(6) / i ) ) ) );

    SDMResAA = [SDMResAA, SDMTMP];
end

    % Make the plot

figure
hold on

boxchart(TemperaturesSynthesis_AADevelopment, RatesSynthesis_AADevelopment)
plot(TempResAA, BriResAA, '-.', 'LineWidth', 1.25)
plot(TempResAA, LogResAA, '--', 'LineWidth', 1.25)
plot(TempResAA, SDMResAA, 'LineWidth', 1.25)

title('Egg to adult development')
xlabel('Temperature (°C)')
ylabel('Development rate (1/days)')
legend('Experimental data', 'Briere', 'Logan', 'Sharpe and De Michele')


% Plotting the distribution of raw data - EGG development

figure

    % Eggs 12

subplot(4,3,1);

bar(TimeEggs_12, CountEggs_12, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (12.4 \pm 0.4) °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 14

subplot(4,3,2);

bar(TimeEggs_14, CountEggs_14, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (14.9 \pm 0.9) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 17

subplot(4,3,3);

bar(TimeEggs_17, CountEggs_17, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (17.7 \pm 0.7) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 20

subplot(4,3,4);

bar(TimeEggs_20, CountEggs_20, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (20.5 \pm 0.6) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 22

subplot(4,3,5);

bar(TimeEggs_22, CountEggs_22, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (22 \pm 1) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 23

subplot(4,3,6);

bar(TimeEggs_23, CountEggs_23, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (23 \pm 2) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 24

subplot(4,3,7);

bar(TimeEggs_24, CountEggs_24, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (23.4 \pm 0.6) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 28

subplot(4,3,8);

bar(TimeEggs_28, CountEggs_28, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (28.0 \pm 0.6) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 31

subplot(4,3,9);

bar(TimeEggs_31, CountEggs_31, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (31.1 \pm 0.4) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 35

subplot(4,3,10);

bar(TimeEggs_35, CountEggs_35, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (35.0 \pm 0.4) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])

    % Eggs 40

subplot(4,3,11);

bar(TimeEggs_40, CountEggs_40, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Eggs (40.0 \pm 0.4) °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')
ylim([0 80])
xlim([0 45])


% Plotting the distribution of raw data - EGG to ADULT development

figure

    % Temperature 1

subplot(3,2,1);

bar(TimeAA_21, CountAA_21, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Egg to adult (21.1 \pm 0.6) °C')
legend('Experimental data')
xlabel('Time (days)')
ylabel('Number of emerging adults')
ylim([0 11])
xlim([0 85])

    % Temperature 2

subplot(3,2,2);

bar(TimeAA_21b, CountAA_21b, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Egg to adult (21.0 \pm 0.6) °C')
xlabel('Time (days)')
ylabel('Number of emerging adults')
ylim([0 11])
xlim([0 85])

    % Temperature 3

subplot(3,2,3);

bar(TimeAA_22, CountAA_22, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Egg to adult (22 \pm 2) °C')
xlabel('Time (days)')
ylabel('Number of emerging adults')
ylim([0 11])
xlim([0 85])

    % Temperature 4

subplot(3,2,4);

bar(TimeAA_23, CountAA_23, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Egg to adult (23 \pm 2) °C')
xlabel('Time (days)')
ylabel('Number of emerging adults')
ylim([0 11])
xlim([0 85])

    % Temperature 5

subplot(3,2,5);

bar(TimeAA_27, CountAA_27, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Egg to adult (27 \pm 1) °C')
xlabel('Time (days)')
ylabel('Number of emerging adults')
ylim([0 11])
xlim([0 85])

    % Temperature 6

subplot(3,2,6);

bar(TimeAA_28, CountAA_28, 'g', 'FaceAlpha', 0.2, BarWidth = 0.5)

title('Egg to adult (28 \pm 1) °C')
xlabel('Time (days)')
ylabel('Number of emerging adults')
ylim([0 11])
xlim([0 85])








