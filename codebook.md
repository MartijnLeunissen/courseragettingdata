## Getting and Cleaning Data - Course Project CodeBook

# Source Experiment & Data Set

The experiment & data set are described in detailed at the following location:

Human Activity Recognition Using Smartphones Data Set

[a] http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Original Data Set Information
The following data set information is available at [a]:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Further information can be found at [a]

# Tidy Data Set Information

The tidy data set consists of 180 rows and 68 columns

# Column description

	[1] Subject
		The id of the subject performing the experiment ranging from 1 to 30
	[2] Activity
		Name of the activity performed by the subject
		Full list of the activities:
			WALKING
			WALKING_UPSTAIRS
			WALKING_DOWNSTAIRS
			SITTING
			STANDING
			LAYING     

	The remaining columns contains the average of the measured mean and standard devation values
	Note that the meanFreq columns are explicitly not included in the tidy dataset, because they are a weighted average
	

	For a more detailed description of these columns please find the content of the features_info.txt file within the full data set, which can be retrieved at [a] below:

>	Feature Selection 
>	=================
>	
>	The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain >	signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low >	pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and >	gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>	
>	Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk->	XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, >	tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>	
>	Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, >	fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>	
>	These signals were used to estimate variables of the feature vector for each pattern:  
>	'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>	
>	tBodyAcc-XYZ
>	tGravityAcc-XYZ
>	tBodyAccJerk-XYZ
>	tBodyGyro-XYZ
>	tBodyGyroJerk-XYZ
>	tBodyAccMag
>	tGravityAccMag
>	tBodyAccJerkMag
>	tBodyGyroMag
>	tBodyGyroJerkMag
>	fBodyAcc-XYZ
>	fBodyAccJerk-XYZ
>	fBodyGyro-XYZ
>	fBodyAccMag
>	fBodyAccJerkMag
>	fBodyGyroMag
>	fBodyGyroJerkMag
>	
>	The set of variables that were estimated from these signals are: 
>	
>	mean(): Mean value
>	std(): Standard deviation
>	mad(): Median absolute deviation 
>	max(): Largest value in array
>	min(): Smallest value in array
>	sma(): Signal magnitude area
>	energy(): Energy measure. Sum of the squares divided by the number of values. 
>	iqr(): Interquartile range 
>	entropy(): Signal entropy
>	arCoeff(): Autorregresion coefficients with Burg order equal to 4
>	correlation(): correlation coefficient between two signals
>	maxInds(): index of the frequency component with largest magnitude
>	meanFreq(): Weighted average of the frequency components to obtain a mean frequency
>	skewness(): skewness of the frequency domain signal 
>	kurtosis(): kurtosis of the frequency domain signal 
>	bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
>	angle(): Angle between to vectors.
>	
>	Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
>	
>	gravityMean
>	tBodyAccMean
>	tBodyAccJerkMean
>	tBodyGyroMean
>	tBodyGyroJerkMean

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
	[49] fBodyAccJerk-mean()-X
	[50] fBodyAccJerk-mean()-Y
	[51] fBodyAccJerk-mean()-Z
	[52] fBodyAccJerk-std()-X
	[53] fBodyAccJerk-std()-Y
	[54] fBodyAccJerk-std()-Z
	[55] fBodyGyro-mean()-X
	[56] fBodyGyro-mean()-Y
	[57] fBodyGyro-mean()-Z
	[58] fBodyGyro-std()-X
	[59] fBodyGyro-std()-Y
	[60] fBodyGyro-std()-Z
	[61] fBodyAccMag-mean()
	[62] fBodyAccMag-std()
	[63] fBodyBodyAccJerkMag-mean()
	[64] fBodyBodyAccJerkMag-std()
	[65] fBodyBodyGyroMag-mean()
	[66] fBodyBodyGyroMag-std()
	[67] fBodyBodyGyroJerkMag-mean()
	[68] fBodyBodyGyroJerkMag-std()	

# Row Description

Each row contains the measurement for one subject for one specific experiment.
Each subject (30) performed all the experiment (6) to gather a total of 180 rows of data

# Cleaning up / Tidy Data Recipe

The following steps have been followed to create the tidy data set:

1. Activity labels are obtained from activity_labels
2. Feature names are obtained from features
3. Subject, measurement and activity information for the test set is obtained from subject_test, x_test and y_test files
4. Subject, measurement and activity information for the training set is obtained from subject_training, x_training and y_training files
5. The subject, measurement and activity information is merged across the data sets
6. The column names are assigned to the merged data sets, in the case of features based on [2]
7. The measurement data is filtered to only retain columns concerning the mean and standard deviation measurements
	 This is done using a filter on the feature names
8. The subject, filtered measurement and activity information data sets are merged
9. The data is aggregated based on subject and activity
10. The activity ids are replaced by the activity names
