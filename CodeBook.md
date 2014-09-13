Code Book 
=========== 

The data on movement came from measurements on 30 subjects while performing various 
activities using a Samsung Galaxy S II smartphone. The data were read into R and manipulated to produce a final data set containing the average of the mean and standard deviation of measurements. See the ReadMe file for more details on the data cleaning process.

----------------------
The final data set consists of 79 movement variables, with the following descriptions for the data of which the mean was taken to get the final data set (the number corresponds to column number):

1. Subject: integer, the unique identifier of each subject (1-30)
2. Activity: character, the activity performed while measurements were taken                       
3. tBodyAcc_X_mean: numeric, mean body linear acceleration in time in x-direction               
4. tBodyAcc_Y_mean: numeric, mean body linear acceleration in time in y-direction              
5. tBodyAcc_Z_mean: numeric, mean body linear acceleration in time in z-direction               
6. tBodyAcc_X_sd: numeric, standard deviation of body acceleration in time in x-direction                  
7. tBodyAcc_Y_sd: numeric, standard deviation of body acceleration in time in y-direction                 
8. tBodyAcc_Z_sd: numeric, standard deviation of body acceleration in time in z-direction
9. tGravityAcc_X_mean: numeric, mean gravity acceleration in time in x-direction              
10. tGravityAcc_Y_mean: numeric, mean gravity acceleration in time in y-direction             
11. tGravityAcc_Z_mean: numeric, mean gravity acceleration in time in z-direction             
12. tGravityAcc_X_sd: numeric, standard deviation of gravity acceleration in time in x-direction             
13. tGravityAcc_Y_sd: numeric, standard deviation of gravity acceleration in time in y-direction              
14. tGravityAcc_Z_sd: numeric, standard deviation of gravity acceleration in time in z-direction              
15. tBodyAccJerk_X_mean: numeric, mean body jerk in time in x-direction           
16. tBodyAccJerk_Y_mean: numeric, mean body jerk in time in y-direction           
17. tBodyAccJerk_Z_mean: numeric, mean body jerk in time in z-direction            
18. tBodyAccJerk_X_sd: numeric, standard deviation of body jerk in time in x-direction               
19. tBodyAccJerk_Y_sd: numeric, standard deviation of body jerk in time in y-direction              
20. tBodyAccJerk_Z_sd: numeric, standard deviation of body jerk in time in z-direction         
21. tBodyGyro_X_mean: numeric, mean angular velocity in time in x-direction               
22. tBodyGyro_Y_mean: numeric, mean angular velocity in time in y-direction             
23. tBodyGyro_Z_mean: numeric, mean angular velocity in time in z-direction               
24. tBodyGyro_X_sd: numeric, standard deviation of angular velocity in time in x-direction               
25. tBodyGyro_Y_sd: numeric, standard deviation of angular velocity in time in y-direction                 
26. tBodyGyro_Z_sd: numeric, standard deviation of angular velocity in time in z-direction                 
27. tBodyGyroJerk_X_mean: numeric, mean angular jerk in time in x-direction           
28. tBodyGyroJerk_Y_mean: numeric, mean angular jerk in time in y-direction          
29. tBodyGyroJerk_Z_mean: numeric, mean angular jerk in time in z-direction            
30. tBodyGyroJerk_X_sd: numeric, standard deviation of angular jerk in time in x-direction             
31. tBodyGyroJerk_Y_sd: numeric, standard deviation of angular jerk in time in y-direction             
32. tBodyGyroJerk_Z_sd: numeric, standard deviation of angular jerk in time in z-direction            
33. tBodyAccMag_mean: numeric, mean magnitude of body acceleration in time               
34. tBodyAccMag_sd: numeric, standard deviation of magnitude of body acceleration in time                
35. tGravityAccMag_mean: numeric, mean magnitude of gravity acceleration in time          
36. tGravityAccMag_sd: numeric, standard deviation of magnitude of gravity acceleration in time           
37. tBodyAccJerkMag_mean: numeric, mean magnitude of body jerk in time          
38. tBodyAccJerkMag_sd: numeric, standard deviation of magnitude of body jerk in time            
39. tBodyGyroMag_mean: numeric, mean magnitude of angular velocity in time             
40. tBodyGyroMag_sd: numeric, standard deviation of magnitude of angular velocity in time              
41. tBodyGyroJerkMag_mean: numeric, mean magnitude of angular jerk in time         
42. tBodyGyroJerkMag_sd: numeric, standard deviation of magnitude of angular jerk in time            
43. fBodyAcc_X_mean: numeric, mean body linear acceleration in frequency in x-direction                
44. fBodyAcc_Y_mean: numeric, mean body linear acceleration in frequency in y-direction              
45. fBodyAcc_Z_mean: numeric, mean body linear acceleration in frequency in z-direction                 
46. fBodyAcc_X_sd: numeric, standard deviation of body acceleration in frequency in x-direction                 
47. fBodyAcc_Y_sd: numeric, standard deviation of body acceleration in frequency in y-direction                  
48. fBodyAcc_Z_sd: numeric, standard deviation of body acceleration in frequency in z-direction                 
49. fBodyAcc_X_freq_mean: numeric, weighted average of frequency of body acceleration in x-direction        
50. fBodyAcc_Y_freq_mean: numeric, weighted average of frequency of body acceleration in y-direction            
51. fBodyAcc_Z_freq_mean: numeric, weighted average of frequency of body acceleration in z-direction            
52. fBodyAccJerk_X_mean: numeric, mean body jerk in frequency in x-direction           
53. fBodyAccJerk_Y_mean: numeric, mean body jerk in frequency in y-direction            
54. fBodyAccJerk_Z_mean: numeric, mean body jerk in frequency in z-direction            
55. fBodyAccJerk_X_sd: numeric, standard deviation of body jerk in frequency in x-direction              
56. fBodyAccJerk_Y_sd: numeric, standard deviation of body jerk in frequency in y-direction             
57. fBodyAccJerk_Z_sd: numeric, standard deviation of body jerk in frequency in z-direction             
58. fBodyAccJerk_X_freq_mean: numeric, weighted average of frequency of body jerk in x-direction       
59. fBodyAccJerk_Y_freq_mean: numeric, weighted average of frequency of body jerk in y-direction       
60. fBodyAccJerk_Z_freq_mean: numeric, weighted average of frequency of body jerk in z-direction     
61. fBodyGyro_X_mean: numeric, mean angular velocity in frequency in x-direction               
62. fBodyGyro_Y_mean: numeric, mean angular velocity in frequency in y-direction              
63. fBodyGyro_Z_mean: numeric, mean angular velocity in frequency in z-direction                
64. fBodyGyro_X_sd: numeric, standard deviation of angular jerk in frequency in x-direction             
65. fBodyGyro_Y_sd: numeric, standard deviation of angular jerk in frequency in y-direction                 
66. fBodyGyro_Z_sd: numeric, standard deviation of angular jerk in frequency in z-direction                 
67. fBodyGyro_X_freq_mean: numeric, weighted average of frequency of angular jerk in x-direction         
68. fBodyGyro_Y_freq_mean: numeric, weighted average of frequency of angular jerk in y-direction          
69. fBodyGyro_Z_freq_mean: numeric, weighted average of frequency of angular jerk in z-direction          
70. fBodyAccMag_mean: numeric, mean magnitude of body acceleration in frequency              
71. fBodyAccMag_sd: numeric, standard deviation of magnitude of body acceleration in frequency                 
72. fBodyAccMag_freq_mean: numeric, mean magnitude of weighted average of body acceleration in frequency       
73. fBodyBodyAccJerkMag_mean: numeric, mean magnitude of body jerk in frequency      
74. fBodyBodyAccJerkMag_sd: numeric, standard deviation of magnitude of body jerk in frequency        
75. fBodyBodyAccJerkMag_freq_mean: numeric, mean magnitude of weighted average of body jerk in frequency 
76. fBodyBodyGyroMag_mean: numeric, mean magnitude of angular velocity in frequency        
77. fBodyBodyGyroMag_sd: numeric, standard deviation of magnitude of angular velocity in frequency          
78. fBodyBodyGyroMag_freq_mean: numeric, mean magnitude of weighted average of angular velocity in frequency
79. fBodyBodyGyroJerkMag_mean: numeric, mean magnitude of angular jerk in frequency     
80. fBodyBodyGyroJerkMag_sd: numeric, standard deviation of magnitude of angular jerk in frequency       
81. fBodyBodyGyroJerkMag_freq_mean: numeric, mean magnitude of weighted average of angular jerk in frequency


