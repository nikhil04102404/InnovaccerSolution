library(utils)

#train <- read.csv(file="C:\\Users\\Nikhil Kumar Sharma\\Downloads\\Deduplication Problem - Sample Dataset.csv")
train <- read.csv(file="Deduplication Problem - Sample Dataset.csv")
train
library(dplyr)
train2 <- train

train1 <- train[!duplicated(train[,1:4]),]
 
my_solution <- data.frame(ln = train1$ln, dob = train1$dob, gn = train1$gn , fn = train1$fn )
write.csv(my_solution, file = "Deduplication_Problem_Sample_Output.csv", row.names = FALSE)

train2$fullNAme <- paste(train2$fn, train2$ln) 
train2$fullNameDob <- paste(train2$fullNAme, train2$dob)
train2$fullNameDobSex <- paste(train2$fullNameDob, train2$gn)
train3 <- train2[!duplicated(train2[,7]),]

my_solution_two <- data.frame(ln = train3$ln, dob = train3$dob, gn = train3$gn , fn = train3$fn )
write.csv(my_solution_two, file = "Deduplication_Problem_Sample_Output_two.csv", row.names = FALSE)

