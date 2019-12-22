% Data Communications Final Project
% Wireless Signal Identification by using SVM
% U. Erdemir, Y. E. Yildiz, S. Bilen
clc
clear
close all
%% Loading train and test data
fprintf("Loading data...\n")
load('test_class.mat');
fprintf("test_class loaded.\n")
load('test_data.mat');
fprintf("test_data loaded.\n")
load('train_class.mat');
fprintf("train_class loaded.\n")
load('train_data.mat');
fprintf("train_data loaded.\n")

%% Modelling
fprintf("\nFitting the model...\n")
SVMModel = fitcecoc(train_data, train_class); %, 'method', 'LS');
fprintf("Completed.\n")

%% Prediction
fprintf("\nEvaluating test data with trained model...\n")
prediction = predict(SVMModel, test_data);
fprintf("Completed.\n")

%% Find Accuracy
fprintf("\nFinding accuracy...\n");
SVM_Accuracy = mean(test_class == prediction)*100;
fprintf('SVM_Accuracy = %d\n', SVM_Accuracy)

%% Saving results
save 'prediction.mat' prediction
