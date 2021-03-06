# Getting and Cleaning Data Course Project

Sigita Grinfelde, 12.11.2016

Data Science course assignment of week 4. 

---------------

### The original data

**Comes from project:** Human Activity Recognition Using Smartphones Dataset.

**Device used for measurments:** Samsung Galaxy S II

**Subjects:** a group of 30 volunteers within an age bracket of 19-48 years

[More information on the source data set.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

---------------

### Each record (row) has following measurments

- subject with which the experiments were performed
- activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING)
- mean value for each subject and activity of:
    - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
    - Triaxial Angular velocity from the gyroscope. 
    - A 561-feature vector with time and frequency domain variables. 

---------------

### Following files are provided:

- README.md 

- CodeBook.md - describing the variables, data, transformations

- run_analysis.R - the script that cleans up the raw data into tidy data set

- tidy_data.txt - the resuting tidy data set

---------------

### Workflow (from task description):

run_analysis.R script : 

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

