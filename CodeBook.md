Code Book
===
Coursera: Getting and Cleaning Data
Created by mhess2
03-12-2017

The following is a code book for the TidySamsung.txt data set. This data set was created for the Coursera Getting and Cleaning Data assignment. Details about the dataset are described in the following sections:
> - Data Transformations
> - Subjects
> - Activites
> - Measures
> - Data Dictionary

Data Transformations
---
In the original data set, *Human Activity Recognition Using Smartphones* (see the following link for more details: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphone), each of the 30 volunteers performed a serious of six different activities. In this modified, tidy data set, all data has been consolidated into the mean for each unique subject and activity pairing.

Subjects
---
There are 30 unique subjects within this data set. These are random samples from the original study.

Activities
---
Each subject performed multiple instances of the following activities:
> - Walking
> - Walking upstairs
> - Walking downstairs
> - Sitting
> - Standing
> - Laying

Measures
---
Each measure within the data set describes one of the many ways the sensors in the cell phones used in the study collected data. Time and frequency were collected from 3-axis signals (X, Y, and Z). Acceleration, gravity, jerk, and magnitude were collected from the sensors. Mean values and standard deviations of these measures are displayed in the separate columns.
**Note:** The data in this data set is the *mean* of the collected values. Therefore the data is of the mean of mean values, or the mean of standard deviation values.

Data Dictionary
---
Below are the names, types, and units of measurement for each variable within the data set.

**Note:** Numeric refers to values with decimals whereas integer refers to only whole numbers. 

Variable Name	|	Type	|	Unit
-	|	-	|	-
SubjectID	|	Integer	|	
Activity	|	String	|	
TimeBodyAcc_Mean_X	|	Numeric	|	Hertz
TimeBodyAcc_Mean_Y	|	Numeric	|	Hertz
TimeBodyAcc_Mean_Z	|	Numeric	|	Hertz
TimeBodyAcc_StDev_X	|	Numeric	|	Hertz
TimeBodyAcc_StDev_Y	|	Numeric	|	Hertz
TimeBodyAcc_StDev_Z	|	Numeric	|	Hertz
TimeGravityAcc_Mean_X	|	Numeric	|	Hertz
TimeGravityAcc_Mean_Y	|	Numeric	|	Hertz
TimeGravityAcc_Mean_Z	|	Numeric	|	Hertz
TimeGravityAcc_StDev_X	|	Numeric	|	Hertz
TimeGravityAcc_StDev_Y	|	Numeric	|	Hertz
TimeGravityAcc_StDev_Z	|	Numeric	|	Hertz
TimeBodyAccJerk_Mean_X	|	Numeric	|	Hertz
TimeBodyAccJerk_Mean_Y	|	Numeric	|	Hertz
TimeBodyAccJerk_Mean_Z	|	Numeric	|	Hertz
TimeBodyAccJerk_StDev_X	|	Numeric	|	Hertz
TimeBodyAccJerk_StDev_Y	|	Numeric	|	Hertz
TimeBodyAccJerk_StDev_Z	|	Numeric	|	Hertz
TimeBodyGyro_Mean_X	|	Numeric	|	Hertz
TimeBodyGyro_Mean_Y	|	Numeric	|	Hertz
TimeBodyGyro_Mean_Z	|	Numeric	|	Hertz
TimeBodyGyro_StDev_X	|	Numeric	|	Hertz
TimeBodyGyro_StDev_Y	|	Numeric	|	Hertz
TimeBodyGyro_StDev_Z	|	Numeric	|	Hertz
TimeBodyGyroJerk_Mean_X	|	Numeric	|	Hertz
TimeBodyGyroJerk_Mean_Y	|	Numeric	|	Hertz
TimeBodyGyroJerk_Mean_Z	|	Numeric	|	Hertz
TimeBodyGyroJerk_StDev_X	|	Numeric	|	Hertz
TimeBodyGyroJerk_StDev_Y	|	Numeric	|	Hertz
TimeBodyGyroJerk_StDev_Z	|	Numeric	|	Hertz
TimeBodyAccMag_Mean	|	Numeric	|	Hertz
TimeBodyAccMag_StDev	|	Numeric	|	Hertz
TimeGravityAccMag_Mean	|	Numeric	|	Hertz
TimeGravityAccMag_StDev	|	Numeric	|	Hertz
TimeBodyAccJerkMag_Mean	|	Numeric	|	Hertz
TimeBodyAccJerkMag_StDev	|	Numeric	|	Hertz
TimeBodyGyroMag_Mean	|	Numeric	|	Hertz
TimeBodyGyroMag_StDev	|	Numeric	|	Hertz
TimeBodyGyroJerkMag_Mean	|	Numeric	|	Hertz
TimeBodyGyroJerkMag_StDev	|	Numeric	|	Hertz
FreqBodyAcc_Mean_X	|	Numeric	|	Hertz
FreqBodyAcc_Mean_Y	|	Numeric	|	Hertz
FreqBodyAcc_Mean_Z	|	Numeric	|	Hertz
FreqBodyAcc_StDev_X	|	Numeric	|	Hertz
FreqBodyAcc_StDev_Y	|	Numeric	|	Hertz
FreqBodyAcc_StDev_Z	|	Numeric	|	Hertz
FreqBodyAcc_MeanFreq_X	|	Numeric	|	Hertz
FreqBodyAcc_MeanFreq_Y	|	Numeric	|	Hertz
FreqBodyAcc_MeanFreq_Z	|	Numeric	|	Hertz
FreqBodyAccJerk_Mean_X	|	Numeric	|	Hertz
FreqBodyAccJerk_Mean_Y	|	Numeric	|	Hertz
FreqBodyAccJerk_Mean_Z	|	Numeric	|	Hertz
FreqBodyAccJerk_StDev_X	|	Numeric	|	Hertz
FreqBodyAccJerk_StDev_Y	|	Numeric	|	Hertz
FreqBodyAccJerk_StDev_Z	|	Numeric	|	Hertz
FreqBodyAccJerk_MeanFreq_X	|	Numeric	|	Hertz
FreqBodyAccJerk_MeanFreq_Y	|	Numeric	|	Hertz
FreqBodyAccJerk_MeanFreq_Z	|	Numeric	|	Hertz
FreqBodyGyro_Mean_X	|	Numeric	|	Hertz
FreqBodyGyro_Mean_Y	|	Numeric	|	Hertz
FreqBodyGyro_Mean_Z	|	Numeric	|	Hertz
FreqBodyGyro_StDev_X	|	Numeric	|	Hertz
FreqBodyGyro_StDev_Y	|	Numeric	|	Hertz
FreqBodyGyro_StDev_Z	|	Numeric	|	Hertz
FreqBodyGyro_MeanFreq_X	|	Numeric	|	Hertz
FreqBodyGyro_MeanFreq_Y	|	Numeric	|	Hertz
FreqBodyGyro_MeanFreq_Z	|	Numeric	|	Hertz
FreqBodyAccMag_Mean	|	Numeric	|	Hertz
FreqBodyAccMag_StDev	|	Numeric	|	Hertz
FreqBodyAccMag_MeanFreq	|	Numeric	|	Hertz
FreqBodyAccJerkMag_Mean	|	Numeric	|	Hertz
FreqBodyAccJerkMag_StDev	|	Numeric	|	Hertz
FreqBodyAccJerkMag_MeanFreq	|	Numeric	|	Hertz
FreqBodyGyroMag_Mean	|	Numeric	|	Hertz
FreqBodyGyroMag_StDev	|	Numeric	|	Hertz
FreqBodyGyroMag_MeanFreq	|	Numeric	|	Hertz
FreqBodyGyroJerkMag_Mean	|	Numeric	|	Hertz
FreqBodyGyroJerkMag_StDev	|	Numeric	|	Hertz
FreqBodyGyroJerkMag_MeanFreq	|	Numeric	|	Hertz