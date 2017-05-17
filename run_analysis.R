library(reshape2)

loadSet <- function(setName,features){
  setFilename = paste0(directory,"/",setName,"/X_",setName,".txt")
  set <- read.table(setFilename)[features]
  
  activitiesFilename = paste0(directory,"/",setName,"/Y_",setName,".txt")
  activities <- read.table(activitiesFilename)
  
  subjectsFilename = paste0(directory,"/",setName,"/subject_",setName,".txt")
  subjects <- read.table(subjectsFilename)
  
  set <- cbind(subjects, activities, set)
}

digestFeatures <- function( allFeatures, selectedFeatures) {
  featuresOut = features[selectedFeatures,2]
  featuresOut = gsub('-std', 'Std', featuresOut)
  featuresOut = gsub('-mean', 'Mean', featuresOut)
  featuresOut <- gsub('[-()]', '', featuresOut)
}

directory="UCI HAR Dataset"
fileName <- "dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
download.file(fileURL, fileName, method="curl")
unzip(fileName)

activityFilename<-paste0(directory,"/activity_labels.txt")
activityLabels<-read.table(activityFilename,colClasses = c("numeric","character"))
featuresFilename<-paste0(directory,"/features.txt")
features<- read.table(featuresFilename,colClasses = c("numeric","character"))

selectedFeatures = grep(".*std().*|.*mean().*", features[,2])
digestedFeatures = digestFeatures( features, selectedFeatures )
test <- loadSet( "test",selectedFeatures)
train <- loadSet( "train",selectedFeatures)

completeData <- rbind(train, test)
colnames(completeData) <- c("subject", "activity", digestedFeatures)

completeData$activity <- factor(completeData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
completeData$subject <- as.factor(completeData$subject)

meltedData <- melt(completeData, id = c("subject", "activity"))
meanData <- dcast(meltedData, subject + activity ~ variable, mean)
write.table(meanData, "tidy.txt", row.names = FALSE, quote = FALSE)