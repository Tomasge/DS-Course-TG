### GETTING & CLEANING DATA FINAL ASSIGNEMENT
# Created by TGE July 20, 2017
#######################################################################

# 1. Load relevant data

      trn <- read.table("X_train.txt") # Load train measurement data
      tr_act <- read.table("Y_train.txt") # Load train activity identifier data
      tr_sub <- read.table("subject_train.txt") # Load train subject identifier data
      
      tst <- read.table("X_test.txt") # Load test measurement data
      ts_act <- read.table("Y_test.txt") # Load test activity identifier data
      ts_sub <- read.table("subject_test.txt") # Load test subject identifier data
      
      actlab <- read.table("activity_labels.txt") # Load activity labels data
      vnames <- read.table("features.txt") # Load measured variables names


      
# 2. Create TRAINING data frame

      trn <- setNames(trn, vnames$V2) # Name variables in test data
      dftr <- cbind(tr_sub, tr_act, trn) # create data frame with subjects, activity and measured data
      colnames(dftr)[1] <- "Subject" # name column with subject data
      colnames(dftr)[2] <- "Activity" # name column with activity data
      
      dftr$Activity <- as.factor(dftr$Activity) # convert activity to factors
      levels(dftr$Activity)[c(1:6)] <- c( as.vector( actlab$V2 ) ) # Change levels to descriptive names
      
            
 # 3. Create TEST dataframe
      
      tst <- setNames(tst, vnames$V2) # Name variables in test data
      dfts <- cbind(ts_sub, ts_act, tst) # create data frame with subjects, activity and measured data
      colnames(dfts)[1] <- "Subject" # name column with subject data
      colnames(dfts)[2] <- "Activity" # name column with activity data
      
      dfts$Activity <- as.factor(dfts$Activity) # convert activity to factors
      levels(dfts$Activity)[c(1:6)] <- c( as.vector( actlab$V2 ) ) # Change levels to descriptive names

      
      
 # 4. Join the two dataframes   
      
      dfall <- rbind(dfts, dftr) # Join the two dataframes

      
 # 5. Extract the means and standard deviation for each variable from joint dataframe
      means <- apply(dfall[, 3:563], 2, function(x) mean(x, na.rm=TRUE) ) # Calculate means
      #head(means) # print means
      stdev <- apply(dfall[, 3:563], 2, function(x) sd(x, na.rm=TRUE) ) # Calculate standard deviations
      #stdev # print standard deviations

      
# 6. Creates tidy data set with the average of each variable for each activity and each subject
      
      dfmelt <- melt(dfall, id = c("Subject", "Activity"), measure.vars = c(names(dfall)[3:563])) #puts data in long format
      dftidy <- dcast(dfmelt, Subject + Activity ~ variable, mean) # recast data into dataframe with average of each variable for each activity and each subject


      