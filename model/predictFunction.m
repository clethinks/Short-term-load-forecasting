function result = predictFunction(varargin)
%#function fitctree
% result = predictFunction(varargin)   returns prediction results using the model trained in Regression Learner R2023a
%
%  Input:
%      varargin: Input argument must be a table, whose 1 columns have the same variable names and data types as the variables that trained the deployed model.
%  Output:
%      result: Prediction results returned by the trained, deployed model

% Auto-generated by MATLAB on 26-Jul-2023 22:51:27
inputData = readtable('dataset.xlsx')
inputData = varargin{1};

predictorNames = {'Value'};

if istable(inputData)
    T = inputData;
    verifyTableInput(T, predictorNames);
elseif isstruct(inputData)
    T = struct2table(inputData);
    verifyTableInput(T, predictorNames);
else
    error('stats:mlearnapp:DeployedModelError', 'Input argument must be a table or structure that can be converted to a table using the struct2table function.');
end

% Uncomment the following lines of code if you used preprocessing
% steps before importing data into Regression Learner. Add the
% preprocessing steps to the processInputData.m file in the
% RegressionLearnerDeployedModel_resources folder.

% processedData = processInputData(T);
% T = processedData;

fileData = load('TrainedRegressionModel.mat');
model = fileData.trainedModel;
result = model.predictFcn(T);

end

function verifyTableInput(T, predictorNames)
isPredictorsInTable = ismember(predictorNames, T.Properties.VariableNames);
if ~all(isPredictorsInTable)
    error('stats:mlearnapp:DeployedModelError', 'Input argument is missing the following %d required predictor columns: %s', sum(~isPredictorsInTable), strjoin(predictorNames(~isPredictorsInTable), ', '));
end
end