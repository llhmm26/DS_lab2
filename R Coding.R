getwd()

setwd('C:/Users/Ilham Faisal/OneDrive - Universiti Teknologi PETRONAS/Desktop/DS/Lab/Lab 2')

list.files()

churn = read.csv('churn_Train.csv', header = TRUE)

View(churn)

install.packages(c("dlookr"))

library(tidyverse)
library(dplyr)
library(dlookr)

#calc desc stats
descriptive_stats<-describe(churn)
print(descriptive_stats)
view(descriptive_stats)

# normality Test
normality_test <- normality(churn)
print(normality_test)

#normality visualisation
plot_normality(churn)

#calc of correlation coefficient using correlate()
correlation_matrix <- correlate(churn)
print(correlation_matrix)

#visualization of the correlation matrix using plo.correlate
plot.correlate(correlation_matrix)

#grouping data by internet service
categ <- target_by (churn, Internet.Service)

#analyzing relay btw tenure & churn
cat_num <- relate(categ, Tenure)

#summary relay
plot(cat_num)

#assuming 'churn' is ur dataset & 'Predictorvariable' is ur category
install.packages('vcd')

#load necessary lib
library(vcd)

#create mosaic plot
mosaic(Internet.Service ~ Gender, data = churn)

#create static EDA report
eda_paged_report(churn)

#create dynamic EDA report
eda_web_report(churn)