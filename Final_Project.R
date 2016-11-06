
print_val_files1 <- function(path_name,pattern,coun_name){
  file_name <- list.files(path=path_name,pattern=pattern,full.names = TRUE)
  for(line1 in file_name){
    analyse_several_files(paste(coun_name) , line1)  
  }
}

analyse_several_files <- function (coun_name,file_name){
  data1 <- read.csv(file_name, header = TRUE)
  specific_country_data <- subset(data1,data1$country == coun_name)
  out <- c("Mean_le"= mean(specific_country_data[,5]), "Min_le"=min(specific_country_data[,5]),
           "Max_le"=max(specific_country_data[,5])) 
  print(out)
  
}

print_val_files1("data","csv","Namibia")

#-------
  
  
analyse_several_files <- function (coun_name){
  data1 <- read.csv("SoftwareCarpentryWorkshop/data/gapminder.csv", header = TRUE)
  
 # str(data1)
  for (cn in coun_name){
  print (cn)
  specific_country_data <- subset(data1,data1$country == cn)
  specific_country_data$country <- droplevels(specific_country_data$country)
  str(specific_country_data)
  print(dim(specific_country_data))
  #print(head(specific_country_data))
  out <- c("Mean_le"= mean(specific_country_data[,5]), "Min_le"=min(specific_country_data[,5]),
           "Max_le"=max(specific_country_data[,5])) 
  print(out)
  plot(specific_country_data[,2], specific_country_data[,6], xlab = "Year", ylab = "GDP Per Capita", main = paste("Year Vs GDP Per Capita of ", cn), type = "l")
  }  
}

coun_name = c("Namibia", "Uganda", "Albania")
analyse_several_files(coun_name)


