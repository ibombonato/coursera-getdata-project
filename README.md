# Coursera Getting and Cleaning Data Project
This readme contains the instructions that the peer review needs to follow, to be able to read and reproduce the steps of the project.
It also conatins some information about the project and the CodeBook.

### Reading the uploaded tidy dataset for evaluation
You have two ways to read the final tidy dataset that was uploaded on the project submission, witch is listed bellow.  
__I recomend the method #1__ because its easyer, but you are free to do the #2.

##### #1 Run this code on R:
This code will download the .txt file from web, read it and open a view of it on R.

```R
address <- "http://s3.amazonaws.com/coursera-uploads/user-84fdf7cf6f9e2bb6bf6fdf14/973499/asst-3/3dbaf7a0cf6411e4acbab19e5f79ee5b.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE)
View(data)
```

##### #2 Put the file that you download in the review assigment page in your working directory and read it
__RENAME__ the _filename.txt_ to match the correct file name in your working directory.
This code will read the file and open a view of it on R.

```R
data <- read.table("filename.txt", header = TRUE)
View(data)
```

### Running the run_analysis.R to reproduce the steps