
% Script for LifeTables analysis - Bruchus rufimanus
% Created by Luca Rossini on 10 June 2023
% Last update 16 June 2023
% e-mail luca.rossini@unitus.it


% Raw dataset - Egg development - 'Egg-Incubation' Excel sheet

    % Eggs (12.4 +/- 0.4) °C

DelayEggs_12 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'C10:C31');
TempEggs_12 = 12.4;
ErrTempEggs_12 = 0.4;
DevRateEggs_12 = 1. / DelayEggs_12;

    % Eggs (14.9 +/- 0.9) °C

DelayEggs_14 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'H10:H58');
TempEggs_14 = 14.9;
ErrTempEggs_14 = 0.9;
DevRateEggs_14 = 1. / DelayEggs_14;

    % Eggs (17.7 +/- 0.7) °C

DelayEggs_17 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'M10:M67');
TempEggs_17 = 17.7;
ErrTempEggs_17 = 0.7;
DevRateEggs_17 = 1. / DelayEggs_17;

    % Eggs (20.5 +/- 0.6) °C

DelayEggs_20 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'R10:R72');
TempEggs_20 = 20.5;
ErrTempEggs_20 = 0.6;
DevRateEggs_20 = 1. / DelayEggs_20;

    % Eggs (22 +/- 1) °C

DelayEggs_22 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'W10:W89');
TempEggs_22 = 22;
ErrTempEggs_22 = 1;
DevRateEggs_22 = 1. / DelayEggs_22;

    % Eggs (23 +/- 2) °C

DelayEggs_23 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'AB10:AB111');
TempEggs_23 = 23;
ErrTempEggs_23 = 2;
DevRateEggs_23 = 1. / DelayEggs_23;

    % Eggs (23.4 +/- 0.6) °C

DelayEggs_24 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'AG10:AG43');
TempEggs_24 = 23.4;
ErrTempEggs_24 = 0.6;
DevRateEggs_24 = 1. / DelayEggs_24;

    % Eggs (28.0 +/- 0.6) °C

DelayEggs_28 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'AL10:AL84');
TempEggs_28 = 28.0;
ErrTempEggs_28 = 0.6;
DevRateEggs_28 = 1. / DelayEggs_28;

    % Eggs (31.1 +/- 0.4) °C

DelayEggs_31 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'AQ10:AQ69');
TempEggs_31 = 31.1;
ErrTempEggs_31 = 0.4;
DevRateEggs_31 = 1. / DelayEggs_31;

    % Eggs (35.0 +/- 0.4) °C

DelayEggs_35 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'AV10:AV104');
TempEggs_35 = 35.0;
ErrTempEggs_35 = 0.4;
DevRateEggs_35 = 1. / DelayEggs_35;

    % Eggs (40.0 +/- 0.4) °C

DelayEggs_40 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Incubation', ...
                       'BA10:BA79');
TempEggs_40 = 40.0;
ErrTempEggs_40 = 0.4;
DevRateEggs_40 = 1. / DelayEggs_40;

    % Synthesis of the data - For plotting purposes

TemperaturesSynthesis_EggDevelopment = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation', 'BD10:BD717');

DelaySynthesis_EggDevelopment = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation', 'BE10:BE717');

RatesSynthesis_EggDevelopment = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation', 'BF10:BF717');


% Raw dataset - EGG-ADULT development - 'Egg-Adult' Excel sheet

    % Temperature 1 (21.1 +/- 0.6) °C

DelayAA_21 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Adult', ...
                       'C12:C52');
TempAA_21 = 21.1;
ErrTempAA_21 = 0.6;
DevRateAA_21 = 1. / DelayAA_21;

    % Temperature 2 (23 +/- 2) °C

DelayAA_23 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Adult', ...
                       'H12:H29');
TempAA_23 = 23.52;
ErrTempAA_23 = 1.72;
DevRateAA_23 = 1. / DelayAA_23;

    % Temperature 3 (28 +/- 1) °C

DelayAA_28 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Adult', ...
                       'M12:M60');
TempAA_28 = 28.06;
ErrTempAA_28 = 0.75;
DevRateAA_28 = 1. / DelayAA_28;

    % Temperature 4 (22 +/- 2) °C

DelayAA_22 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Adult', ...
                       'R12:R90');
TempAA_22 = 22.02;
ErrTempAA_22 = 1.98;
DevRateAA_22 = 1. / DelayAA_22;

    % Temperature 5 (27 +/- 1) °C

DelayAA_27 = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Adult', ...
                       'W12:W60');
TempAA_27 = 26.69;
ErrTempAA_27 = 1.25;
DevRateAA_27 = 1. / DelayAA_27;

    % Temperature 6 (21.0 +/- 0.6) °C

DelayAA_21b = xlsread('LifeTables-Synthesis.xlsx', 'Egg-Adult', ...
                       'AB12:AB59');
TempAA_21b = 21.06;
ErrTempAA_21b = 0.61;
DevRateAA_21b = 1. / DelayAA_21b;

    % Synthesis of the data - For plotting purposes

TemperaturesSynthesis_AADevelopment = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Adult', 'AE12:AE295');

DelaySynthesis_AADevelopment = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Adult', 'AF12:AF295');

RatesSynthesis_AADevelopment = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Adult', 'AG12:AG295');


% Statistics for life tables analysis - EGGS 'Egg-Incubation'

    % Eggs (12.4 +/- 0.4) °C

        % Extrapolate the distribution from the dataset
TimeEggs_12 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'B10:B69');
CountEggs_12 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'C10:C69');

        % Statistics
ElabData_MeanEggs_12 = mean(DelayEggs_12);
ElabData_DevStEggs_12 = std(DelayEggs_12);

ElabData_MedianEggs_12 = median(DelayEggs_12);
ElabData_ModeEggs_12 = mode(DelayEggs_12);
ElabData_SkewnessEggs_12 = skewness(DelayEggs_12);
ElabData_KurtosisEggs_12 = kurtosis(DelayEggs_12);

    % Eggs (14.9 +/- 0.9) °C

    % Extrapolate the distribution from the dataset
TimeEggs_14 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'G10:G69');
CountEggs_14 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'H10:H69');

        % Statistics
ElabData_MeanEggs_14 = mean(DelayEggs_14);
ElabData_DevStEggs_14 = std(DelayEggs_14);

ElabData_MedianEggs_14 = median(DelayEggs_14);
ElabData_ModeEggs_14 = mode(DelayEggs_14);
ElabData_SkewnessEggs_14 = skewness(DelayEggs_14);
ElabData_KurtosisEggs_14 = kurtosis(DelayEggs_14);

    % Eggs (17.7 +/- 0.7) °C

    % Extrapolate the distribution from the dataset
TimeEggs_17 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'L10:L69');
CountEggs_17 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'M10:M69');

        % Statistics
ElabData_MeanEggs_17 = mean(DelayEggs_17);
ElabData_DevStEggs_17 = std(DelayEggs_17);

ElabData_MedianEggs_17 = median(DelayEggs_17);
ElabData_ModeEggs_17 = mode(DelayEggs_17);
ElabData_SkewnessEggs_17 = skewness(DelayEggs_17);
ElabData_KurtosisEggs_17 = kurtosis(DelayEggs_17);

    % Eggs (20.5 +/- 0.6) °C

    % Extrapolate the distribution from the dataset
TimeEggs_20 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'Q10:Q69');
CountEggs_20 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'R10:R69');

        % Statistics
ElabData_MeanEggs_20 = mean(DelayEggs_20);
ElabData_DevStEggs_20 = std(DelayEggs_20);

ElabData_MedianEggs_20 = median(DelayEggs_20);
ElabData_ModeEggs_20 = mode(DelayEggs_20);
ElabData_SkewnessEggs_20 = skewness(DelayEggs_20);
ElabData_KurtosisEggs_20 = kurtosis(DelayEggs_20);

    % Eggs (22 +/- 1) °C

    % Extrapolate the distribution from the dataset
TimeEggs_22 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'V10:V69');
CountEggs_22 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'W10:W69');

        % Statistics
ElabData_MeanEggs_22 = mean(DelayEggs_22);
ElabData_DevStEggs_22 = std(DelayEggs_22);

ElabData_MedianEggs_22 = median(DelayEggs_22);
ElabData_ModeEggs_22 = mode(DelayEggs_22);
ElabData_SkewnessEggs_22 = skewness(DelayEggs_22);
ElabData_KurtosisEggs_22 = kurtosis(DelayEggs_22);

    % Eggs (23 +/- 2) °C

    % Extrapolate the distribution from the dataset
TimeEggs_23 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'AA10:AA69');
CountEggs_23 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'AB10:AB69');

        % Statistics
ElabData_MeanEggs_23 = mean(DelayEggs_23);
ElabData_DevStEggs_23 = std(DelayEggs_23);

ElabData_MedianEggs_23 = median(DelayEggs_23);
ElabData_ModeEggs_23 = mode(DelayEggs_23);
ElabData_SkewnessEggs_23 = skewness(DelayEggs_23);
ElabData_KurtosisEggs_23 = kurtosis(DelayEggs_23);

    % Eggs (23.4 +/- 0.6) °C

    % Extrapolate the distribution from the dataset
TimeEggs_24 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'AF10:AF69');
CountEggs_24 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'AG10:AG69');

        % Statistics
ElabData_MeanEggs_24 = mean(DelayEggs_24);
ElabData_DevStEggs_24 = std(DelayEggs_24);

ElabData_MedianEggs_24 = median(DelayEggs_24);
ElabData_ModeEggs_24 = mode(DelayEggs_24);
ElabData_SkewnessEggs_24 = skewness(DelayEggs_24);
ElabData_KurtosisEggs_24 = kurtosis(DelayEggs_24);

    % Eggs (28.0 +/- 0.6) °C

    % Extrapolate the distribution from the dataset
TimeEggs_28 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'AK10:AK69');
CountEggs_28 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'AL10:AL69');

        % Statistics
ElabData_MeanEggs_28 = mean(DelayEggs_28);
ElabData_DevStEggs_28 = std(DelayEggs_28);

ElabData_MedianEggs_28 = median(DelayEggs_28);
ElabData_ModeEggs_28 = mode(DelayEggs_28);
ElabData_SkewnessEggs_28 = skewness(DelayEggs_28);
ElabData_KurtosisEggs_28 = kurtosis(DelayEggs_28);

    % Eggs (31.1 +/- 0.4) °C

    % Extrapolate the distribution from the dataset
TimeEggs_31 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'AP10:AP69');
CountEggs_31 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'AQ10:AQ69');

        % Statistics
ElabData_MeanEggs_31 = mean(DelayEggs_31);
ElabData_DevStEggs_31 = std(DelayEggs_31);

ElabData_MedianEggs_31 = median(DelayEggs_31);
ElabData_ModeEggs_31 = mode(DelayEggs_31);
ElabData_SkewnessEggs_31 = skewness(DelayEggs_31);
ElabData_KurtosisEggs_31 = kurtosis(DelayEggs_31);

    % Eggs (35.0 +/- 0.4) °C

    % Extrapolate the distribution from the dataset
TimeEggs_35 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'AU10:AU69');
CountEggs_35 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'AV10:AV69');

        % Statistics
ElabData_MeanEggs_35 = mean(DelayEggs_35);
ElabData_DevStEggs_35 = std(DelayEggs_35);

ElabData_MedianEggs_35 = median(DelayEggs_35);
ElabData_ModeEggs_35 = mode(DelayEggs_35);
ElabData_SkewnessEggs_35 = skewness(DelayEggs_35);
ElabData_KurtosisEggs_35 = kurtosis(DelayEggs_35);

    % Eggs (40.0 +/- 0.4) °C

    % Extrapolate the distribution from the dataset
TimeEggs_40 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Incubation-Distribution', 'AZ10:AZ69');
CountEggs_40 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Incubation-Distribution', 'BA10:BA69');

        % Statistics
ElabData_MeanEggs_40 = mean(DelayEggs_40);
ElabData_DevStEggs_40 = std(DelayEggs_40);

ElabData_MedianEggs_40 = median(DelayEggs_40);
ElabData_ModeEggs_40 = mode(DelayEggs_40);
ElabData_SkewnessEggs_40 = skewness(DelayEggs_40);
ElabData_KurtosisEggs_40 = kurtosis(DelayEggs_40);


% Statistics for life tables analysis - EGG-ADULT 'Egg-Adult'

    % Temperature 1 (21.1 +/- 0.6) °C

        % Extrapolate the distribution from the dataset
TimeAA_21 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Adult-Distribution', 'B12:B101');
CountAA_21 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Adult-Distribution', 'C12:C101');

        % Statistics
ElabData_MeanAA_21 = mean(DelayAA_21);
ElabData_DevStAA_21 = std(DelayAA_21);

ElabData_MedianAA_21 = median(DelayAA_21);
ElabData_ModeAA_21 = mode(DelayAA_21);
ElabData_SkewnessAA_21 = skewness(DelayAA_21);
ElabData_KurtosisAA_21 = kurtosis(DelayAA_21);

    % Temperature 2 (23 +/- 2) °C

        % Extrapolate the distribution from the dataset
TimeAA_23 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Adult-Distribution', 'G12:G101');
CountAA_23 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Adult-Distribution', 'H12:H101');

        % Statistics
ElabData_MeanAA_23 = mean(DelayAA_23);
ElabData_DevStAA_23 = std(DelayAA_23);

ElabData_MedianAA_23 = median(DelayAA_23);
ElabData_ModeAA_23 = mode(DelayAA_23);
ElabData_SkewnessAA_23 = skewness(DelayAA_23);
ElabData_KurtosisAA_23 = kurtosis(DelayAA_23);

    % Temperature 3 (28 +/- 1) °C

        % Extrapolate the distribution from the dataset
TimeAA_28 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Adult-Distribution', 'L12:L101');
CountAA_28 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Adult-Distribution', 'M12:M101');

        % Statistics
ElabData_MeanAA_28 = mean(DelayAA_28);
ElabData_DevStAA_28 = std(DelayAA_28);

ElabData_MedianAA_28 = median(DelayAA_28);
ElabData_ModeAA_28 = mode(DelayAA_28);
ElabData_SkewnessAA_28 = skewness(DelayAA_28);
ElabData_KurtosisAA_28 = kurtosis(DelayAA_28);

    % Temperature 4 (22 +/- 2) °C

        % Extrapolate the distribution from the dataset
TimeAA_22 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Adult-Distribution', 'Q12:Q101');
CountAA_22 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Adult-Distribution', 'R12:R101');

        % Statistics
ElabData_MeanAA_22 = mean(DelayAA_22);
ElabData_DevStAA_22 = std(DelayAA_22);

ElabData_MedianAA_22 = median(DelayAA_22);
ElabData_ModeAA_22 = mode(DelayAA_22);
ElabData_SkewnessAA_22 = skewness(DelayAA_22);
ElabData_KurtosisAA_22 = kurtosis(DelayAA_22);

    % Temperature 5 (27 +/- 1) °C

        % Extrapolate the distribution from the dataset
TimeAA_27 = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Adult-Distribution', 'V12:V101');
CountAA_27 = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Adult-Distribution', 'W12:W101');

        % Statistics
ElabData_MeanAA_27 = mean(DelayAA_27);
ElabData_DevStAA_27 = std(DelayAA_27);

ElabData_MedianAA_27 = median(DelayAA_27);
ElabData_ModeAA_27 = mode(DelayAA_27);
ElabData_SkewnessAA_27 = skewness(DelayAA_27);
ElabData_KurtosisAA_27 = kurtosis(DelayAA_27);

    % Temperature 5 (21.0 +/- 0.6) °C

        % Extrapolate the distribution from the dataset
TimeAA_21b = xlsread('LifeTables-Synthesis.xlsx', ...
                      'Egg-Adult-Distribution', 'AA12:AA101');
CountAA_21b = xlsread('LifeTables-Synthesis.xlsx', ...
                       'Egg-Adult-Distribution', 'AB12:AB101');

        % Statistics
ElabData_MeanAA_21b = mean(DelayAA_21b);
ElabData_DevStAA_21b = std(DelayAA_21b);

ElabData_MedianAA_21b = median(DelayAA_21b);
ElabData_ModeAA_21b = mode(DelayAA_21b);
ElabData_SkewnessAA_21b = skewness(DelayAA_21b);
ElabData_KurtosisAA_21b = kurtosis(DelayAA_21b);


% Define the development rate function to be fitted

    % Briere

BriereFun = ['abs(a * x * ( x - b ) * (( c - x )^( 1 / d )))'];

    % Logan

LoganFun = ['a * ( exp( b * x) - exp( b * c - ' ...
            '( ( c - x) / d ) ) )'];

    % Lactin 1

LactinOneFun = ['exp( a * x ) - exp( a * b * ( ( b - x ) / c ) )'];

    % Lactin 2

LactinTwoFun = ['exp( rho_lactwo * x ) - exp( rho_lactwo * T_max_lactwo * ' ...
                '( ( T_max_lactwo - x ) / Delta_T_lactwo ) ) + b_lactwo )'];

    % Sharpe and De Michele

SDMFun = ['(x * ( exp( A - (B / x ) ) ) ) / ((1 + exp( C - ( D / x ) ) ' ...
          '+ exp( E - ( F / x ) ) ) )'];


% Development rate functions - EGG development

    % Fit Briere function

        % Initial conditions for fitting 'a, b, c, d' is the order
        % Variable conversion:
        % a = a
        % b = T_low
        % c = T_max
        % d = m

        % Initial conditions and bounds

BriEggs_InitCond = [0.0001 9.0 38.0 2.0];
BriEggs_LowBound = [0.00001 8.0 37.0 2.0];
BriEggs_UppBound = [0.0005 10.0 41.0 12];

        % Fitting algorithm and solution storage

BriEggs_FitOptions = fitoptions('StartPoint', ...
                  BriEggs_InitCond, 'Method', 'NonlinearLeastSquares', ...
                  'Robust', 'Off', 'Algorithm', 'Trust-Region', ...
                  'Lower', BriEggs_LowBound, ...
                  'Upper', BriEggs_UppBound);

[BriEggs_Fit, BriEggs_gof] = fit(TemperaturesSynthesis_EggDevelopment, ...
                  RatesSynthesis_EggDevelopment, BriereFun, ...
                  BriEggs_FitOptions);

        % Save the coeffiecient values for a, b, and c in a vector

BriEggs_FitRes = coeffvalues(BriEggs_Fit);

        % Print results on the console

fprintf('\nBriere function EGGS - Fit Results: \n\n')
fprintf('a     = %f\n', BriEggs_FitRes(1))
fprintf('T_low = %f\n', BriEggs_FitRes(2))
fprintf('T_max = %f\n', BriEggs_FitRes(3))
fprintf('m     = %f\n', BriEggs_FitRes(4))


    % Fit Logan function

        % Initial conditions for fitting 'a, b, c, d' is the order
        % Variable conversion:
        % a = psi
        % b = rho
        % c = T_max
        % d = Delta_T

        % Initial conditions and bounds

LogEggs_InitCond = [0.01 9.0 38.0 2.0];
LogEggs_LowBound = [0.008 0.09 37.0 3.0];
LogEggs_UppBound = [0.02 0.3 43.0 4.0];

        % Fitting algorithm and solution storage

LogEggs_FitOptions = fitoptions('StartPoint', ...
                  LogEggs_InitCond, 'Method', 'NonlinearLeastSquares', ...
                  'Robust', 'Off', 'Algorithm', 'Trust-Region', ...
                  'Lower', LogEggs_LowBound, ...
                  'Upper', LogEggs_UppBound);

[LogEggs_Fit, LogEggs_gof] = fit(TemperaturesSynthesis_EggDevelopment, ...
                  RatesSynthesis_EggDevelopment, LoganFun, ...
                  LogEggs_FitOptions);

        % Save the coeffiecient values for a, b, and c in a vector

LogEggs_FitRes = coeffvalues(LogEggs_Fit);

        % Print results on the console

fprintf('\nLogan function EGGS - Fit Results: \n\n')
fprintf('psi     = %f\n', LogEggs_FitRes(1))
fprintf('rho     = %f\n', LogEggs_FitRes(2))
fprintf('T_max   = %f\n', LogEggs_FitRes(3))
fprintf('Delta_T = %f\n', LogEggs_FitRes(4))


    % Fit Sharpe and De Michele function

        % Initial conditions for fitting 'A, B, C, D, E, F' is the order

SDMEggs_InitCond = [1 -1 1 -1 1 330];

        % Fitting algorithm and solution storage

SDMEggs_FitOptions = fitoptions('StartPoint', ...
                  SDMEggs_InitCond, 'Method', 'NonlinearLeastSquares', ...
                  'Robust', 'Off', 'Algorithm', 'Trust-Region');

[SDMEggs_Fit, SDMEggs_gof] = fit(TemperaturesSynthesis_EggDevelopment, ...
                  RatesSynthesis_EggDevelopment, SDMFun, ...
                  SDMEggs_FitOptions);

        % Save the coeffiecient values for a, b, and c in a vector

SDMEggs_FitRes = coeffvalues(SDMEggs_Fit);

        % Print results on the console

fprintf('\nSharpe and De Michele function EGGS - Fit Results: \n\n')
fprintf('A  = %f\n', SDMEggs_FitRes(1))
fprintf('B  = %f\n', SDMEggs_FitRes(2))
fprintf('C  = %f\n', SDMEggs_FitRes(3))
fprintf('D  = %f\n', SDMEggs_FitRes(4))
fprintf('E  = %f\n', SDMEggs_FitRes(5))
fprintf('F  = %f\n', SDMEggs_FitRes(6))


% Development rate functions - EGG-ADULT development

    % Fit Briere function

        % Initial conditions for fitting 'a, b, c, d' is the order
        % Variable conversion:
        % a = a
        % b = T_low
        % c = T_max
        % d = m

        % Initial conditions and bounds

BriAA_InitCond = [0.0001 15.0 30.0 2.0];
BriAA_LowBound = [0.00001 12.0 28.0 2.0];
BriAA_UppBound = [0.0005 17.0 33.0 4.92];

        % Fitting algorithm and solution storage

BriAA_FitOptions = fitoptions('StartPoint', ...
                  BriAA_InitCond, 'Method', 'NonlinearLeastSquares', ...
                  'Robust', 'Off', 'Algorithm', 'Trust-Region', ...
                  'Lower', BriAA_LowBound, ...
                  'Upper', BriAA_UppBound);

[BriAA_Fit, BriAA_gof] = fit(TemperaturesSynthesis_AADevelopment, ...
                  RatesSynthesis_AADevelopment, BriereFun, ...
                  BriAA_FitOptions);

        % Save the coeffiecient values for a, b, and c in a vector

BriAA_FitRes = coeffvalues(BriAA_Fit);

        % Print results on the console

fprintf('\nBriere function EGG-ADULT - Fit Results: \n\n')
fprintf('a     = %f\n', BriAA_FitRes(1))
fprintf('T_low = %f\n', BriAA_FitRes(2))
fprintf('T_max = %f\n', BriAA_FitRes(3))
fprintf('m     = %f\n', BriAA_FitRes(4))


    % Fit Logan function

        % Initial conditions for fitting 'a, b, c, d' is the order
        % Variable conversion:
        % a = psi
        % b = rho
        % c = T_max
        % d = Delta_T

        % Initial conditions and bounds

LogAA_InitCond = [0.01 0.1 29.0 1.4];
LogAA_LowBound = [0.001 0 28.0 1.5];
LogAA_UppBound = [0.3 0.2 31.0 Inf];

        % Fitting algorithm and solution storage

LogAA_FitOptions = fitoptions('StartPoint', ...
                  LogAA_InitCond, 'Method', 'NonlinearLeastSquares', ...
                  'Robust', 'Off', 'Algorithm', 'Trust-Region', ...
                  'Lower', LogAA_LowBound, ...
                  'Upper', LogAA_UppBound);

[LogAA_Fit, LogAA_gof] = fit(TemperaturesSynthesis_AADevelopment, ...
                  RatesSynthesis_AADevelopment, LoganFun, ...
                  LogAA_FitOptions);

        % Save the coeffiecient values for a, b, and c in a vector

LogAA_FitRes = coeffvalues(LogAA_Fit);

        % Print results on the console

fprintf('\nLogan function EGG-ADULT - Fit Results: \n\n')
fprintf('psi     = %f\n', LogAA_FitRes(1))
fprintf('rho     = %f\n', LogAA_FitRes(2))
fprintf('T_max   = %f\n', LogAA_FitRes(3))
fprintf('Delta_T = %f\n', LogAA_FitRes(4))


    % Fit Sharpe and De Michele function

        % Initial conditions for fitting 'A, B, C, D, E, F' is the order

SDMAA_InitCond = [-12 -200 -7 -220 -7 -300];
SDMAA_LowBound = [-16 -210 -9 -230 -10 -500];
SDMAA_UppBound = [-12 -170 -5 -210 -6 -300];

        % Fitting algorithm and solution storage

SDMAA_FitOptions = fitoptions('StartPoint', ...
                   SDMAA_InitCond, 'Method', 'NonlinearLeastSquares', ...
                   'Robust', 'Off', 'Algorithm', 'Trust-Region', ...
                   'Lower', SDMAA_LowBound, ...
                   'Upper', SDMAA_UppBound);

[SDMAA_Fit, SDMAA_gof] = fit(TemperaturesSynthesis_AADevelopment, ...
                  RatesSynthesis_AADevelopment, SDMFun, ...
                  SDMAA_FitOptions);

        % Save the coeffiecient values for a, b, and c in a vector

SDMAA_FitRes = coeffvalues(SDMAA_Fit);

        % Print results on the console

fprintf('\nSharpe and De Michele function EGG-ADULT - Fit Results: \n\n')
fprintf('A  = %f\n', SDMAA_FitRes(1))
fprintf('B  = %f\n', SDMAA_FitRes(2))
fprintf('C  = %f\n', SDMAA_FitRes(3))
fprintf('D  = %f\n', SDMAA_FitRes(4))
fprintf('E  = %f\n', SDMAA_FitRes(5))
fprintf('F  = %f\n', SDMAA_FitRes(6))


% Calculation of the degree days based on the T_min parameter obtained by
% the Briére development rate function

    % EGG development

        % Eggs (12.4 +/- 0.4) °C

DDEggs_12 = [];
TempSynthesisEggs_12 = [];

for i = 1 : length(DelayEggs_12)

    DDEggs_12(i) = DelayEggs_12(i) * (TempEggs_12 - BriEggs_FitRes(2));
    TempSynthesisEggs_12(i) = TempEggs_12;

end

        % Statistics
DD_ElabData_MeanEggs_12 = mean(DDEggs_12);
DD_ElabData_DevStEggs_12 = std(DDEggs_12);
DD_ElabData_MedianEggs_12 = median(DDEggs_12);
DD_ElabData_ModeEggs_12 = mode(DDEggs_12);
DD_ElabData_SkewnessEggs_12 = skewness(DDEggs_12);
DD_ElabData_KurtosisEggs_12 = kurtosis(DDEggs_12);

        % Eggs (14.9 +/- 0.9) °C

DDEggs_14 = [];
TempSynthesisEggs_14 = [];

for i = 1 : length(DelayEggs_14)

    DDEggs_14(i) = DelayEggs_14(i) * (TempEggs_14 - BriEggs_FitRes(2));
    TempSynthesisEggs_14(i) = TempEggs_14;

end

        % Statistics
DD_ElabData_MeanEggs_14 = mean(DDEggs_14);
DD_ElabData_DevStEggs_14 = std(DDEggs_14);
DD_ElabData_MedianEggs_14 = median(DDEggs_14);
DD_ElabData_ModeEggs_14 = mode(DDEggs_14);
DD_ElabData_SkewnessEggs_14 = skewness(DDEggs_14);
DD_ElabData_KurtosisEggs_14 = kurtosis(DDEggs_14);

        % Eggs (17.7 +/- 0.7) °C

DDEggs_17 = [];
TempSynthesisEggs_17 = [];

for i = 1 : length(DelayEggs_17)

    DDEggs_17(i) = DelayEggs_17(i) * (TempEggs_17 - BriEggs_FitRes(2));
    TempSynthesisEggs_17(i) = TempEggs_17;

end

        % Statistics
DD_ElabData_MeanEggs_17 = mean(DDEggs_17);
DD_ElabData_DevStEggs_17 = std(DDEggs_17);
DD_ElabData_MedianEggs_17 = median(DDEggs_17);
DD_ElabData_ModeEggs_17 = mode(DDEggs_17);
DD_ElabData_SkewnessEggs_17 = skewness(DDEggs_17);
DD_ElabData_KurtosisEggs_17 = kurtosis(DDEggs_17);

        % Eggs (20.5 +/- 0.6) °C

DDEggs_20 = [];
TempSynthesisEggs_20 = [];

for i = 1 : length(DelayEggs_20)

    DDEggs_20(i) = DelayEggs_20(i) * (TempEggs_20 - BriEggs_FitRes(2));
    TempSynthesisEggs_20(i) = TempEggs_20;

end

        % Statistics
DD_ElabData_MeanEggs_20 = mean(DDEggs_20);
DD_ElabData_DevStEggs_20 = std(DDEggs_20);
DD_ElabData_MedianEggs_20 = median(DDEggs_20);
DD_ElabData_ModeEggs_20 = mode(DDEggs_20);
DD_ElabData_SkewnessEggs_20 = skewness(DDEggs_20);
DD_ElabData_KurtosisEggs_20 = kurtosis(DDEggs_20);

        % Eggs (22 +/- 1) °C

DDEggs_22 = [];
TempSynthesisEggs_22 = [];

for i = 1 : length(DelayEggs_22)

    DDEggs_22(i) = DelayEggs_22(i) * (TempEggs_22 - BriEggs_FitRes(2));
    TempSynthesisEggs_22(i) = TempEggs_22;

end

        % Statistics
DD_ElabData_MeanEggs_22 = mean(DDEggs_22);
DD_ElabData_DevStEggs_22 = std(DDEggs_22);
DD_ElabData_MedianEggs_22 = median(DDEggs_22);
DD_ElabData_ModeEggs_22 = mode(DDEggs_22);
DD_ElabData_SkewnessEggs_22 = skewness(DDEggs_22);
DD_ElabData_KurtosisEggs_22 = kurtosis(DDEggs_22);

        % Eggs (23 +/- 2) °C

DDEggs_23 = [];
TempSynthesisEggs_23 = [];

for i = 1 : length(DelayEggs_23)

    DDEggs_23(i) = DelayEggs_23(i) * (TempEggs_23 - BriEggs_FitRes(2));
    TempSynthesisEggs_23(i) = TempEggs_23;

end

        % Statistics
DD_ElabData_MeanEggs_23 = mean(DDEggs_23);
DD_ElabData_DevStEggs_23 = std(DDEggs_23);
DD_ElabData_MedianEggs_23 = median(DDEggs_23);
DD_ElabData_ModeEggs_23 = mode(DDEggs_23);
DD_ElabData_SkewnessEggs_23 = skewness(DDEggs_23);
DD_ElabData_KurtosisEggs_23 = kurtosis(DDEggs_23);

        % Eggs (23.4 +/- 0.6) °C

DDEggs_24 = [];
TempSynthesisEggs_24 = [];

for i = 1 : length(DelayEggs_24)

    DDEggs_24(i) = DelayEggs_24(i) * (TempEggs_24 - BriEggs_FitRes(2));
    TempSynthesisEggs_24(i) = TempEggs_24;

end

        % Statistics
DD_ElabData_MeanEggs_24 = mean(DDEggs_24);
DD_ElabData_DevStEggs_24 = std(DDEggs_24);
DD_ElabData_MedianEggs_24 = median(DDEggs_24);
DD_ElabData_ModeEggs_24 = mode(DDEggs_24);
DD_ElabData_SkewnessEggs_24 = skewness(DDEggs_24);
DD_ElabData_KurtosisEggs_24 = kurtosis(DDEggs_24);

        % Eggs (28.0 +/- 0.6) °C

DDEggs_28 = [];
TempSynthesisEggs_28 = [];

for i = 1 : length(DelayEggs_28)

    DDEggs_28(i) = DelayEggs_28(i) * (TempEggs_28 - BriEggs_FitRes(2));
    TempSynthesisEggs_28(i) = TempEggs_28;

end

        % Statistics
DD_ElabData_MeanEggs_28 = mean(DDEggs_28);
DD_ElabData_DevStEggs_28 = std(DDEggs_28);
DD_ElabData_MedianEggs_28 = median(DDEggs_28);
DD_ElabData_ModeEggs_28 = mode(DDEggs_28);
DD_ElabData_SkewnessEggs_28 = skewness(DDEggs_28);
DD_ElabData_KurtosisEggs_28 = kurtosis(DDEggs_28);

        % Eggs (31.1 +/- 0.4) °C

DDEggs_31 = [];
TempSynthesisEggs_31 = [];

for i = 1 : length(DelayEggs_31)

    DDEggs_31(i) = DelayEggs_31(i) * (TempEggs_31 - BriEggs_FitRes(2));
    TempSynthesisEggs_31(i) = TempEggs_31;

end

        % Statistics
DD_ElabData_MeanEggs_31 = mean(DDEggs_31);
DD_ElabData_DevStEggs_31 = std(DDEggs_31);
DD_ElabData_MedianEggs_31 = median(DDEggs_31);
DD_ElabData_ModeEggs_31 = mode(DDEggs_31);
DD_ElabData_SkewnessEggs_31 = skewness(DDEggs_31);
DD_ElabData_KurtosisEggs_31 = kurtosis(DDEggs_31);

        % Eggs (35.0 +/- 0.4) °C

DDEggs_35 = [];
TempSynthesisEggs_35 = [];

for i = 1 : length(DelayEggs_35)

    DDEggs_35(i) = DelayEggs_35(i) * (TempEggs_35 - BriEggs_FitRes(2));
    TempSynthesisEggs_35(i) = TempEggs_35;

end

        % Statistics
DD_ElabData_MeanEggs_35 = mean(DDEggs_35);
DD_ElabData_DevStEggs_35 = std(DDEggs_35);
DD_ElabData_MedianEggs_35 = median(DDEggs_35);
DD_ElabData_ModeEggs_35 = mode(DDEggs_35);
DD_ElabData_SkewnessEggs_35 = skewness(DDEggs_35);
DD_ElabData_KurtosisEggs_35 = kurtosis(DDEggs_35);

        % Eggs (40.0 +/- 0.4) °C

DDEggs_40 = [];
TempSynthesisEggs_40 = [];

for i = 1 : length(DelayEggs_40)

    DDEggs_40(i) = DelayEggs_40(i) * (TempEggs_40 - BriEggs_FitRes(2));
    TempSynthesisEggs_40(i) = TempEggs_40;

end

        % Statistics
DD_ElabData_MeanEggs_40 = mean(DDEggs_40);
DD_ElabData_DevStEggs_40 = std(DDEggs_40);
DD_ElabData_MedianEggs_40 = median(DDEggs_40);
DD_ElabData_ModeEggs_40 = mode(DDEggs_40);
DD_ElabData_SkewnessEggs_40 = skewness(DDEggs_40);
DD_ElabData_KurtosisEggs_40 = kurtosis(DDEggs_40);


    % EGG-ADULT development

        % Temperature 1 (21.1 +/- 0.6) °C

DDAA_21 = [];
TempSynthesisAA_21 = [];

for i = 1 : length(DelayAA_21)

    DDAA_21(i) = DelayAA_21(i) * (TempAA_21 - BriAA_FitRes(2));
    TempSynthesisAA_21(i) = TempAA_21;

end

        % Statistics
DD_ElabData_MeanAA_21 = mean(DDAA_21);
DD_ElabData_DevStAA_21 = std(DDAA_21);
DD_ElabData_MedianAA_21 = median(DDAA_21);
DD_ElabData_ModeAA_21 = mode(DDAA_21);
DD_ElabData_SkewnessAA_21 = skewness(DDAA_21);
DD_ElabData_KurtosisAA_21 = kurtosis(DDAA_21);

        % Temperature 2 (23 +/- 2) °C

DDAA_23 = [];
TempSynthesisAA_23 = [];

for i = 1 : length(DelayAA_23)

    DDAA_23(i) = DelayAA_23(i) * (TempAA_23 - BriAA_FitRes(2));
    TempSynthesisAA_23(i) = TempAA_23;

end

        % Statistics
DD_ElabData_MeanAA_23 = mean(DDAA_23);
DD_ElabData_DevStAA_23 = std(DDAA_23);
DD_ElabData_MedianAA_23 = median(DDAA_23);
DD_ElabData_ModeAA_23 = mode(DDAA_23);
DD_ElabData_SkewnessAA_23 = skewness(DDAA_23);
DD_ElabData_KurtosisAA_23 = kurtosis(DDAA_23);

        % Temperature 3 (28 +/- 1) °C

DDAA_28 = [];
TempSynthesisAA_28 = [];

for i = 1 : length(DelayAA_28)

    DDAA_28(i) = DelayAA_28(i) * (TempAA_28 - BriAA_FitRes(2));
    TempSynthesisAA_28(i) = TempAA_28;

end

        % Statistics
DD_ElabData_MeanAA_28 = mean(DDAA_28);
DD_ElabData_DevStAA_28 = std(DDAA_28);
DD_ElabData_MedianAA_28 = median(DDAA_28);
DD_ElabData_ModeAA_28 = mode(DDAA_28);
DD_ElabData_SkewnessAA_28 = skewness(DDAA_28);
DD_ElabData_KurtosisAA_28 = kurtosis(DDAA_28);

        % Temperature 4 (22 +/- 2) °C

DDAA_22 = [];
TempSynthesisAA_22 = [];

for i = 1 : length(DelayAA_22)

    DDAA_22(i) = DelayAA_22(i) * (TempAA_22 - BriAA_FitRes(2));
    TempSynthesisAA_22(i) = TempAA_22;

end

        % Statistics
DD_ElabData_MeanAA_22 = mean(DDAA_22);
DD_ElabData_DevStAA_22 = std(DDAA_22);
DD_ElabData_MedianAA_22 = median(DDAA_22);
DD_ElabData_ModeAA_22 = mode(DDAA_22);
DD_ElabData_SkewnessAA_22 = skewness(DDAA_22);
DD_ElabData_KurtosisAA_22 = kurtosis(DDAA_22);

        % Temperature 5 (27 +/- 1) °C

DDAA_27 = [];
TempSynthesisAA_27 = [];

for i = 1 : length(DelayAA_27)

    DDAA_27(i) = DelayAA_27(i) * (TempAA_27 - BriAA_FitRes(2));
    TempSynthesisAA_27(i) = TempAA_27;

end

        % Statistics
DD_ElabData_MeanAA_27 = mean(DDAA_27);
DD_ElabData_DevStAA_27 = std(DDAA_27);
DD_ElabData_MedianAA_27 = median(DDAA_27);
DD_ElabData_ModeAA_27 = mode(DDAA_27);
DD_ElabData_SkewnessAA_27 = skewness(DDAA_27);
DD_ElabData_KurtosisAA_27 = kurtosis(DDAA_27);

        % Temperature 6 (21.0 +/- 0.6) °C

DDAA_21b = [];
TempSynthesisAA_21b = [];

for i = 1 : length(DelayAA_21b)

    DDAA_21b(i) = DelayAA_21b(i) * (TempAA_21b - BriAA_FitRes(2));
    TempSynthesisAA_21b(i) = TempAA_21b;

end

        % Statistics
DD_ElabData_MeanAA_21b = mean(DDAA_21b);
DD_ElabData_DevStAA_21b = std(DDAA_21b);
DD_ElabData_MedianAA_21b = median(DDAA_21b);
DD_ElabData_ModeAA_21b = mode(DDAA_21b);
DD_ElabData_SkewnessAA_21b = skewness(DDAA_21b);
DD_ElabData_KurtosisAA_21b = kurtosis(DDAA_21b);



% Recalling the script for plotting results

run("Plots.m")


