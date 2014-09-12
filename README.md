GettingAndCleaningDataProject
=============================

This repo consists of an R script which reads in raw data on movements tracked by a Samsung phone and converts them into a tidy data set and a code book describing the meaning of each variable in the final data set.

First, the code reads in the needed files, both the training data and the test data. Then, the two data sets are merged to create one large data set. The measurements on the mean and standard deviation for each measurement are found through a text search and matching function and only those measurements are kept. Next, the actvity names are used to provide descriptive activity names for each different activity in the data set and descriptive variable names are developed for the data set using the regular expressions function 'gsub' in R. Finally, 'ddply' in the plyr package is used to find the mean of each variable for each subject and each activity, resulting in a data frame with 180 rows (6 activities for each of the 30 subjects) and 81 columns (79 columns corresponding to mean and standard deviation of movements, a column for subject identification, and a column for activity).
