# CodeBook

_Some information provided bellow are from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) which is the site of the original experiment/raw data._

## Study Design
##### Experimental design and background:
This sample is based on the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), where they collected data from the accelerometers of the Samsung Galaxy S smartphone. The original experiment have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

##### Raw data:
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

You can find more information about the original experiment/raw data at [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) website. 

##### Processed data:
The project goal, was to create a tidy dataset based on the raw data, containing the mean for some observations and variables grouped by Activity and Subject (Volunteer), extracting only the measurements on the mean and standard deviation for each measurement of the raw data for further analysis.

After reading the original dataset documentation, I filtered only the variables that contains the exact "mean()" or "std()" string in it's name. Other variables, containing strings like -meanFreq()- were not considered since they were outside of the project scope. 

The general principles of tidy data are:
	* Each variable you measure should be in one column
	* Each different observation of that variable should be in a different row
	* There should be one table for each "kind" of variable
	* If you have multiple tables, they should include a column in the table that allows them to be linked
	* Some other important tips:
		* Include a row at the top of each file with variable names.
		* Variables should have human readable names
		* In general data should be saved in one file per table.

When you run the script, you will have a tidy dataset containing one table with 180 observations(rows) and 68 variables(columns), with human readable variable names, each measurement in a diferent column and each observation in a diferent row. With matches the tidy principle.

Information about how I process the data and the script instructions are in the [ReadMe file](https://github.com/ibombonato/coursera-getdata-project).

## Code book
"Activity" - Shows the activity that the subject was performing: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
"Subject" - The volunteer of the measurements

The other variables, are almost self descriptive, and __their values in this tidy dataset are the mean of all the observations in the raw dataset, grouped by Activity and Subject.__

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals Accelerometer-XYZ and Gyroscope-XYZ. These time domain signals (prefix 'Time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMag, ...). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

"TimeBodyAccelerometer.MeanOf.X"                         
"TimeBodyAccelerometer.MeanOf.Y"                         
"TimeBodyAccelerometer.MeanOf.Z"                         
"TimeGravityAccelerometer.MeanOf.X"                      
"TimeGravityAccelerometer.MeanOf.Y"                      
"TimeGravityAccelerometer.MeanOf.Z"                      
"TimeBodyAccelerometerJerk.MeanOf.X"                     
"TimeBodyAccelerometerJerk.MeanOf.Y"                     
"TimeBodyAccelerometerJerk.MeanOf.Z"                     
"TimeBodyGyroscope.MeanOf.X"                             
"TimeBodyGyroscope.MeanOf.Y"                             
"TimeBodyGyroscope.MeanOf.Z"                             
"TimeBodyGyroscopeJerk.MeanOf.X"                         
"TimeBodyGyroscopeJerk.MeanOf.Y"                         
"TimeBodyGyroscopeJerk.MeanOf.Z"                         
"TimeBodyAccelerometerMag.Mean"                          
"TimeGravityAccelerometerMag.Mean"                       
"TimeBodyAccelerometerJerkMag.Mean"                      
"TimeBodyGyroscopeMag.Mean"                              
"TimeBodyGyroscopeJerkMag.Mean"                          
"FrequencyBodyAccelerometer.MeanOf.X"                    
"FrequencyBodyAccelerometer.MeanOf.Y"                    
"FrequencyBodyAccelerometer.MeanOf.Z"                    
"FrequencyBodyAccelerometerJerk.MeanOf.X"                
"FrequencyBodyAccelerometerJerk.MeanOf.Y"                
"FrequencyBodyAccelerometerJerk.MeanOf.Z"                
"FrequencyBodyGyroscope.MeanOf.X"                        
"FrequencyBodyGyroscope.MeanOf.Y"                        
"FrequencyBodyGyroscope.MeanOf.Z"                        
"FrequencyBodyAccelerometerMag.Mean"                     
"FrequencyBodyBodyAccelerometerJerkMag.Mean"             
"FrequencyBodyBodyGyroscopeMag.Mean"                     
"FrequencyBodyBodyGyroscopeJerkMag.Mean"                 
"TimeBodyAccelerometer.StandardDeviationOf.X"            
"TimeBodyAccelerometer.StandardDeviationOf.Y"            
"TimeBodyAccelerometer.StandardDeviationOf.Z"            
"TimeGravityAccelerometer.StandardDeviationOf.X"         
"TimeGravityAccelerometer.StandardDeviationOf.Y"         
"TimeGravityAccelerometer.StandardDeviationOf.Z"         
"TimeBodyAccelerometerJerk.StandardDeviationOf.X"        
"TimeBodyAccelerometerJerk.StandardDeviationOf.Y"        
"TimeBodyAccelerometerJerk.StandardDeviationOf.Z"        
"TimeBodyGyroscope.StandardDeviationOf.X"                
"TimeBodyGyroscope.StandardDeviationOf.Y"                
"TimeBodyGyroscope.StandardDeviationOf.Z"                
"TimeBodyGyroscopeJerk.StandardDeviationOf.X"            
"TimeBodyGyroscopeJerk.StandardDeviationOf.Y"            
"TimeBodyGyroscopeJerk.StandardDeviationOf.Z"            
"TimeBodyAccelerometerMag.StandardDeviation"             
"TimeGravityAccelerometerMag.StandardDeviation"          
"TimeBodyAccelerometerJerkMag.StandardDeviation"         
"TimeBodyGyroscopeMag.StandardDeviation"                 
"TimeBodyGyroscopeJerkMag.StandardDeviation"             
"FrequencyBodyAccelerometer.StandardDeviationOf.X"       
"FrequencyBodyAccelerometer.StandardDeviationOf.Y"       
"FrequencyBodyAccelerometer.StandardDeviationOf.Z"       
"FrequencyBodyAccelerometerJerk.StandardDeviationOf.X"   
"FrequencyBodyAccelerometerJerk.StandardDeviationOf.Y"   
"FrequencyBodyAccelerometerJerk.StandardDeviationOf.Z"   
"FrequencyBodyGyroscope.StandardDeviationOf.X"           
"FrequencyBodyGyroscope.StandardDeviationOf.Y"           
"FrequencyBodyGyroscope.StandardDeviationOf.Z"           
"FrequencyBodyAccelerometerMag.StandardDeviation"        
"FrequencyBodyBodyAccelerometerJerkMag.StandardDeviation"
"FrequencyBodyBodyGyroscopeMag.StandardDeviation"        
"FrequencyBodyBodyGyroscopeJerkMag.StandardDeviation"    
