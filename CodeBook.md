==================================================
#The Code Book
==================================================

This code book details the variables of the tidy data set obtained from the step 5th of Coursera - Getting and Cleaning Data Course Project.
The raw data was collected by moviment's sensors of Samsung Galaxy S II. 
Originally, there was 561 variables measured for each one among 30 volunteer, which in turns performed 6 diferent activities.
The tidy data set presents the average of each variable (among those are mean(), meanFreq() and std()) for each activity and each volunteer among all measurements.
After the step 5th of processing, the tidy data has the following characteristics:

==================================================
Variables:
1 volunteer
2 activity
3 tBodyAccmean()X
4 tBodyAccmean()Y
5 tBodyAccmean()Z
6 tBodyAccstd()X
7 tBodyAccstd()Y
8 tBodyAccstd()Z
9 tGravityAccmean()X
10 tGravityAccmean()Y
11 tGravityAccmean()Z
12 tGravityAccstd()X
13 tGravityAccstd()Y
14 tGravityAccstd()Z
15 tBodyAccJerkmean()X
16 tBodyAccJerkmean()Y
17 tBodyAccJerkmean()Z
18 tBodyAccJerkstd()X
19 tBodyAccJerkstd()Y
20 tBodyAccJerkstd()Z
21 tBodyGyromean()X
22 tBodyGyromean()Y
23 tBodyGyromean()Z
24 tBodyGyrostd()X
25 tBodyGyrostd()Y
26 tBodyGyrostd()Z
27 tBodyGyroJerkmean()X
28 tBodyGyroJerkmean()Y
29 tBodyGyroJerkmean()Z
30 tBodyGyroJerkstd()X
31 tBodyGyroJerkstd()Y
32 tBodyGyroJerkstd()Z
33 tBodyAccMagmean()
34 tBodyAccMagstd()
35 tGravityAccMagmean()
36 tGravityAccMagstd()
37 tBodyAccJerkMagmean()
38 tBodyAccJerkMagstd()
39 tBodyGyroMagmean()
40 tBodyGyroMagstd()
41 tBodyGyroJerkMagmean()
42 tBodyGyroJerkMagstd()
43 fBodyAccmean()X
44 fBodyAccmean()Y
45 fBodyAccmean()Z
46 fBodyAccstd()X
47 fBodyAccstd()Y
48 fBodyAccstd()Z
49 fBodyAccmeanFreq()X
50 fBodyAccmeanFreq()Y
51 fBodyAccmeanFreq()Z
52 fBodyAccJerkmean()X
53 fBodyAccJerkmean()Y
54 fBodyAccJerkmean()Z
55 fBodyAccJerkstd()X
56 fBodyAccJerkstd()Y
57 fBodyAccJerkstd()Z
58 fBodyAccJerkmeanFreq()X
59 fBodyAccJerkmeanFreq()Y
60 fBodyAccJerkmeanFreq()Z
61 fBodyGyromean()X
62 fBodyGyromean()Y
63 fBodyGyromean()Z
64 fBodyGyrostd()X
65 fBodyGyrostd()Y
66 fBodyGyrostd()Z
67 fBodyGyromeanFreq()X
68 fBodyGyromeanFreq()Y
69 fBodyGyromeanFreq()Z
70 fBodyAccMagmean()
71 fBodyAccMagstd()
72 fBodyAccMagmeanFreq()
73 fBodyAccJerkMagmean()
74 fBodyAccJerkMagstd()
75 fBodyAccJerkMagmeanFreq()
76 fBodyGyroMagmean()
77 fBodyGyroMagstd()
78 fBodyGyroMagmeanFreq()
79 fBodyGyroJerkMagmean()
80 fBodyGyroJerkMagstd()
81 fBodyGyroJerkMagmeanFreq()

Notes:
-The prefix "t" means "time domain signal".
-The prefix "f" means "frequency domain signal".
-"Acc" and "Gyro" corresponds to what sensor the values are related - accelerometer and gyroscope, respec.
-The signals were separated into "Body" and "Gravity" acceleration signals.
-"Jerk" signals results from the derivation in time of body linear acceleration and angular velocity.
-The magnitude is express by "Mag".
-"X", "Y", e "Z" represent the direction.
-"mean" and "std" represent the mean and the standard deviation of the variable.
