## Download raw data file in case it is not available in the current working directory

#Check if file exist in current directory
if (!file.exists('./getdata-projectfiles-UCI HAR Dataset.zip')) {
  
  #if file does not exist already in directly download from the internet
  file.url<-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  download.file(file.url,destfile='./getdata-projectfiles-UCI HAR Dataset.zip')
  
  #unzip file
  
}

# Unzip data archive
unzip('././getdata-projectfiles-UCI HAR Dataset.zip',overwrite=TRUE)
# Files are now available for reading

# Read all the relevant data files
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')
features <- read.table('./UCI HAR Dataset/features.txt', header=FALSE)

test_subject <- read.table('./UCI HAR Dataset/test/subject_test.txt',header=FALSE)
test_x <- read.table('./UCI HAR Dataset/test/x_test.txt',header=FALSE)
test_y <- read.table('./UCI HAR Dataset/test/y_test.txt',header=FALSE)

train_subject <- read.table('./UCI HAR Dataset/train/subject_train.txt',header=FALSE)
train_x <- read.table('./UCI HAR Dataset/train/x_train.txt',header=FALSE)
train_y <- read.table('./UCI HAR Dataset/train/y_train.txt',header=FALSE)

# Get the colums that either contain mean or standard deviation values
# identified by containing either 'mean' or 'std'
filter <- grep('mean[(]|std[(]',features$V2)

# Combine data from the test and training sets
subject <- rbind(test_subject,train_subject)
x <- rbind(test_x,train_x)
y <- rbind(test_y,train_y)

# Provide the combined data with descriptive names
names(subject) <- "subject"
names(x) <- features$V2
names(y) <- "activity"

# Filter the combined data to only include standard deviation or mean values
x_filtered <- x[,filter]
names(x_filtered)
# Combine subjects, activites and measurements
clean <- cbind(subject, y, x_filtered)

# Create an independent tidy data set with the average of each variable for each activity and each subject
# Step 1: Set average for each activity and each subject
tidy <- aggregate(
  clean[3:ncol(clean)],
  by=list(
    subject = clean$subject,
    activity = clean$activity
  ),
  FUN=mean
)
# Step 2: Replace the activity id with the activity names
tidy$activity <- activity_labels[tidy$activity,'V2']
# The tidy data set is now complete

# Write the tidy data set out to tidy.txt 
write.table(tidy, file='tidy.txt', row.names=FALSE)