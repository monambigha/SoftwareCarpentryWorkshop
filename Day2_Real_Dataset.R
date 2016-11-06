# Real Data Set


#create a new directory
dir.create("data")
#download a file. 
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv"
              ,destfile = "data/gapminder.csv"
              )


data1 <- read.csv("data/gapminder.csv", header = TRUE)
head(data1)
# Overall summary of the data frame.  - 12 rows having afghanistan. 
summary (data1)
str(data1)

#Write a function called analyse that takes country as 
#argument and displays mean min max life expectancy of that country
#Subsetting the DF
specific_country_data <- subset(data1,data1$country == "Uganda")
summary(specific_country_data)
#Calc mean,min,max of life expectancy
mean(specific_country_data[,5])

#Transforming all the logic above in to a Function now 
# R by default returns the first output and ignores the rest. 
analyse <- function (country){
  specific_country_data <- subset(data1,data1$country == country)
 print(mean(specific_country_data[,5]))
 print(min(specific_country_data[,5]))
 print(max(specific_country_data[,5]))
  
}

analyse("Uganda")






