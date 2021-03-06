# Coursera Getting and Cleaning Data Project
This readme contains the instructions that the peer review needs to follow, to be able to read and reproduce the steps of the project.  
The final tidy dataset have 180 observations(rows) and 68 variables(columns).  
The CodeBook are inside this repository, in a file called [CodeBook.md](https://github.com/ibombonato/coursera-getdata-project/blob/master/CodeBook.md). It contains details about the dataset, it's variables and the experimental design.  
You need and internet connection to run the analysis the easier way. Although, you can run it offline if you have the dataset properly downloaded and extracted in the right folder and also the dplyr package installed if you follow the instructions exactly, but this is not recommended.

## Reading the uploaded tidy dataset for evaluation
You have two ways to read the final tidy dataset that was uploaded on the project submission, witch is listed bellow. __I recomend the method #1__ because its easier, but you are free to do the #2.
* All code was created and tested using R version 3.1.3 *

##### Method #1 Run this code on R:
This code will download the .txt file submitted in coursera project from the web, read it and open a view of it on R.

```R
address <- "http://s3.amazonaws.com/coursera-uploads/user-84fdf7cf6f9e2bb6bf6fdf14/973499/asst-3/f72d4690cf8f11e495547d68e2133ca7.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE)
View(data)
```

##### Method #2 Put the file that you download in the peer review page in your working directory and read it
__RENAME__ the **_filename.txt_** to match the correct file name in your working directory.
This code will read the file inside your working directory and open a view of it on R.

```R
data <- read.table("filename.txt", header = TRUE)
View(data)
```

## Running the run_analysis.R to reproduce the steps
You have three ways for run the analisys and get the tidy dataset. Method #1 is recomend, because you just need to run one line of code.  
For all 3 methods, certify that you have the "dplyr" package installed on R. If you do not have it, or if you dont have sure, please, run this code on R before continue:
```R
install.packages("dplyr")
```

##### __Method #1__ Single command run:
	1. Certify that you have an active internet connection
	2. Open and R console or RStudio and run the code bellow:
```R
source("http://rawgit.com/ibombonato/coursera-getdata-project/master/run_analysis.R")
```
You are done!  
A view from R should open with the tidy dataset for your analysis.  
To see what happens inside the script, read the [method #3](#method-3-run-the-script-manually) bellow.

##### __Method #2__ Run the script direct on your computer:
	1. Download and put the "run_analysis.R" in your working directory.
	2. Open and R console or RStudio
	3. Run the command bellow:
```R
source("run_analysis.R")
```
You are done!  
A view from R should open with the tidy dataset for your analysis.  
To see what happens inside the script, read the [method #3](#method-3-run-the-script-manually) bellow.

##### __Method #3__ Run the script "manually":
	1. Download and put the "run_analysis.R" in your working directory.
	2. Open the "run_analysis.R" file on R or RStudio
	3. This file contains 3 functions:
```R
getTidyData(){
	...Some code inside...
	Lines 4 to 97
}
```
The __getTidyData__ function is the main function of this analysis. It will download the dataset from web, 
unzip it, process the data and return a data.frame whitin the tidy dataset asked in the project.  

> *Disclaimer: If you have any problemn downloading the data, or if you do not have an internet connection, but already have the dataset and dplyr package installed in your computer, you can comment lines 13 to 18 and move on. For this method work, you need to have the project dataset extrated in your working directory, inside a folder called "UCI HAR Dataset"
> This folder should have the files inside of it.  
> __If this was done incorrectly, the script will not work!__*

```R
# This function will write a file called "projectTidy.txt" in your working directory
writeTidyData(){
	...Some code inside...
	Lines 102 to 105
}
```			
```R
# This function will read the file "projectTidy.txt" in your working directory and open a view of it. So you can view the data.
readTidyDataFromDisk(){
	...Some code inside...
	Lines 110 to 115
}
```	
	4. You should run the code block for all three function to create the functions in the R environment.
	5. Run the code at line #118 to generate a variable called "tidyData" that will contains the tidy dataset
```R
tidyData <- getTidyData();
```	
	6. Run the code at line #121 to write the dataset to disk in a file called "projectTidy.txt"
```R
writeTidyData(tidyData);
```	
	7. Run the code at line #124 to read the "projectTidy.txt" on the disk, assign it to a variable called "data" and show a view of it on R.
```R
data <- readTidyDataFromDisk();
```	
You are done!  

*Citation Request:  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.*