# CodeBook

## Study Design
##### Experimental design and background:
This sample is based on the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), where they collected data from the accelerometers of the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

##### Raw data:
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
======================================

You can find more information about the original experiment/raw data in the link above. 

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

