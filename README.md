# coursera-getdata-project
This repo contains the code for Getting and Cleaning Data project at Coursera

## Reading theuploaded tidy dataset for evaluation
You have two to read the final tidy dataset, with is listed bellow.
I recomend the method #1, but you are free to do the #2

1. Run this code on R:
..+This code will download the .txt file from web, read it and open a view of it

```R
address <- "http://s3.amazonaws.com/coursera-uploads/user-84fdf7cf6f9e2bb6bf6fdf14/973499/asst-3/3dbaf7a0cf6411e4acbab19e5f79ee5b.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE) #if they used some other way of saving the file than a default write.table, this step will be different
View(data)
```

2. Put the file that you download in the review assigment page in your working directory and read it
..+__RENAME__ the _filename.txt__ to match the correct file name in your working directory

```R
data <- read.table("filename.txt", header = TRUE)
View(data)
```