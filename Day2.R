#Strings
str <- "This is my first script"
"This is another method to assign variables" -> str2

#clear variables in env
ls()
rm(list = ls())

#To clear console history--CTRL+L
#to check what a syntax means. 
?mean

# A function has 4 components- name, statement, argument,body,return(optional)

#Creating a sum_total function

my_sum <- function(input_1,input_2){
  tot=input_1+input_2
  return(tot)
}
#Calling a function
my_sum(4,5)
#Best practices
my_sum(input_1 = 4,input_2 = 5)

#Note: Esc button for exiting console prompt


# Function to convert fah to kelvin
# last stmt of a function is a return statement which is optional

fah_to_kelvin <- function (fah){
  
  kelv=  (((5/9) * (fah - 32)) + 273)
   return(kelv)
}

fah_to_kelvin(32)

asc('M')



# Convert fah to celsius

fah_to_celsius <- function (fah){
  
  cels=  ((5/9) * (fah- 32))
  return(cels)
}
fah_to_celsius(32)


# install packages - give package name 
install.packages("gtools")


# Exercise 2
best_practice <- c("write","programs","for","people","not","computers")
asterix <- "***"
# takes 2 args and returns new vector with asterisk at the beginning and at the end

fence <-function(best_practice,asterix){
  final_var <- c(asterix,best_practice,asterix)
  
   return(final_var)
}

fence(best_practice,asterix)

#Create a import function
source("fah_to_temp.R")





