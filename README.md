# coursera-getdata-project
This repo contains the code for Getting and Cleaning Data project at Coursera

## Reading the tidy dataset for evaluation
To read the uploaded tidydata set, you can use the code bellow:

```R
address <- "https://s3.amazonaws.com/coursera-uploads/user-84fdf7cf6f9e2bb6bf6fdf14/973499/asst-3/3dbaf7a0cf6411e4acbab19e5f79ee5b.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE) #if they used some other way of saving the file than a default write.table, this step will be different
View(data)
```