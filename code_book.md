# GettingAndCleaningDataCourseProject
## Code book

This code book describes the data set provided with the submission (i.e. the analysis data). For reference the content of the README.txt file that came with the raw data is attached below.

The analysis data consists of 1 table. It is a summary of the complete data set from the original experiment. Each row represents an observation of an activity of a subject. The following columns are provided:

1. subject: id of the subject the activity was observed on; a value between 1 and 30
2. activity: the activity label assigned to the observation(s) of the respective subject; one of the following values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
3. avg_tBodyAcc-mean()-X4. avg_tBodyAcc-mean()-Y5. avg_tBodyAcc-mean()-Z6. avg_tBodyAcc-std()-X
7. avg_tBodyAcc-std()-Y
8. avg_tBodyAcc-std()-Z
9. avg_tGravityAcc-mean()-X
10. avg_tGravityAcc-mean()-Y
11. avg_tGravityAcc-mean()-Z
12. avg_tGravityAcc-std()-X
13. avg_tGravityAcc-std()-Y
14. avg_tGravityAcc-std()-Z
15. avg_tBodyAccJerk-mean()-X
16. avg_tBodyAccJerk-mean()-Y
17. avg_tBodyAccJerk-mean()-Z
18. avg_tBodyAccJerk-std()-X
19. avg_tBodyAccJerk-std()-Y
20. avg_tBodyAccJerk-std()-Z
21. avg_tBodyGyro-mean()-X
22. avg_tBodyGyro-mean()-Y
23. avg_tBodyGyro-mean()-Z
24. avg_tBodyGyro-std()-X
25. avg_tBodyGyro-std()-Y
26. avg_tBodyGyro-std()-Z
27. avg_tBodyGyroJerk-mean()-X
28. avg_tBodyGyroJerk-mean()-Y
29. avg_tBodyGyroJerk-mean()-Z
30. avg_tBodyGyroJerk-std()-X
31. avg_tBodyGyroJerk-std()-Y
32. avg_tBodyGyroJerk-std()-Z
33. avg_tBodyAccMag-mean()
34. avg_tBodyAccMag-std()
35. avg_tGravityAccMag-mean()
36. avg_tGravityAccMag-std()
37. avg_tBodyAccJerkMag-mean()
38. avg_tBodyAccJerkMag-std()
39. avg_tBodyGyroMag-mean()
40. avg_tBodyGyroMag-std()
41. avg_tBodyGyroJerkMag-mean()
42. avg_tBodyGyroJerkMag-std()
43. avg_fBodyAcc-mean()-X
44. avg_fBodyAcc-mean()-Y
45. avg_fBodyAcc-mean()-Z
46. avg_fBodyAcc-std()-X
47. avg_fBodyAcc-std()-Y
48. avg_fBodyAcc-std()-Z
49. avg_fBodyAccJerk-mean()-X
50. avg_fBodyAccJerk-mean()-Y
51. avg_fBodyAccJerk-mean()-Z
52. avg_fBodyAccJerk-std()-X
53. avg_fBodyAccJerk-std()-Y
54. avg_fBodyAccJerk-std()-Z
55. avg_fBodyGyro-mean()-X
56. avg_fBodyGyro-mean()-Y
57. avg_fBodyGyro-mean()-Z
58. avg_fBodyGyro-std()-X
59. avg_fBodyGyro-std()-Y
60. avg_fBodyGyro-std()-Z
61. avg_fBodyAccMag-mean()
62. avg_fBodyAccMag-std()
63. avg_fBodyBodyAccJerkMag-mean()
64. avg_fBodyBodyAccJerkMag-std()
65. avg_fBodyBodyGyroMag-mean()
66. avg_fBodyBodyGyroMag-std()
67. avg_fBodyBodyGyroJerkMag-mean()
68. avg_fBodyBodyGyroJerkMag-std()

Variables 3 to 68 represent averages of the respective measurements on the observations in the raw data, where several observations where made for an activitiy of a subject. To clarify: the term "observation" in the raw data refers to a measurements at a specific point in time, while "observation" in the analysis data refers to a set of measurements for the same subject and activity.

A description of the measurements ("features") in the raw data can be found in the file `features_info.txt` supplied with the raw data. The relevant part is included her:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
> 
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
> 
> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
> 
> - tBodyAcc-XYZ
> - tGravityAcc-XYZ
> - tBodyAccJerk-XYZ
> - tBodyGyro-XYZ
> - tBodyGyroJerk-XYZ
> - tBodyAccMag
> - tGravityAccMag
> - tBodyAccJerkMag
> - tBodyGyroMag
> - tBodyGyroJerkMag
> - fBodyAcc-XYZ
> - fBodyAccJerk-XYZ
> - fBodyGyro-XYZ
> - fBodyAccMag
> - fBodyAccJerkMag
> - fBodyGyroMag
> - fBodyGyroJerkMag
> 
> The set of variables that were estimated from these signals are: 
> 
> - mean(): Mean value
> - std(): Standard deviation

## attachment: README.txt supplied with the raw data set

> ==================================================================
> Human Activity Recognition Using Smartphones Dataset
> Version 1.0
> ==================================================================
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
> Smartlab - Non Linear Complex Systems Laboratory
> DITEN - Università degli Studi di Genova.
> Via Opera Pia 11A, I-16145, Genoa, Italy.
> activityrecognition@smartlab.ws
> www.smartlab.ws
> ==================================================================
> 
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.
> 
> For each record it is provided:
> ======================================
> 
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
> - Triaxial Angular velocity from the gyroscope.
> - A 561-feature vector with time and frequency domain variables.
> - Its activity label.
> - An identifier of the subject who carried out the experiment.
> 
> The dataset includes the following files:
> =========================================
> 
> - 'README.txt'
> 
> - 'features_info.txt': Shows information about the variables used on the feature vector.
> 
> - 'features.txt': List of all features.
> 
> - 'activity_labels.txt': Links the class labels with their activity name.
> 
> - 'train/X_train.txt': Training set.
> 
> - 'train/y_train.txt': Training labels.
> 
> - 'test/X_test.txt': Test set.
> 
> - 'test/y_test.txt': Test labels.
> 
> The following files are available for the train and test data. Their descriptions are equivalent.
> 
> - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
> 
> - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
> 
> - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
> 
> - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
> 
> Notes:
> ======
> - Features are normalized and bounded within [-1,1].
> - Each feature vector is a row on the text file.
> 
> For more information about this dataset contact: activityrecognition@smartlab.ws
> 
> License:
> ========
> Use of this dataset in publications must be acknowledged by referencing the following publication [1]
> 
> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
> 
> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
> 
> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
> 