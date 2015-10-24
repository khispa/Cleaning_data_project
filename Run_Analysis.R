#SetWD
# setwd(yourworkingdirectory)
#PART 1.------
#Read test dataset
Test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, dec = ".", colClasses = "numeric")
labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
All_test <- data.frame(labels,subject_test, Test)
rm(labels, subject_test, Test)
#Read training dataset
Train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, dec = ".", colClasses = "numeric")
labels_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
All_train <- data.frame(labels_train,subject_train, Train)
rm(labels_train, subject_train, Train)
#PART 2. ------
#Merge Train and Test dataset
act <- read.table("./UCI HAR Dataset/activity_labels.txt")
info <- read.table("./UCI HAR Dataset/features.txt")
All_info <- rbind(All_test,All_train)
colnames(All_info) <- c("Activity", "Subject", as.character(info$V2[1:561]))
rm(All_train, All_test)
#Extraction of mean and S.D. of each measurement
check <-as.logical(grepl( "mean", as.character(info$V2), ignore.case = TRUE)+grepl( "std", as.character(info$V2), ignore.case = TRUE))
check <- c(T,T,check)
All_info <- All_info[, check]
rm(check, info)
#Add activity names
for (i in 1:6) {
 All_info$Activity[All_info$Activity==i] <- as.character(act$V2[i])
}
#PART 3. -------
#Create summary dataframe
library(dplyr)
#Long dataset
All_melt <- reshape2::melt(All_info, id.vars = c("Activity", "Subject"))
All_grouped <- All_melt  %>%  group_by(Activity, Subject, variable)  %>% summarise(value = mean(value))
rm(act, All_melt)
#Wide dataset
All2 <- All_info %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))
#PART 4. ------
write.table(All2,file = "Tidy_data_wide.txt", row.names = FALSE)
write.table(All_grouped,file = "Tidy_data_long.txt", row.names = FALSE)
