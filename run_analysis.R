install.packages("downloader")
install.packages("dplyr")
library(downloader)
library(dplyr)



############ Download, unzip and delete zip if file does not exist yet ############ 

if (!file.exists("humanActivity.zip")){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download(fileUrl, dest="humanActivity.zip", mode="wb")
  
  # unzip the downloaded file
  unzip("humanActivity.zip", exdir=".")
  
  # delete the zip file
  unlink("humanActivity.zip")
}



############ Merge test and training data sets ############ 

# read test data
testset_x <- read.table("test/X_test.txt")
testset_y <- read.table("test/y_test.txt")
testset_subject <- read.table("test/subject_test.txt")

# read training data
trainingset_x <- read.table("train/X_train.txt")
trainingset_y <- read.table("train/y_train.txt")
trainingset_subject <- read.table("train/subject_train.txt")

# combine x data sets
set_x <- rbind(testset_x, trainingset_x)

# combine y data sets
set_y <- rbind(testset_y, trainingset_y)

# combine subject data sets
set_subject <- rbind(testset_subject, trainingset_subject)



############ Extract measurements on the mean and standard deviation for each measurement ############ 

features <- read.table("features.txt")

filtered_feat <- grep(".*(mean|std).*", features[,2]) 

# subset only mean and std variables from dataset x
set_x <- set_x[, filtered_feat]



############ Use descriptive activity names to name the activities in the data set ############ 

# read the label file
activities <- read.table("activity_labels.txt")

# rename the activities in set_y
set_y[,1]<-activities[match(set_y[,1], activities[,1]),2]


############ Appropriately label the data set with descriptive variable names ############ 

# reset the column names
names(set_x) <- features[filtered_feat,2]
names(set_y) <- "activity"
names(set_subject) <- "subject"

# clean the column names
names(set_x) <- gsub("mean", "Mean", names(set_x))
names(set_x) <- gsub("std", "Std", names(set_x))
names(set_x) <- gsub("-", "", names(set_x))
names(set_x) <- gsub("\\(\\)", "", names(set_x))


############ Creates a file of tidy data set with the average of each variable for each activity and each subject ############ 

# combine set_x, set_y and subject_set
dataset <- cbind(set_subject, set_y, set_x )

# group data by activity and subject and calculate means
tidy_data <- aggregate(. ~ activity+subject, dataset[-2], mean)

# write the result to a new file
write.table(tidy_data, "tidy_data.txt", sep="\t")
