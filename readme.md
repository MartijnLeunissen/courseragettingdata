## Getting and Cleaning Data - Readme

This is my entry for the Peer assessment course project for "Getting and Cleaning Data" offered by coursera

The only R script included in this repository is run_analysis.R

Running this script will download the raw data file in the current working directory if it is not already available in the workin directory. 
Subsequently it will unzip the archive, read & clean the data and write out a tidy data set out to tidy.txt

The codebook describing the tidy data set is available as codebook.md

# Cleaning up steps executed by the script

The following steps have been followed to create the tidy data set:

1. Activity labels are obtained from activity_labels
2. Feature names are obtained from features
3. Subject, measurement and activity information for the test set is obtained from subject_test, x_test and y_test files
4. Subject, measurement and activity information for the training set is obtained from subject_training, x_training and y_training files
5. The subject, measurement and activity information is merged across the data sets
6. The column names are assigned to the merged data sets, in the case of measurements these are taken from the feature names from step 2.
7. The measurement data is filtered to only retain columns concerning the mean and standard deviation measurements
	 This is done using a filter on the feature names. Only features containing 'std(' or 'mean(' are retained.
8. The subject, filtered measurement and activity information data sets are merged
9. The data is aggregated based on subject and activity
10. The activity ids are replaced by the activity names based on step 1.



