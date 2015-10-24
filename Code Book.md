==================================================================
Pre-Analysis set of Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Based on 
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universitr degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
Pre analysis and sumarization of activity recognition information from the cited Study (Reyes, Anguita et all). 

For each record it is provided:
======================================
Summarize information based on original dataset of:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.md'

- 'Tidy_data_long.txt': Shows summarize information, in a long format tidy dataframe.

- 'Tidy_data_wide.txt': Shows summarize information, in a wide format tidy dataframe.

- 'Code Book.md': Explanation of variables.


Description of Datasets:
=========================================
'Tidy_data_long.txt':

-  Activity: represents the activity the subject is doing when information is recorded. 
  -  Units: "LAYING","SITTING","STANDING" ,"WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS"  
  
-  Subject: Person who makes the  (from 1 to 30).
  -  Units: 1 to 30.
  
-  variable: represents the measurement taken.
  -  Units: Variable name.
  
-  Value: Represents the average value for a mesurement, subject and activity.
  -  Units: Value of mean.

Tidy_data_wide.txt':

-  Activity: represents the activity the subject is doing when information is recorded.
  -  Units: "LAYING","SITTING","STANDING" ,"WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS"  
  
-  Subject: Person who makes the  (from 1 to 30).
 -  Units: 1 to 30.
 
-  Columns 3 to 88: Each one of them represent the average values for subject and activity of one of the measurements taken, that is indicated in the column name,
  -  Units: Value of mean.

