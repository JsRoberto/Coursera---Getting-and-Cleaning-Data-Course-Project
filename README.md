==========================================================
#How the run_analysis.R script works
==========================================================

The porpose of those instructions is to make clear the code lines used to perform all the five steps of the data processing.


04-10 lines -- 	The Samsung data is already in the working directory (as assumed in the submission instructions).
		            Then, here the code uses the read.table() with the relative reference "./".

12-15 lines -- 	It selects the features in feature.txt which contains "mean()", "meanFreq()", and "std()".
		            And last, it arranges to original order of feature.txt

17-20 lines -- 	It selects, from "X_train.txt" and "X_test.txt", only the values corresponding to variables obtained from the previous                   lines.
		            And, also, it names appropriately that variables.

22-28 & 30-36 lines -- 	It exchanges the representative number of activities by the activities themselves in both the "y_train.txt" and                          the "y_test.text".

38-43 lines -- 	It merges the two separate data frames ("test" and "train" data frames), and also incluse two new variables: volunteer                   and activity.

45-46 lines -- 	It clean up the variable names.

48-76 lines -- 	It performs the necessary processing in order to select the average of each variable for each activity and each volunteer                 among all measurements.
