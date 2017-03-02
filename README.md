# GettingAndCleaningDataCourseProject

The repo contains
- the R script `run_analysis.R`
- the codebook `codebook.md`

The R script processes raw data (more precisely: observed subjects, their activity and pre-processed smartphone sensor signals) from experiments on "Human Activity Recognition Using Smartphones", published in [1]. It generates 2 tidy data sets: `har` and `avg`, see `codebook.md` for details.

The raw data had been split into 2 subsets and separated into several files:
- `features.txt` provides the names of the 561 variables calculated from the sensor signals
- `activity_labels.txt` provides labels for the activity ids used in the actual data

The actual data for the "train" subset is stored in respective folder "train" with files
- `subject_train.txt`
- `X_train.txt`
- `y_train.txt`.

These 3 files have the same number of lines. While `subject_train.txt` provides a subject id per line and `y_train.txt` provides an activity id per line, `X_train.txt` provides an 561 numeric values per row which correspond to the variable names in `features.txt`.

The actual data for the "test" subset is stored in respective folder "test" with the same file structure.

The R script reads those files from the working directory and generates a tidy dataset called `har`, which is merged from the "train" and "test" subsets. From the 561 variables only those on mean and standard deviation are selected.

Based on the `har` data set it generates a tidy data set `avg`. In this dataset the average of each of the variables selected for the `har` data set is provided for each observed subject and activity.

The R script uses the `data.table` package. First the variable names and the activity mapping is read. The creation of tidy data sets for each subset is delegated to the function `load_data` defined at the beginning of the script. The merging is then achieved by a simple `rbind`.

The raw data files do not have headers. Therefore the `col.names` parameter of the `fread` function is used to assign descriptive variable names - particularly for the 561 X-variables.

The function `load_data` reads the 3 files for the specified subset into data tables. The tidy data set is created using a `cbind` of 3 items:
- the subject "vector"
- the activity "vector", created using the initally loaded mapping for activity ids
- the subset of the X-variables, selected using a regular expression on the variable names

Finally, the `avg` data set is created chaining a melt and a dcast operation, the latter applying the mean on the `value` column from the melt operation. The prefix "avg_" is added to the variable names in order to make the data set tidy.

------------------------

References:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
