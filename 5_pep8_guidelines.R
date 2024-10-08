# A practical tutorial on PEP 8 guidelines
# Casey Hansen, PhD
# BIO247/BIO100 - Introduction to Bioinformatics
# Last Updated August 2024

# First, create some dummy data

# time data, 1 to 50
time <- c(1:50)

# temperature data, generate 50 random numbers between 90 and 100
# sample() function sourced from Geeks for Geeks [1]
temp <- sample(90.0:100.0, 50, replace = TRUE)

#plot the data to observe temperature over time
# set markers to blue for easier visualization, pch = 19 for solid
# pch argument sourced from ChatGPT [2]
plot(time, temp, col = 'blue', pch = 19)


### Citations ###
# [1] https://www.geeksforgeeks.org/how-to-generate-random-numbers-in-r/
# [2] ChatCPT version GPT-4, Query: "what are the options for plot markers in R"
