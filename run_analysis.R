## This script is for the programming assignment in the Coursera course Getting and Cleaning Data in R
# The script accomplishes the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
#    for each activity and each subject.
setwd("~/datasciencecoursera/GettingAndCleaningDataProject")
library(plyr)

# First, read in the training and test sets
train <- read.table("~/datasciencecoursera/GettingAndCleaningDataProject/UCI HAR Dataset/train/X_train.txt",
                    colClasses="numeric",row.names=NULL)
train_ID <- read.table("~/datasciencecoursera/GettingAndCleaningDataProject/UCI HAR Dataset/train/subject_train.txt",
                       colClasses="numeric") # training subjects
 
test <- read.table("~/datasciencecoursera/GettingAndCleaningDataProject/UCI HAR Dataset/test/X_test.txt",
                   colClasses="numeric",row.names=NULL)
test_ID <- read.table("~/datasciencecoursera/GettingAndCleaningDataProject/UCI HAR Dataset/test/subject_test.txt",
                      colClasses="numeric") # test subjects

ID <- rbind(train_ID,test_ID) # Combine IDs

### 1. Merge the training and test sets to create one data set
moveData <- rbind(train,test)
moveData <- cbind(ID,moveData)
names(moveData)[1] <- "Subject" # Rename first column of data frame

### 2. Extract only the measurements on the mean and standard deviation for each measurement
features <- read.table("~/datasciencecoursera/GettingAndCleaningDataProject/UCI HAR Dataset/features.txt",row.names=NULL)
mean_sd <- rep(NA,nrow(features)) # Initialize logical vector
mean_sd <- grepl("mean",features$V2) # Find variables with mean
mean_sd2 <- grepl("std",features$V2) # Fing variables with standard deviation
mean_sd <- mean_sd + mean_sd2 # Add two vectors together to get those with mean and those with standard deviation

mean_sd_vars <- which(mean_sd == 1) # Find index of variables with mean or standard deviation
# Select only measurements on mean and standard deviation for each measurement and subject column
moveData <- subset(moveData,select=c(mean_sd_vars,ncol(moveData))) 




### 3. Use descriptive activity names to name the activities in the data set.

# First get activity codes 1-6
train_activity <- read.table("~/datasciencecoursera/GettingAndCleaningDataProject/UCI HAR Dataset/train/y_train.txt") 
test_activity <- read.table("~/datasciencecoursera/GettingAndCleaningDataProject/UCI HAR Dataset/test/y_test.txt")
# Rbind codes from training and test data, with training data on top and cbind to moveData 
activity <- rbind(train_activity,test_activity)
moveData <- cbind(activity,moveData)
names(moveData)[1] <- "Activity" # Rename variable as Activity
moveData <- moveData[,c(2,1,3:ncol(moveData))] # Reorder so subject is first column, activity second
# Turn numbers into descriptive activities
moveData$Activity[moveData$Activity==1] <- "WALKING"
moveData$Activity[moveData$Activity==2] <- "WALKING_UPSTAIRS"
moveData$Activity[moveData$Activity==3] <- "WALKING_DOWNSTAIRS"
moveData$Activity[moveData$Activity==4] <- "SITTING"
moveData$Activity[moveData$Activity==5] <- "STANDING"
moveData$Activity[moveData$Activity==6] <- "LAYING"

### 4. Appropriately label the data set with descriptive variable names
names(moveData) <- c("Subject","Activity",as.character(features[mean_sd_vars,2])) # Add names of variables
# Clean up variable names
names(moveData) <- gsub("-mean()-X","_X_mean",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-mean()-Y","_Y_mean",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-mean()-Z","_Z_mean",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-std()-X","_X_sd",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-std()-Y","_Y_sd",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-std()-Z","_Z_sd",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-meanFreq()-X","_X_freq_mean",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-meanFreq()-Y","_Y_freq_mean",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-meanFreq()-Z","_Z_freq_mean",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-meanFreq()","_freq_mean",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-mean()","_mean",names(moveData),fixed=TRUE)
names(moveData) <- gsub("-std()","_sd",names(moveData),fixed=TRUE)

### 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject, 
#  write to .txt file
summary <- ddply(moveData,.(Subject,Activity),numcolwise(mean))
write.table(summary,"tidyData.txt",row.names=FALSE)
