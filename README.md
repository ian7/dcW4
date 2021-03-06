This is the repository containing solution of the Peer-reviewed exercise for the Data Cleaning course 

There is a single R script (run_analysis) that contains followign functions: 
* loadSet - loads set of variables under specified *setName* considering only given *features* list
* digestFatures - transforms feature names from the cryptic symbols in the raw dataset into meaningful descriptions


The data transformation proceeds as follows: 
1. activity labels are read from the initial dataset
2. feature labels are read from the initial dataset
3. *test* and *train* datasets are loaded 
4. datasets are merged (completeData)
5. activity and subjects are changed into factors
6. complete dataset is transformed (melted) into long table (meltedData)
7. averages over activity and subject are calculated over the subjects and activities (meanData)


The original dataset is covered by the following license:
Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.