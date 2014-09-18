# SECTION 1
# Clean and merge Data Sets

# load plyr to use join() function
# join() preserves data.frames order
library(plyr)

# Read the FEATURES file and rename variables
features <- read.table('features.txt')
colnames(features)[1] <- "Feature.Id"
colnames(features)[2] <- "Feature"

# Read the ACTIVITY_LABELS file and rename variables
activities <- read.table('activity_labels.txt')
colnames(activities)[1] <- "Activity.Id"
colnames(activities)[2] <- "Activity"

# Read the TRAIN files
X_train <- read.table('train/X_train.txt')
y_train <- read.table('train/y_train.txt')
sub_train <- read.table('train/subject_train.txt')

# Read the TEST files
X_test <- read.table('test/X_test.txt')
y_test <- read.table('test/y_test.txt')
sub_test <- read.table('test/subject_test.txt')

# FEATURES
# Rename the variable names of X_train
names(X_train) <- features$Feature
# Rename the variable names of X_test
names(X_test) <- features$Feature
# Release objets to free memory
rm(features)

# Rename the variable names of the SUBJECT files
colnames(sub_train)[1] <- "Subject.Id"
colnames(sub_test)[1] <- "Subject.Id"

# Rename the variable names of the ACTIVITY files
colnames(y_train)[1] <- "Activity.Id"
colnames(y_test)[1] <- "Activity.Id"

# TRAIN data
# Append Activity Name and rename variable
act_train <- join(y_train,activities)
X_train <- cbind(act_train$Activity, X_train)
colnames(X_train)[1] <- "Activity"
# Append Subject Id
X_train <- cbind(sub_train, X_train)

# TEST data
# Append Activity Name and rename variable
act_test <- join(y_test,activities)
X_test <- cbind(act_test$Activity, X_test)
colnames(X_test)[1] <- "Activity"
# Append Subject Id 
X_test <- cbind(sub_test, X_test)

# Merge both TRAIN and TEST data sets
merge <- rbind(X_train,X_test)

# Release objets to free memory
rm(activities)
rm(X_train)
rm(y_train)
rm(sub_train)
rm(act_train)
rm(X_test)
rm(y_test)
rm(sub_test)
rm(act_test)

# Filtering Columns
namesMerge <- names(merge)
# Columns with 'mean'
columnsMean <- grepl("mean", namesMerge) | grepl("Mean", namesMerge)
# Columns with 'std'
columnsStd <- grepl("std", namesMerge)
# Filter Merge with these columns
merge <- cbind(merge[,c("Subject.Id","Activity")], merge[,columnsMean | columnsStd])

# Release objets to free memory
rm(columnsMean)
rm(columnsStd)
rm(namesMerge)

# SECTION 2
# Create an independent tidy data set with the average of each variable for each Subject and each Activity

# For functions melt() and dcast()
library(reshape2)

# For functions ddply()
library(plyr)

# Convert to LONG DATA
merge1 <- melt(merge, id=c("Subject.Id","Activity"))
# Calculate Means
merge2 <- ddply(merge1, .(Subject.Id,Activity,variable), summarize, mean=mean(value))
# Convert to WIDE DATA
final  <- dcast(merge2, Subject.Id + Activity ~ variable, value.var="mean")

# Release objets to free memory
rm(merge1)
rm(merge2)
rm(merge)

# Save final results
#write.table(final,file="final.txt",row.name=FALSE)
#rm(final)

# Hint to read the data
#data <- read.table("final.txt", header = TRUE)
#View(data)