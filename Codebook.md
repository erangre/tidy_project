# CodeBook.md

## General Overview:

This data relies on data contains accelerometer and gyro measurements of Samsung Galaxy S smartphones.\
The original data was collected from 30 subjects performing 6 different activities.\
The present data is a tidy data set containing the average value of all mean and standard deviation features from the original data set, shown for each subject and activity.\

---

## Contained Files:

- **run_analysis.R** — loads data and metadata, tidies the data and outputs.
- **tidy_data.txt** — the output file, showing averages of the mean and std features.  

---

## tidy_data.txt Variables:

 subject_id:      an identifier for the volunteer\
 activity_name:   name of the activity taken from the original metadata\
 activity_code:   code used to identify the activity from the original data\
 rest of columns: Average of the sensor measurements reporting mean and std data.\
 
---

## Data handling:

1. Loaded data and metadata, adding column names to data from the metadata.\
2. Merged training and test data sets.\
3. Kept only mean and std features.\
4. created tidy data set with average values for each subect and activity.\
5. Exported the tidy data set to "tidy_data.csv".\

---

## Data Source:

[HAR Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)