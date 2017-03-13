
# Coursera
# Peer Graded Assignment: Getting and Cleaning Data Course Project
# mhess2 2017-02

# Requirements:
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each
#    measurement.
# 3. Uses descriptive activity names to name the activities in the dataset.
# 4. Appropriately label the data set with descriptive variable names.
# 5. Create a second, independent tidy data set with the average of each
#    variable for each activity and each subject.

# Step i: Prerequisite script
# Set working directory
setwd(dir = paste0(getwd(), "/4_Coursera/Course 3/Week 4"))

# Download the necessary data
# For more information on the data used in this script please check out the
# following URL from the UCI Machine Learning Repository:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
dataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
uci <- paste0(getwd(), "/uci.zip")
download.file(dataUrl, uci)

# Unzip the file
unzip(uci)

# Load activity labels (for "y" datasets)
lbl <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Load features (column names for "x" datasets)
ftr <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Load the train data
xtn <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytn <- read.table("./UCI HAR Dataset/train/Y_train.txt")
stn <- read.table("./UCI HAR Dataset/train/subject_train.txt") # Subject No.'s

# Load the test data
xts <- read.table("./UCI HAR Dataset/test/X_test.txt")
yts <- read.table("./UCI HAR Dataset/test/Y_test.txt")
sts <- read.table("./UCI HAR Dataset/test/subject_test.txt") # Subject No.'s

# Step 1: Merge the data
# Remove prior data as we go to clean up space in the environment
xdat <- rbind(xtn, xts)
rm(xtn, xts)

ydat <- rbind(ytn, yts)
rm(ytn, yts)

sdat <- rbind(stn, sts)
rm(stn, sts)

# Step 2: Extract only mean and standard deviation measurements
names(xdat) <- ftr
sub <- grep("mean|std", ftr)
xdat <- xdat[sub]

# Step 3: Uses descriptive activity names to name the activities in the dataset
ydat$id <- 1:nrow(ydat) # Identifies original row order
ydat <- merge(ydat, lbl, by = "V1", all = TRUE)
ydat <- ydat[order(ydat$id), ] # Reorders the data appropriately
ydat <- ydat[-c(1:2)] # Keeps only the column for activity
names(ydat) <- "Activity" 

# Finish merging the data together
names(sdat) <- "SubjectID"
dat <- cbind(sdat, ydat, xdat)

# Step 4: Appropriately label the data set with descriptive variable names
names(dat) <- gsub("^t", "Time", names(dat))
names(dat) <- gsub("^f", "Freq", names(dat))
names(dat) <- gsub("mean", "Mean", names(dat))
names(dat) <- gsub("std", "StDev", names(dat))
names(dat) <- gsub("\\(|\\)", "", names(dat))
names(dat) <- gsub("-", "_", names(dat))
names(dat) <- gsub("BodyBody", "Body", names(dat))

# Step 5: Create a tidy data set with the average of each variable for each
# activity and each subject
tidy <- aggregate(dat[3:ncol(dat)], by = list(SubjectID = dat$SubjectID, Activity = dat$Activity), FUN = mean)

# Export the data
write.table(tidy, "MeansBySubjectandActivity.txt", row.names = FALSE)
