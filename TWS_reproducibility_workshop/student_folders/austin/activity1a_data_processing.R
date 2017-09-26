# Data processing

##PReamble - Load libraries and clear environment
library()
remove(list=ls())

###Step 1. Load data from csv
rikz.data1 <- read.csv("data/raw_data/RIKZ_1.csv")
rikz.data2 <- read.csv("data/raw_data/RIKZ_2.csv")
rikz.data3 <- read.csv("data/raw_data/RIKZ_3.csv")
rikz.data4 <- read.csv("data/raw_data/RIKZ_4.csv")

###Step 2. Combine datasets together
rikz.data <- rbind(rikz.data1, #data from week 1
                   rikz.data2, #data from week 2
                   rikz.data3, #data from week 3
                   rikz.data4) #data from week 4
#doublecheck by  sample size per week
table(rikz.data$week)

###Step 3. Save processed data
save(rikz.data, file = "data/processed_data/rikz_data.Rdata")