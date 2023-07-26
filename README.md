# Electricity-load-forecasting
A mini-project for my Power Systems Analysis class to attempt to do short term electricity load and demand forecasting for households using linear regression in MATLAB
The data set was obtained from Kaggle, an online data-bankwhich shows household power use in kWh from 1985-2014. The data was visulaized in MATLAB to check the trends and trained using the Regression Learner app in MATLAB and chose the model with the least error. 
You can feed in new data with the trained model provided it has the same variables I used, **DATE** and **Value**
Training model is initiated by:
`yfit = trainedModel.predictFcn(T)`



**Load forecasting** in power systems entails predicting the load patterns of the grid for a given period of time. It can be short term, medium term or long term load forecasting. 
Long-term load forecast
 is usually done by the government and has a lead time of 5-20 years to warrant setting up of new infrastructure, export of electricity to other countries and feasibility studies. It is based on a wide range of data: econometrics, living conditions, political atmosphere etc.





