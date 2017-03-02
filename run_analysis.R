library(data.table)

# returns a dataset combining subjects, activities and mean and std measures
# for a given subset, i.e. train or test
#
# inputs:
# subset        ... a character indicating the subset, i.e. "train" or "test"
# measures      ... a character vector with the "feature names", 
#                   i.e. column 2 from features.txt
# activities    ... a dataset with columns id and name from "activity_label.txt
load_data <- function(subset, measures, activities) {

    subjects <- fread(file = file.path(subset, 
                                       paste0("subject_", subset, ".txt")),
                      col.names = "subject")

    # "Appropriately labels the data set with descriptive variable names"
    x <- fread(file = file.path(subset, paste0("X_", subset, ".txt")),
               col.names = measures)
    
    y <- fread(file = file.path(subset, paste0("y_", subset, ".txt")),
               col.names = "id")
    
    cbind(subjects,
          # "Uses descriptive activity names to name the activities in the data set"
          activity = merge(y, activities)$name,
          # "Extracts only the measurements on the mean and standard deviation for each measurement"
          subset(x, select = measures[grep("(mean|std)\\(\\)", measures)]))
}

# load and select measure names
measures <- fread("features.txt",
                  col.names = c("id", "name"))

# load activity labels
activities <- fread("activity_labels.txt",
                    stringsAsFactors = TRUE,
                    col.names = c("id", "name"))

# load and combine train and test data
# "Merges the training and the test sets to create one data set"
har <- rbind(load_data(subset = "train",
                       measures = measures$name,
                       activities),
             load_data(subset = "test", 
                       measures = measures$name,
                       activities))

# calculate average for each subject, activity and measure
# "creates a second, independent tidy data set with the average of each variable for each activity and each subject"
# avg <- melt(har, id.vars = 1:2)[, .(average=mean(value)), by=subject:variable]
avg <- dcast(melt(har, id.vars = 1:2), 
             subject + activity ~ variable, 
             fun.aggregate = mean)
setorder(avg, activity, subject)
names(avg)[-(1:2)] <- paste0("avg_", names(avg)[-(1:2)])

# write analysis data
write.table(har, file = "har.csv", row.names = FALSE)
write.table(avg, file = "avg.csv", row.names = FALSE)