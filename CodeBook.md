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

The transformation proceeds as follows: 
1. activity labels are read from the initial dataset
2. feature labels are read from the initial dataset
3. *test* and *train* datasets are loaded 
4. datasets are merged (completeData)
5. activity and subjects are changed into factors
6. complete dataset is transformed (melted) into long table (meltedData)
7. averages over activity and subject are calculated over the subjects and activities (meanData)


The final dataset contains: 
* one tidy dataset (tidy.txt) containing average of data collected for specific features for every subject
