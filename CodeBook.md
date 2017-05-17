The codebook for Data Cleaning course - Week four
=================================================


The input data: Human Activity Recognition Using Smartphones Dataset Version 1.0
Sourced from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The initial dataset contains: 
1. meta description of activity used in *raw data* (activity_labels.txt)
2. meta description of features recorded in *raw data* (featurex.txt, features_info.txt)
3. two datasets (train and test) each containing: 
   - variables (X_train.txt, X_test.txt)
   - labels (y_train.txt, y_test.txt)


The final dataset contains: 
* one tidy dataset (tidy.txt) containing average of data collected for specific features for every subject. 
* specifically for each subject and each activity it contains the following columns:
 - subject - numerical identifier of the subject
 - activity - activity symbol 
 - tBodyAccMeanX - body acceleration mean axis X
 - tBodyAccMeanY - body acceleration mean axis Y 
 - tBodyAccMeanZ - body acceleration mean axis Z
 - tBodyAccStdX - body acceleration standard deviation axis X
 - tBodyAccStdY - body acceleration standard deviation axis Y
 - tBodyAccStdZ - body acceleration standard deviation axis Z
 - tGravityAccMeanX - gravity acceleration mean axis X
 - tGravityAccMeanY - gravity acceleration mean axis Y
 - tGravityAccMeanZ - gravity acceleration mean axis Z
 - tGravityAccStdX - gravity acceleration standard deviation axis X
 - tGravityAccStdY - gravity acceleration standard deviation axis Y
 - tGravityAccStdZ - gravity acceleration standard deviation axis Z
 - tBodyAccJerkMeanX - acceleration jerk mean axis X
 - tBodyAccJerkMeanY - acceleration jerk mean axis Y 
 - tBodyAccJerkMeanZ - acceleration jerk mean axis Z
 - tBodyAccJerkStdX - acceleration jerk standard deviation X  
 - tBodyAccJerkStdY - acceleration jerk standard deviation Y 
 - tBodyAccJerkStdZ - acceleration jerk standard deviation Z 
 - tBodyGyroMeanX - gyroscope mean axis X 
 - tBodyGyroMeanY - gyroscope mean axis Y 
 - tBodyGyroMeanZ - gyroscope mean axis Z 
 - tBodyGyroStdX - gyroscope standard deviation axis X 
 - tBodyGyroStdY - gyroscope standard deviation axis Y
 - tBodyGyroStdZ - gyroscope standard deviation axis Z
 - tBodyGyroJerkMeanX - gyroscope jerk mean axis X
 - tBodyGyroJerkMeanY - gyroscope jerk mean axis Y
 - tBodyGyroJerkMeanZ - gyroscope jerk mean axis Z
 - tBodyGyroJerkStdX - gyroscope jerk standard deviation X
 - tBodyGyroJerkStdY - gyroscope jerk standard deviation Y
 - tBodyGyroJerkStdZ - gyroscope jerk standard deviation Z
 - tBodyAccMagMean - magnetic moment mean 
 - tBodyAccMagStd - magnetic moment standrad deviation 
 - tGravityAccMagMean - gravity magnetic moment mean  
 - tGravityAccMagStd - gravity magnetic moment standard deviation
 - tBodyAccJerkMagMean - magnetic moment body acceleration jerk mean
 - tBodyAccJerkMagStd - magnetic moment body acceleration jerk standard deviation
 - tBodyGyroMagMean - gyroscope magnetic moment body acceleration mean
 - tBodyGyroMagStd - gyroscope magnetic moment body acceleration standard deviation
 - tBodyGyroJerkMagMean - gyroscope magnetic moment body acceleration jerk mean
 - tBodyGyroJerkMagStd - gyroscope magnetic moment body acceleration jerk standard deviation
 - fBodyAccMeanX - body acceleration mean axis X (frequency domain)
 - fBodyAccMeanY - body acceleration mean axis Y  (frequency domain)
 - fBodyAccMeanZ - body acceleration mean axis Z (frequency domain)
 - fBodyAccStdX - body acceleration standard deviation axis X (frequency domain)
 - fBodyAccStdY - body acceleration standard deviation axis Y (frequency domain)
 - fBodyAccStdZ - body acceleration standard deviation axis Z (frequency domain)
 - fBodyAccMeanFreqX - gravity acceleration mean axis X (frequency domain)
 - fBodyAccMeanFreqY - gravity acceleration mean axis Y (frequency domain)
 - fBodyAccMeanFreqZ - gravity acceleration mean axis Z (frequency domain)
 - fBodyAccJerkMeanX - gravity acceleration standard deviation axis X (frequency domain)
 - fBodyAccJerkMeanY - gravity acceleration standard deviation axis Y (frequency domain)
 - fBodyAccJerkMeanZ - gravity acceleration standard deviation axis Z (frequency domain)
 - fBodyAccJerkStdX - acceleration jerk mean axis X (frequency domain)
 - fBodyAccJerkStdY - acceleration jerk mean axis Y  (frequency domain)
 - fBodyAccJerkStdZ - acceleration jerk mean axis Z (frequency domain)
 - fBodyAccJerkMeanFreqX - acceleration jerk standard deviation X   (frequency domain)
 - fBodyAccJerkMeanFreqY - acceleration jerk standard deviation Y  (frequency domain)
 - fBodyAccJerkMeanFreqZ - acceleration jerk standard deviation Z  (frequency domain)
 - fBodyGyroMeanX - gyroscope mean axis X  (frequency domain)
 - fBodyGyroMeanY - gyroscope mean axis Y  (frequency domain)
 - fBodyGyroMeanZ - gyroscope mean axis Z  (frequency domain)
 - fBodyGyroStdX - gyroscope standard deviation axis X  (frequency domain)
 - fBodyGyroStdY - gyroscope standard deviation axis Y (frequency domain)
 - fBodyGyroStdZ - gyroscope standard deviation axis Z (frequency domain)
 - fBodyGyroMeanFreqX - gyroscope jerk mean axis X (frequency domain)
 - fBodyGyroMeanFreqY - gyroscope jerk mean axis Y (frequency domain)
 - fBodyGyroMeanFreqZ - gyroscope jerk mean axis Z (frequency domain)
 - fBodyAccMagMean - gyroscope jerk standard deviation X (frequency domain)
 - fBodyAccMagStd - gyroscope jerk standard deviation Y (frequency domain)
 - fBodyAccMagMeanFreq - gyroscope jerk standard deviation Z (frequency domain)
 - fBodyBodyAccJerkMagMean - magnetic moment mean  (frequency domain)
 - fBodyBodyAccJerkMagStd - magnetic moment standrad deviation  (frequency domain)
 - fBodyBodyAccJerkMagMeanFreq - gravity magnetic moment mean   (frequency domain)
 - fBodyBodyGyroMagMean - gravity magnetic moment standard deviation (frequency domain)
 - fBodyBodyGyroMagStd - magnetic moment body acceleration jerk mean (frequency domain)
 - fBodyBodyGyroMagMeanFreq - magnetic moment body acceleration jerk standard deviation (frequency domain)
 - fBodyBodyGyroJerkMagMean	 gyroscope magnetic moment body acceleration mean (frequency domain)
 - fBodyBodyGyroJerkMagStd - gyroscope magnetic moment body acceleration standard deviation (frequency domain)
 - fBodyBodyGyroJerkMagMeanFreq	 gyroscope magnetic moment body acceleration jerk mean (frequency domain)
