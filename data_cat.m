load('C:\Users\Administrator\Desktop\data_proje\SVM\SCF_test1.mat');
load('C:\Users\Administrator\Desktop\data_proje\SVM\SCF_test2.mat');
load('C:\Users\Administrator\Desktop\data_proje\SVM\SCF_train1.mat');
load('C:\Users\Administrator\Desktop\data_proje\SVM\SCF_train2.mat');
load('C:\Users\Administrator\Desktop\data_proje\SVM\SCF_train3.mat');
load('C:\Users\Administrator\Desktop\data_proje\SVM\SCF_train4.mat');

test_class = cat(1,test_class_1,test_class_2);
test_data = cat(1,test_data_1,test_data_2);
train_class = cat(1,training_class_1,training_class_2,training_class_3,training_class_4);
train_data = cat(1,training_data_1,training_data_2,training_data_3,training_data_4);
clearvars -except test_class test_data train_class train_data

save 'train_data.mat' train_data
save 'test_data.mat' test_data
save 'test_class.mat' test_class
save 'train_class.mat' train_class
