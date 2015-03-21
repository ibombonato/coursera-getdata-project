# Coursera Getting and Cleaning Data Project
This readme contains the instructions that the peer review needs to follow, to be able to read and reproduce the steps of the project.  
The final tidy dataset have 180 observations(rows) and 68 variables(columns).  
The CodeBook are inside this repository, in a file called __CodeBook.md__. It contains details about the dataset and it's variables.  
You need and internet connection to run the analysis the easier way. Although, you can run it offline if you have the dataset properly downloaded and extracted in the right folder and also the dplyr package installed, but this is not recommended.

## Reading the uploaded tidy dataset for evaluation
You have two ways to read the final tidy dataset that was uploaded on the project submission, witch is listed bellow. __I recomend the method #1__ because its easier, but you are free to do the #2.

##### Method #1 Run this code on R:
This code will download the .txt file submitted in coursera project from the web, read it and open a view of it on R.

```R
address <- "http://s3.amazonaws.com/coursera-uploads/user-84fdf7cf6f9e2bb6bf6fdf14/973499/asst-3/3dbaf7a0cf6411e4acbab19e5f79ee5b.txt"
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
For all 3 methods, certify that you have the "dplyr" package installed on R. If you do not have it, or if you dont have sure, please, run this code before continue:
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
getTidyData(skipDownload = FALSE){
	...Some code inside...
	Lines 4 to 97
}
```
The __getTidyData__ function is the main function of this analysis. It will download the dataset from web, 
unzip it, process the data and return a data.frame whitin the tidy dataset asked in the project.
The skipDownload parameter, witch is set to FALSE as default, should only be changed to TRUE, if you have any problemn when running the function with the default parameters, or if you do not have an internet connection, but already have the dataset and dplyr package installed in your computer.  
For this method work, you need to have the project dataset extrated in your working directory, inside a folder called "UCI HAR Dataset"
This folder should have the files inside of it.  
__If the step above was done incorrectly, the script will not work!__
```R
# This function will write a file called "projectTidy.txt" in your working directory
writeTidyData(){
	...Some code inside...
	Lines 102 to 105
}
```			
```R
# This function will read the file "projectTidy.txt" in your working directory and open a view of it. So you can view the data.
readTidyData(){
	...Some code inside...
	Lines 110 to 115
}
```	
	4. You should run the code block for all three function to create the functions in the R environment.
	5. Run the code at line #118 to generate a variable called "tidyData" that will contains the tidy dataset
```R
tidyData <- getTidyData(FALSE);
```	
	6. Run the code at line #121 to write the dataset to disk in a file called "projectTidy.txt"
```R
writeTidyData(tidyData);
```	
	7. Run the code at line #124 to read the "projectTidy.txt" on the disk, assign it to a variable called "data" and show a view of it on R.
```R
data <- readTidyData();
```	
You are done!  
