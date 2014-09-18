CodeBook from Getting and Cleaning Data Course Project
==================================================================

*Version 1.0*

Sergio Martínez

[sergiomar73@gmail.com](sergiomar73@gmail.com)

[@sergiomar73](https://twitter.com/sergiomar73)

[https://github.com/sergiomar73/Getting-and-Cleaning-Data](https://github.com/sergiomar73/Getting-and-Cleaning-Data "GitHub Repository")

- There were 561 variables in the original data sets
- The final data set contains **88 variables**
- A 86-feature vector with time and frequency domain variables.
  - Included all variables with the text 'mean', because the ausence of an exact criteria to exclude any. There are 53 variables:
	  - containing 'mean()': 33 variables
	  - containing 'meanFreq()': 13 variables
	  - angle() variables:  7 variables
  - Included all variables with the text 'std' (33 variables). 
- The **Subject Id** was obtained by joining with the *subject\_train.txt* and *subject\_test.txt* file 
- The **Activity Id** was transformed into its **Activity Description** by joining with the *activity_labels.txt* file
- The remaining **86 variables** were obtained by the aggregation of the merged data set by:
 - Subject Id
 - Activity  
- And obtaining the average of each variable
- The data of the 86 variables has been **normalised** in the original data source and bounded within [-1,1]

**You can read the original CodeBook in the file 'features_info.txt' and 'features.txt' files of the original data source**

List of variables in the data set
=================================

 [1] Subject.Id

	1..30 : Unique Identifier of the subject who carried out the experiment
 
 [2] Activity

	String with the Activity Description
	There are 6 different activities:
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING


 [3] tBodyAcc-mean()-X 

	[-1.0 - 1.0] Numeric mean
 [4] tBodyAcc-mean()-Y 

	[-1.0 - 1.0] Numeric mean
 [5] tBodyAcc-mean()-Z 

	[-1.0 - 1.0] Numeric mean
 [6] tBodyAcc-std()-X 

	[-1.0 - 1.0] Numeric mean
 [7] tBodyAcc-std()-Y 

	[-1.0 - 1.0] Numeric mean
 [8] tBodyAcc-std()-Z 

	[-1.0 - 1.0] Numeric mean
 [9] tGravityAcc-mean()-X 

	[-1.0 - 1.0] Numeric mean
[10] tGravityAcc-mean()-Y 

	[-1.0 - 1.0] Numeric mean
[11] tGravityAcc-mean()-Z 

	[-1.0 - 1.0] Numeric mean
[12] tGravityAcc-std()-X 

	[-1.0 - 1.0] Numeric mean
[13] tGravityAcc-std()-Y 

	[-1.0 - 1.0] Numeric mean
[14] tGravityAcc-std()-Z 

	[-1.0 - 1.0] Numeric mean
[15] tBodyAccJerk-mean()-X 

	[-1.0 - 1.0] Numeric mean
[16] tBodyAccJerk-mean()-Y 

	[-1.0 - 1.0] Numeric mean
[17] tBodyAccJerk-mean()-Z 

	[-1.0 - 1.0] Numeric mean
[18] tBodyAccJerk-std()-X 

	[-1.0 - 1.0] Numeric mean
[19] tBodyAccJerk-std()-Y 

	[-1.0 - 1.0] Numeric mean
[20] tBodyAccJerk-std()-Z 

	[-1.0 - 1.0] Numeric mean
[21] tBodyGyro-mean()-X 

	[-1.0 - 1.0] Numeric mean
[22] tBodyGyro-mean()-Y 

	[-1.0 - 1.0] Numeric mean
[23] tBodyGyro-mean()-Z 

	[-1.0 - 1.0] Numeric mean
[24] tBodyGyro-std()-X 

	[-1.0 - 1.0] Numeric mean
[25] tBodyGyro-std()-Y 

	[-1.0 - 1.0] Numeric mean
[26] tBodyGyro-std()-Z 

	[-1.0 - 1.0] Numeric mean
[27] tBodyGyroJerk-mean()-X 

	[-1.0 - 1.0] Numeric mean
[28] tBodyGyroJerk-mean()-Y 

	[-1.0 - 1.0] Numeric mean
[29] tBodyGyroJerk-mean()-Z 

	[-1.0 - 1.0] Numeric mean
[30] tBodyGyroJerk-std()-X 

	[-1.0 - 1.0] Numeric mean
[31] tBodyGyroJerk-std()-Y 

	[-1.0 - 1.0] Numeric mean
[32] tBodyGyroJerk-std()-Z 

	[-1.0 - 1.0] Numeric mean
[33] tBodyAccMag-mean() 

	[-1.0 - 1.0] Numeric mean
[34] tBodyAccMag-std() 

	[-1.0 - 1.0] Numeric mean
[35] tGravityAccMag-mean() 

	[-1.0 - 1.0] Numeric mean
[36] tGravityAccMag-std() 

	[-1.0 - 1.0] Numeric mean
[37] tBodyAccJerkMag-mean() 

	[-1.0 - 1.0] Numeric mean
[38] tBodyAccJerkMag-std() 

	[-1.0 - 1.0] Numeric mean
[39] tBodyGyroMag-mean() 

	[-1.0 - 1.0] Numeric mean
[40] tBodyGyroMag-std() 

	[-1.0 - 1.0] Numeric mean
[41] tBodyGyroJerkMag-mean() 

	[-1.0 - 1.0] Numeric mean
[42] tBodyGyroJerkMag-std() 

	[-1.0 - 1.0] Numeric mean
[43] fBodyAcc-mean()-X 

	[-1.0 - 1.0] Numeric mean
[44] fBodyAcc-mean()-Y 

	[-1.0 - 1.0] Numeric mean
[45] fBodyAcc-mean()-Z 

	[-1.0 - 1.0] Numeric mean
[46] fBodyAcc-std()-X 

	[-1.0 - 1.0] Numeric mean
[47] fBodyAcc-std()-Y 

	[-1.0 - 1.0] Numeric mean
[48] fBodyAcc-std()-Z 

	[-1.0 - 1.0] Numeric mean
[49] fBodyAcc-meanFreq()-X 

	[-1.0 - 1.0] Numeric mean
[50] fBodyAcc-meanFreq()-Y 

	[-1.0 - 1.0] Numeric mean
[51] fBodyAcc-meanFreq()-Z 

	[-1.0 - 1.0] Numeric mean
[52] fBodyAccJerk-mean()-X 

	[-1.0 - 1.0] Numeric mean
[53] fBodyAccJerk-mean()-Y 

	[-1.0 - 1.0] Numeric mean
[54] fBodyAccJerk-mean()-Z 

	[-1.0 - 1.0] Numeric mean
[55] fBodyAccJerk-std()-X 

	[-1.0 - 1.0] Numeric mean
[56] fBodyAccJerk-std()-Y 

	[-1.0 - 1.0] Numeric mean
[57] fBodyAccJerk-std()-Z 

	[-1.0 - 1.0] Numeric mean
[58] fBodyAccJerk-meanFreq()-X 

	[-1.0 - 1.0] Numeric mean
[59] fBodyAccJerk-meanFreq()-Y 

	[-1.0 - 1.0] Numeric mean
[60] fBodyAccJerk-meanFreq()-Z 

	[-1.0 - 1.0] Numeric mean
[61] fBodyGyro-mean()-X 

	[-1.0 - 1.0] Numeric mean
[62] fBodyGyro-mean()-Y 

	[-1.0 - 1.0] Numeric mean
[63] fBodyGyro-mean()-Z 

	[-1.0 - 1.0] Numeric mean
[64] fBodyGyro-std()-X 

	[-1.0 - 1.0] Numeric mean
[65] fBodyGyro-std()-Y 

	[-1.0 - 1.0] Numeric mean
[66] fBodyGyro-std()-Z 

	[-1.0 - 1.0] Numeric mean
[67] fBodyGyro-meanFreq()-X 

	[-1.0 - 1.0] Numeric mean
[68] fBodyGyro-meanFreq()-Y 

	[-1.0 - 1.0] Numeric mean
[69] fBodyGyro-meanFreq()-Z 

	[-1.0 - 1.0] Numeric mean
[70] fBodyAccMag-mean() 

	[-1.0 - 1.0] Numeric mean
[71] fBodyAccMag-std() 

	[-1.0 - 1.0] Numeric mean
[72] fBodyAccMag-meanFreq() 

	[-1.0 - 1.0] Numeric mean
[73] fBodyBodyAccJerkMag-mean() 

	[-1.0 - 1.0] Numeric mean
[74] fBodyBodyAccJerkMag-std() 

	[-1.0 - 1.0] Numeric mean
[75] fBodyBodyAccJerkMag-meanFreq() 

	[-1.0 - 1.0] Numeric mean
[76] fBodyBodyGyroMag-mean() 

	[-1.0 - 1.0] Numeric mean
[77] fBodyBodyGyroMag-std() 

	[-1.0 - 1.0] Numeric mean
[78] fBodyBodyGyroMag-meanFreq() 

	[-1.0 - 1.0] Numeric mean
[79] fBodyBodyGyroJerkMag-mean() 

	[-1.0 - 1.0] Numeric mean
[80] fBodyBodyGyroJerkMag-std() 

	[-1.0 - 1.0] Numeric mean
[81] fBodyBodyGyroJerkMag-meanFreq() 

	[-1.0 - 1.0] Numeric mean
[82] angle(tBodyAccMean,gravity) 

	[-1.0 - 1.0] Numeric mean
[83] angle(tBodyAccJerkMean),gravityMean)

	[-1.0 - 1.0] Numeric mean
[84] angle(tBodyGyroMean,gravityMean) 

	[-1.0 - 1.0] Numeric mean
[85] angle(tBodyGyroJerkMean,gravityMean)

	[-1.0 - 1.0] Numeric mean
[86] angle(X,gravityMean) 

	[-1.0 - 1.0] Numeric mean
[87] angle(Y,gravityMean) 

	[-1.0 - 1.0] Numeric mean
[88] angle(Z,gravityMean)

	[-1.0 - 1.0] Numeric mean