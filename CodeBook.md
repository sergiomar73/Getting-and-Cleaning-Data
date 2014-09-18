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
 .state 
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

 [4] tBodyAcc-mean()-Y 

 [5] tBodyAcc-mean()-Z 

 [6] tBodyAcc-std()-X 

 [7] tBodyAcc-std()-Y 

 [8] tBodyAcc-std()-Z 

 [9] tGravityAcc-mean()-X 

[10] tGravityAcc-mean()-Y 

[11] tGravityAcc-mean()-Z 

[12] tGravityAcc-std()-X 

[13] tGravityAcc-std()-Y 

[14] tGravityAcc-std()-Z 

[15] tBodyAccJerk-mean()-X 

[16] tBodyAccJerk-mean()-Y 

[17] tBodyAccJerk-mean()-Z 

[18] tBodyAccJerk-std()-X 

[19] tBodyAccJerk-std()-Y 

[20] tBodyAccJerk-std()-Z 

[21] tBodyGyro-mean()-X 

[22] tBodyGyro-mean()-Y 

[23] tBodyGyro-mean()-Z 

[24] tBodyGyro-std()-X 

[25] tBodyGyro-std()-Y 

[26] tBodyGyro-std()-Z 

[27] tBodyGyroJerk-mean()-X 

[28] tBodyGyroJerk-mean()-Y 

[29] tBodyGyroJerk-mean()-Z 

[30] tBodyGyroJerk-std()-X 

[31] tBodyGyroJerk-std()-Y 

[32] tBodyGyroJerk-std()-Z 

[33] tBodyAccMag-mean() 

[34] tBodyAccMag-std() 

[35] tGravityAccMag-mean() 

[36] tGravityAccMag-std() 

[37] tBodyAccJerkMag-mean() 

[38] tBodyAccJerkMag-std() 

[39] tBodyGyroMag-mean() 

[40] tBodyGyroMag-std() 

[41] tBodyGyroJerkMag-mean() 

[42] tBodyGyroJerkMag-std() 

[43] fBodyAcc-mean()-X 

[44] fBodyAcc-mean()-Y 

[45] fBodyAcc-mean()-Z 

[46] fBodyAcc-std()-X 

[47] fBodyAcc-std()-Y 

[48] fBodyAcc-std()-Z 

[49] fBodyAcc-meanFreq()-X 

[50] fBodyAcc-meanFreq()-Y 

[51] fBodyAcc-meanFreq()-Z 

[52] fBodyAccJerk-mean()-X 

[53] fBodyAccJerk-mean()-Y 

[54] fBodyAccJerk-mean()-Z 

[55] fBodyAccJerk-std()-X 

[56] fBodyAccJerk-std()-Y 

[57] fBodyAccJerk-std()-Z 

[58] fBodyAccJerk-meanFreq()-X 

[59] fBodyAccJerk-meanFreq()-Y 

[60] fBodyAccJerk-meanFreq()-Z 

[61] fBodyGyro-mean()-X 

[62] fBodyGyro-mean()-Y 

[63] fBodyGyro-mean()-Z 

[64] fBodyGyro-std()-X 

[65] fBodyGyro-std()-Y 

[66] fBodyGyro-std()-Z 

[67] fBodyGyro-meanFreq()-X 

[68] fBodyGyro-meanFreq()-Y 

[69] fBodyGyro-meanFreq()-Z 

[70] fBodyAccMag-mean() 

[71] fBodyAccMag-std() 

[72] fBodyAccMag-meanFreq() 

[73] fBodyBodyAccJerkMag-mean() 

[74] fBodyBodyAccJerkMag-std() 

[75] fBodyBodyAccJerkMag-meanFreq() 

[76] fBodyBodyGyroMag-mean() 

[77] fBodyBodyGyroMag-std() 

[78] fBodyBodyGyroMag-meanFreq() 

[79] fBodyBodyGyroJerkMag-mean() 

[80] fBodyBodyGyroJerkMag-std() 

[81] fBodyBodyGyroJerkMag-meanFreq() 

[82] angle(tBodyAccMean,gravity) 

[83] angle(tBodyAccJerkMean),gravityMean)

[84] angle(tBodyGyroMean,gravityMean) 

[85] angle(tBodyGyroJerkMean,gravityMean)

[86] angle(X,gravityMean) 

[87] angle(Y,gravityMean) 

[88] angle(Z,gravityMean)