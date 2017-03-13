Read Me
===
Coursera: Getting and Cleaning Data
Created by mhess2
03-12-2017

Five steps were taken to transform the original *Human Activity Recognition Using Smartphones* data set into the final, TidySamsung.txt data set. Prerequisite steps included setting up a working directory, downloading and unzipping the data, and loading in the data into R. For further details on each step, please read below.

**Note:** For more information on the original data set, please see the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphone

Step 1. Merge the Data
---
The data originally consisted of a training data, test data, factor labels (variable names), and activity labels. The training and test data were also separated into three data files:
> 1. Subject ID numbers
> 2. Activity performed
> 3. Measures

I first merged all measurement data, then all activity data, and finally all subject data. I specifically merged them by training data first then by test data. That way all of the subject IDs and activities would correspond to the appropriate measures.

After sub-setting all of the data (Step 2) and transforming the activities to descriptive names (Step 3), I merged all of the data into one complete set.

Step 2. Extract Only Mean and Standard Deviation Measures
---
The original data had 561 measures, which I paired down to 79. These 79 measures were only mean and standard deviation variables.

Step 3. Use Descriptive Activity Names
---
The activity data used a series of codes (1 - 6) to describe what activity was performed. These codes were not obvious as to what activity was being measured. In order to make more sense, I re-coded the activity codes to the appropriate activity names. Below is the original code and the transformed activity name:

|Code | Activity Name|
|-|-|
|1	|	WALKING|
|2	|	WALKING_UPSTAIRS|
|3	|	WALKING_DOWNSTAIRS|
|4	|	SITTING|
|5	|	STANDING|
|6	|	LAYING|

Step 4. Appropriately Re-Label the Data Set
---
In order to make the column names make more sense, I transformed the names in the following ways:
> - Made clear whether the variable was measuring time or frequency
> - Removed special characters
> - Replaced hyphens with underscores
> - Removed duplicated words in variable names
> - Corrected type casing so that each new word started with an uppercase letter

Step 5. Create a Tidy Data Set with the Average Variable for Each Subject and Activity
---
After the data was merged and cleaned, I aggregated the data to each unique subject and activity pairing. Because there were 30 unique subjects and 6 unique activities, the final data set included 180 observations. The mean of each measure was taken during the aggregation process and the data set was exported as a text file (TidySamsung.txt). 

For more information on the individual variables, please see the code book (CodeBook.md) and for full comments on the code please see run_analysis.R.
