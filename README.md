Getting and Cleaning Data Course Project
==================================================================

*Version 1.0*

Sergio Martínez

[sergiomar73@gmail.com](sergiomar73@gmail.com)

[@sergiomar73](https://twitter.com/sergiomar73)

[https://github.com/sergiomar73/Getting-and-Cleaning-Data](https://github.com/sergiomar73/Getting-and-Cleaning-Data "GitHub Repository")

The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 

Here are the data for the project: 

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' (inside the zip file) for more details.

Goal
====

The goal of the project is to create one R script called **run_analysis.R** that does the following:
 
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement. 
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names. 
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


How the script works
====================

This is a diagram showing how the 2 sets (training and test) are joined:

![General Diagram](https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png)

Image courtesy of [David Hood](https://www.coursera.org/user/i/7a51bcac9c426e8f7e269324ba20fd0f)

1. The train files
	1. The 3 train files are read
	2. The information about the Subject is appended to the beginning of the main train file (1st position)
	3. The information about the Activity Description is appended to the beginning of the main train file (2nd position)
	4. The variables names are taken from the Activity file	
1. The test files 
	1. The 3 test files are read
	2. The information about the Subject is appended to the beginning of the main test file (1st position)
	3. The information about the Activity Description is appended to the beginning of the main test file (2nd position)
	4. The variables names are taken from the Activity file
5. The resulting 2 main files are merged
6. The merged data set is subsetted with Subject, Activity and all the variables with the measurements on the mean and standard deviation for each measurement
7. This subsetted data set is aggregated with the average of each variable for each Subject and each Activity
8. The final resulting data-frame is wrote out using "write.table".


For each record it is provided:
===============================

- The Identifier of the subject who carried out the experiment
- The Activity label
- A 86-feature vector with time and frequency domain variables.
  - Included all variables with the text 'mean', because the ausence of an exact criteria to exclude any. There are 53 variables:
	  - containing 'mean()': 33 variables
	  - containing 'meanFreq()': 13 variables
	  - angle() variables:  7 variables
  - Included all variables with the text 'std' (33 variables).

The dataset includes the following files:
=========================================

- 'README.md': This document.

- 'CodeBook.md': Code Book that describes the variables, the data, and any transformations or work performed to clean up the data.

- 'run_analysis.R': R script for performing the analysis.

- 'final.txt': Final resulting tidy data set.


Expected conditions
===================

The expected starting conditions of the 'run_analysis.R' script are that the script and the UCI HAR dataset folder are in the working directory.

How to read the results
=======================

To read the results file (final.txt), the easy way is:

    data <- read.table('final.txt', header = TRUE)
    View(data)

Notes: 
======

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- I'like to thanks to David Hood for his generous help in this [FAQ](https://class.coursera.org/getdata-007/forum/thread?thread_id=49)

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Sergio Martínez. September 2014.
