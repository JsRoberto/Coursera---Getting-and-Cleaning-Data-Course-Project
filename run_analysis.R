library(plyr)
library(dplyr)

Subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
Subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
Ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
Ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

meanMeasure <- features[grepl("mean()",features$V2),]
stdMeasure <- features[grepl("std()",features$V2),]
mergeMeasure <- rbind(meanMeasure,stdMeasure)
mergeMeasure <- arrange(mergeMeasure,V1)

Xtrain <- select(Xtrain,num_range("V",mergeMeasure[[1]]))
names(Xtrain) <- mergeMeasure[[2]]
Xtest <- select(Xtest,num_range("V",mergeMeasure[[1]]))
names(Xtest) <- mergeMeasure[[2]]

Ytrain <- Ytrain[[1]]
Ytrain <- sub("1","walking",Ytrain)
Ytrain <- sub("2","walking_upstairs",Ytrain)
Ytrain <- sub("3","walking_downstairs",Ytrain)
Ytrain <- sub("4","sitting",Ytrain)
Ytrain <- sub("5","standing",Ytrain)
Ytrain <- sub("6","laying",Ytrain)

Ytest <- Ytest[[1]]
Ytest <- sub("1","walking",Ytest)
Ytest <- sub("2","walking_upstairs",Ytest)
Ytest <- sub("3","walking_downstairs",Ytest)
Ytest <- sub("4","sitting",Ytest)
Ytest <- sub("5","standing",Ytest)
Ytest <- sub("6","laying",Ytest)

dataset1 <- data.frame(volunteer = Subtrain[[1]],activity = Ytrain)
dataset1 <- cbind(dataset1,Xtrain)
dataset2 <- data.frame(volunteer = Subtest[[1]],activity = Ytest)
dataset2 <- cbind(dataset2,Xtest)
dataDef <- rbind(dataset1,dataset2)
dataDef <- arrange(dataDef,volunteer)

names(dataDef) <- gsub("BodyBody","Body",names(dataDef))
names(dataDef) <- gsub("-","",names(dataDef))

dataAux <- dataDef
dataDef2 <- data.frame()
dataAux$activity <- sub("laying","6",dataAux$activity)
dataAux$activity <- sub("standing","5",dataAux$activity)
dataAux$activity <- sub("sitting","4",dataAux$activity)
dataAux$activity <- sub("walking_downstairs","3",dataAux$activity)
dataAux$activity <- sub("walking_upstairs","2",dataAux$activity)
dataAux$activity <- sub("walking","1",dataAux$activity)
dataAux$activity <- as.numeric(dataAux$activity)
for(i in 1:30){
        for(j in 1:6){
                dataAux2 <- filter(dataAux, volunteer == i & activity == j)
                if(nrow(dataAux2) > 0){
                        dataAux2 <- matrix(colMeans(dataAux2),
                                           nrow = 1,
                                           ncol = length(colMeans(dataAux2)))
                        dataAux2 <- as.data.frame(dataAux2)
                        dataDef2 <- rbind(dataDef2,dataAux2)
                }
        }
}
names(dataDef2) <- names(dataAux)
dataDef2$activity <- sub("1","walking",dataDef2$activity)
dataDef2$activity <- sub("2","walking_upstairs",dataDef2$activity)
dataDef2$activity <- sub("3","walking_downstairs",dataDef2$activity)
dataDef2$activity <- sub("4","sitting",dataDef2$activity)
dataDef2$activity <- sub("5","standing",dataDef2$activity)
dataDef2$activity <- sub("6","laying",dataDef2$activity)
dataDef2
