clc
%plotting raw data and seeing the energy consumption trend graphically
rawdata = readtable('Energyconsumption.xlsx');
x = rawdata.DATE; 
y = rawdata.Value; 

nexttile
plot(x,y,'k')

xlabel('Date');
ylabel('Energy consumption in kWh');
title('Energy Consumption raw data');

nexttile
scatter(x,y)
zoom on
title('Energy consumption raw data: Scatter plot');
xlabel('Date');
ylabel('Energy consumption in kWh');

%open regression learner app
regressionLearner

