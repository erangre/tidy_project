library(dplyr)

# Create data tables for the features and the activities according to the docs
df_features <- read.table("UCI HAR Dataset/features.txt",
                          col.names = c("feature_id", "feature_name"))
df_activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names =
                              c("activity_code", "activity_name"))

# Get the training data: subjects, activity and feature data.
# subject is the ID performing the activity in y for all features in x
# in df_x columns are the features, and rows are the activities
df_subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",
                               col.names = "subject_id")
df_x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names =
                           df_features$feature_name)
df_y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names =
                           "activity_code")

# Get the test data: subjects, activity and feature data.
df_subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",
                              col.names = "subject_id")
df_x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names =
                          df_features$feature_name)
df_y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names =
                          "activity_code")

# combine the test and training data
df_subject <- rbind(df_subject_train, df_subject_test)
df_x <- rbind(df_x_train, df_x_test)
df_y <- rbind(df_y_train, df_y_test)
df_merged_data <- cbind(df_subject, df_y, df_x)

# Select only columns that report the mean and std for each measurement.
# 88 out of 561 features.
only_mean_and_sd <- select(df_merged_data, subject_id, activity_code, 
                           contains("mean"), contains("std"))

# Add activity names as a column
only_mean_and_sd <- merge(only_mean_and_sd, df_activities, by = "activity_code")
# Arrange columns
only_mean_and_sd <- select(only_mean_and_sd,subject_id, activity_code,
                           activity_name, everything())

# Group by subject ID and Activity
df_grouped <- group_by(only_mean_and_sd, subject_id, activity_name)

# Get the mean for each subject and activity:
df_final <- summarise_all(df_grouped, mean)


write.table(df_final, "tidy_data.csv", row.name = FALSE)