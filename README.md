
Assignment for Getting and Cleaning Data Course 
-----------------------------------------------

1. The code for the assignment is the Run_analysis.R file


2. The code is numbered and each line contains an explanation (after the #) of all the procedures in an orderly manner so its easy to follow what is being done and how the results were achieved. Steps are as follows:

  Step 1 loads all the relevant data and assigns names to each.

  Step 2 creates a complete data frame for training data

  Step 3 creates a complete data frame for test data

  Step 4 joins teste and training data frames in to one data frame called dfall

  Step 5 extracts and stores the means and standard deviation for each variable from dfall

  Step 6 creates tidy data set dftidy with average of each variable for each activity and each subject


3. CODE BOOK

 Although the code contains all the specific names and , the key objects for the assignment are:

  dftr : training data frame
  
  dfts : test data frame
  
  dfall : joint data frame with all data (i.e. test and training data)

  dfms : data frame containing only measurements of mean and standard deviation for each measurement
  
  dftidy : data frame containing average of each variable for each activity and each subject.


4. Original variable names are preserved throughout the assignment, with the exception of subjects and activity which are given the names "Subject" and "Activity"" respectively.

5. Original data downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


