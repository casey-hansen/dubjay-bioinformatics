#!/usr/bin/env Rscript

input_data <- read.csv("/cloud/project/Test_V_output.csv")

input_data$Paper.ID <- gsub("\\[","",input_data$Paper.ID)
input_data$Paper.ID <- gsub("\\]","",input_data$Paper.ID)
input_data$Paper.ID <- gsub("\\'","",input_data$Paper.ID)

input_data <- input_data[-which(input_data$Evidence.Score == 1),]

for (each in c(1:length(input_data$Paper.ID))){
  input_data$Paper.Count[each] <- length(unlist(strsplit(input_data$Paper.ID[each],",")))
}

if (1 %in% input_data$Paper.Count){
  input_data <- input_data[-which(input_data$Paper.Count == 1),]
}

print(input_data)