
Assignment for Getting and Cleaning Data Course 
-----------------------------------------------

1. The code for the assignment is in the Run_analysis.R file


2. The code is numbered and each line contains an explanation (after the #) of all the procedures in an orderly manner so its easy to follow what is being done and how the results were achieved. Steps are as follows:

  Step 1 loads all the relevant data and assigns names to each.

  Step 2 creates a complete data frame for training data

  Step 3 creates a complete data frame for test data

  Step 4 joins teste and training data frames in to one data frame called dfall

  Step 5 extracts and stores the means and standard deviation for each variable from dfall

  Step 6 creates tidy data set dftidy with average of each variable for each activity and each subject


3. Although the code contains the names given to each object, the key objects are for the assignment are:

  dftr : training data frame
  
  dfts : test data frame
  
  dfall : joint data frame with all data (i.e. test and training data)
   
  means : data frame containing means of each variable

  stdev : data frame containing standard deviation for all variables

  dftidy : data frame containing average of each variable for each activity and each subject.


4. Original variable names are preserved throughout the assignment, with the exception of subjects and activity which a re given the names ?Subject? and ?Activity? respectively.


