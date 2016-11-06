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
# modify the analyse function to create a plot with year on x axis and life exp on the y axis


analyse <- function (coun_name){
  specific_country_data <- subset(data1,data1$country == coun_name)
 #print(mean(specific_country_data[,5]))
 #print(min(specific_country_data[,5]))
 #print(max(specific_country_data[,5]))
  out <- c("Mean_le"= mean(specific_country_data[,5]), "Min_le"=min(specific_country_data[,5]),
           "Max_le"=max(specific_country_data[,5])) 
  print(out)
  plot(specific_country_data$year,specific_country_data$lifeExp,main= paste("Year Vs Life Expectancy of",coun_name), 
       xlab = "Year", ylab="Life Expectancy"
       )
}

analyse("Namibia")
analyse("Uganda")



#Using Loops
best_practice <- c("write","programs","for","people","not","computers")
best_practice_fun <- function(argument) {
 for(w in best_practice){
   print(w)
 }
}

best_practice_fun(best_practice)



# Generate a file that contains years 1952 and 1997 and name it as gapminder_52_97
# and another file that contains years 1966 and 2007 and anme it as gapminder_66_07

create_Data_Years <- function(year1,year2){
  year_data <- subset(data1,data1$year==year1 | data1$year==year2)
 # file.create(paste("gapminder_",year1,"_",year2),file="year1_data")
  head(year_data)
  #Write file
  write.csv(file=paste("data/gapminder",year1,"_",year2,".csv"),year_data,row.names = FALSE,quote=FALSE)
 
}

create_Data_Years(1952,1997)
create_Data_Years(1967,2007)

#Listing file with patten in a directory
list.files(path="data",pattern=".csv",full.names = TRUE)

# Write a for loop to print each filename on a different line. 
#for the above output
print_file_names <- function(path_name){
  file_name <- list.files(path=path_name,pattern=".csv",full.names = TRUE)
for(line1 in file_name){
  print(line1)
}
  
}

print_file_names("data")

print_val_files <- function(path_name,country_name){
  file_name <- list.files(path=path_name,pattern=".csv",full.names = TRUE)
  for(line1 in file_name){
    analyse_several_files(paste(country_name) ,line1)  
    }
  
}

analyse_several_files <- function (coun_name,file_name){
  data1 <- read.csv(file_name, header = TRUE)
  specific_country_data <- subset(data1,data1$country == coun_name)
  #print(mean(specific_country_data[,5]))
  #print(min(specific_country_data[,5]))
  #print(max(specific_country_data[,5]))
  out <- c("Mean_le"= mean(specific_country_data[,5]), "Min_le"=min(specific_country_data[,5]),
           "Max_le"=max(specific_country_data[,5])) 
  print(out)
  #plot(specific_country_data$year,specific_country_data$lifeExp,main= paste("Year Vs Life Expectancy of",coun_name), 
   #    xlab = "Year", ylab="Life Expectancy"
  #)
}

print_val_files("data","Namibia")






