# Getting and Cleaning Data Course Project:

The project uses the HAR using smartphones dataset from accelerometer and gryrscope on Samsung Galaxy S and tidies and summarizes it according to subject and activity for each mean and standard devation feature.

## Included Files:

-   `run_analysis.R` — Script that reads the data and metadata, cleans the data, and caculates the mean for each subject and activity.
-   `tidy_data.csv` — The tidy data set output by the "run_analysis.R" script.
-   `CodeBook.md` — Markdown file describing the data, variables, and tidying steps

## Running the Script:

1.  Download the HAR dataset (link below).
2.  Extract the contents and place the unzipped data in the working directory (make sure it is in a sub-folder UCI HAR Dataset).\
3.  Run the script `run_analysis.R` using R or RStudio.
4.  See output in "tidy_data.csv".

## Data Source:

[HAR Using Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)