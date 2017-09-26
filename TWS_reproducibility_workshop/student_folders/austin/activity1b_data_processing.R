# Regression analysis and plot

##PReamble - Load libraries and clear environment
library()
remove(list=ls())

###Step 1 load data
load("data/processed_data/rikz.data.Rdata")
head(rikz.data) #this just shows hear to confirm data loading

###Step 2. Regression analysis
lm.out <- lm(rikz.data$Richness~rikz.data$NAP)
            # or lm(Richness~NAP, data = rikz,data)
summary(lm.out)

###Step 3. Plot results
plot(rikz.data$NAP, rikz.data$Richness)
abline(lm.out)

