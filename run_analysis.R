#########################################################################
# Function for getting the tidy data from the UCI datasets
#########################################################################
getTidyData <- function(){

    # Requiring dplyr package
    # If you got and error here, you should install the dplyr package with command:
    # install.packages("dplyr")
    
    library(dplyr)

    # Download and unzip the files from web unless you choose to skip it
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    fileName <- "project.zip"
    message("Downloading ziped dataset...")
    download.file(fileUrl, fileName)
    message("Unzipping the file...")
    unzip(fileName)
    
    
    message("Reading the data...")
    
    #Setting the data folder
    datafolder <- "UCI HAR Dataset"
        
    # Read train and tests datasets
    x_test <- read.table(paste("./",datafolder,"/test/X_test.txt", sep = ""))
    y_test <- read.table(paste("./",datafolder,"/test/y_test.txt", sep = ""))
    x_train <- read.table(paste("./",datafolder,"/train/X_train.txt", sep = ""))
    y_train <- read.table(paste("./",datafolder,"/train/y_train.txt", sep = ""))
    
    # Read features and subject datasets
    features <- read.table(paste("./",datafolder,"/features.txt", sep = ""))
    subject_test <- read.table(paste("./",datafolder,"/test/subject_test.txt", sep = ""))
    subject_train <- read.table(paste("./",datafolder,"/train/subject_train.txt", sep = ""))
    
    message("Processing the data...")

        # Combine the train and tests dataset of Smartphone data
    x_merged <- rbind(x_test, x_train)
    # Combine datasets of Activity data
    y_merged <- rbind(y_test, y_train)
    # Combine datasets of Subjects (Volunteers)
    subject_merged <- rbind(subject_test, subject_train)
    
    # Filter only data of features that calculates the mean() or std(), not counting the meanFreq
    meanFeatures <- dplyr::filter(features, grepl("mean()",V2, fixed = TRUE))
    stdFeatures <- dplyr::filter(features, grepl("std()",V2, fixed = TRUE))
    
    # Combine the features of interest
    projectFeatures <- rbind(meanFeatures, stdFeatures)
    
    # Filtering only the features of interest data from Smarthone data
    x_measurements <- x_merged[,projectFeatures[["V1"]]]
    
    # Rename Activity column
    names(y_merged) <- c("Activity")
    
    # Create a factor for Activities data
    y_factor <- factor(y_merged[["Activity"]], 
                       levels = 1:6
                       , labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
    
    # Rename columns with names from features
    names(x_measurements) <- projectFeatures[["V2"]]
    names(subject_merged) <- c("Subject")
    
    # Combining all 3 data of interest. Smartphone, Activy and Subject
    df <- cbind(x_measurements, y_factor, subject_merged)
    df <- rename(df, Activity = y_factor)
    
    # Group data by Acitivy and Subject
    by_ActivityAndSubject <- dplyr::group_by(df, Activity, Subject)
    # Summarize the grouped data
    summaryByActivityAndSubject <- by_ActivityAndSubject %>% dplyr::summarise_each(funs(mean))
    
    # Function to get a more readable column name
    prettyName <- function(x){
        x <- gsub("^t", "Time",x)
        x <- gsub("^f", "Frequency",x)
        x <- gsub("Acc", "Accelerometer", x)
        x <- gsub("Gyro", "Gyroscope", x)
        x <- gsub("std\\(\\)", "StandardDeviation", x)
        x <- gsub("mean\\(\\)", "Mean", x)
        x <- gsub("-X$", "Of-X", x)
        x <- gsub("-Y$", "Of-Y", x)
        x <- gsub("-Z$", "Of-Z", x)
        as.character(x)
    }
    
    # Rename columns with a more readable name
    names(summaryByActivityAndSubject) <- sapply(names(summaryByActivityAndSubject), FUN = prettyName, USE.NAMES = TRUE)
    
    message("Ending data processing and returning the generated data")
    # Return the tidy summary without print it to the console
    invisible(summaryByActivityAndSubject)
}

#########################################################################
# Function for writting the tidy data to disk
#########################################################################
writeTidyData <- function(data){
    message("Writting projectTidy.txt on the disk...")
    write.table(data, file = "projectTidy.txt", row.names = FALSE)
}

#########################################################################
# Function for read, return and show the tidy data from the disk
#########################################################################
readTidyDataFromDisk <- function(){
    message("Reading projectTidy.txt and open a view of it.")
    data <- read.table("projectTidy.txt", header = TRUE)
    View(data)
    invisible(data)
}

# Creating and getting the tidy data from the datasets
tidyData <- getTidyData();

# Writting the data to disk
writeTidyData(tidyData);

# Reading the data from the disk
data <- readTidyDataFromDisk();

message("Done.")