function modelInfoJSON = modelInformation()
modelInfoStruct = struct();
modelInfoStruct.About = 'Predict on new data using a trained model exported from Regression Learner R2023a.';
modelInfoStruct.Version = '1.0';
modelInfoStruct.InputFormat = 'table';
modelInfoStruct.InputColumnOrder = {'Value'};
modelInfoStruct.InputColumnFormat = {'double'};
modelInfoStruct.OutputFormat = 'double';
modelInfoJSON = jsonencode(modelInfoStruct);
end