# Code Book

This file describes the variables, the data, and any transformations that were performed to clean up the data.

----------
### Data

[Originat data source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

----------
### Manipulations applied

- Mearging training and test datasets for data values (set_x), data variables (set_y) and subject ids (set_subject)
- Extracting measurements on the mean and standard deviation for each measurement
- Cleaning up the variable names
- Calculating average of each variable for each activity and each subject

----------
### Variables

- subject - subject with which experiments were performed

- activity - activity that subject was performing (one of the six - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

### Measurments

Average values of the mean and standard deviations:

- "tBodyAccMeanX"	
- "tBodyAccMeanY"	
- "tBodyAccMeanZ"	
- "tBodyAccStdX"	
- "tBodyAccStdY"	
- "tBodyAccStdZ"	
- "tGravityAccMeanX"	
- "tGravityAccMeanY"	
- "tGravityAccMeanZ"	
- "tGravityAccStdX"	
- "tGravityAccStdY"	
- "tGravityAccStdZ"	
- "tBodyAccJerkMeanX"	
- "tBodyAccJerkMeanY"	
- "tBodyAccJerkMeanZ"	
- "tBodyAccJerkStdX"	
- "tBodyAccJerkStdY"	
- "tBodyAccJerkStdZ"	
- "tBodyGyroMeanX"	
- "tBodyGyroMeanY"	
- "tBodyGyroMeanZ"	
- "tBodyGyroStdX"	
- "tBodyGyroStdY"	
- "tBodyGyroStdZ"	
- "tBodyGyroJerkMeanX"	
- "tBodyGyroJerkMeanY"	
- "tBodyGyroJerkMeanZ"	
- "tBodyGyroJerkStdX"
- "tBodyGyroJerkStdY"	
- "tBodyGyroJerkStdZ"	
- "tBodyAccMagMean"	
- "tBodyAccMagStd"	
- "tGravityAccMagMean"	
- "tGravityAccMagStd"	
- "tBodyAccJerkMagMean"
- "tBodyAccJerkMagStd"	
- "tBodyGyroMagMean"	
- "tBodyGyroMagStd"	
- "tBodyGyroJerkMagMean"	
- "tBodyGyroJerkMagStd"	
- "fBodyAccMeanX"	
- "fBodyAccMeanY"	
- "fBodyAccMeanZ"
- "fBodyAccStdX"	
- "fBodyAccStdY"	
- "fBodyAccStdZ"	
- "fBodyAccMeanFreqX"	
- "fBodyAccMeanFreqY"
- "fBodyAccMeanFreqZ"	
- "fBodyAccJerkMeanX"	
- "fBodyAccJerkMeanY"
- "fBodyAccJerkMeanZ"	
- "fBodyAccJerkStdX"	
- "fBodyAccJerkStdY"	
- "fBodyAccJerkStdZ"	
- "fBodyAccJerkMeanFreqX"	
- "fBodyAccJerkMeanFreqY"	
- "fBodyAccJerkMeanFreqZ"	
- "fBodyGyroMeanX"	
- "fBodyGyroMeanY"	
- "fBodyGyroMeanZ"	
- "fBodyGyroStdX"	
- "fBodyGyroStdY"	
- "fBodyGyroStdZ"	
- "fBodyGyroMeanFreqX"	
- "fBodyGyroMeanFreqY"	
- "fBodyGyroMeanFreqZ"	
- "fBodyAccMagMean"	
- "fBodyAccMagStd"	
- "fBodyAccMagMeanFreq"	
- "fBodyBodyAccJerkMagMean"	 
- "fBodyBodyAccJerkMagStd"	
- "fBodyBodyAccJerkMagMeanFreq"	
- "fBodyBodyGyroMagMean"	
- "fBodyBodyGyroMagStd"
- "fBodyBodyGyroMagMeanFreq"	
- "fBodyBodyGyroJerkMagMean"	
- "fBodyBodyGyroJerkMagStd"	
- "fBodyBodyGyroJerkMagMeanFreq"

