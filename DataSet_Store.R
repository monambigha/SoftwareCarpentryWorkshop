gapminder <- read.csv('gapminder-FiveYearData.csv', header = TRUE) 
# if data has a header i.e title file then give as true.
head(gapminder)  # print first few lines of gapminder
class(gapminder) # how is the data stored
dim(gapminder) # how much data do we have ROWS COLUMNS

#Access data 
#R stores index from 1, not 0 like other langs
# first 10 rows, dont have to type 1,2,3 ... give 1:10 
#includes first an last values. so includes 1st element and 10th element. 
#gapminder[rows,cols]
gapminder[1,1] #selet single value
gapminder[1,] #select single row
gapminder[1:10,] # select 10 rows
gapminder[1:10,1:3] #select 10 rows and 3 cols


gapminder[c(1,13,25),1:3] #c- combine. create lists using this function. 

# if given gapminder[,-4] - it ignores 4th col
head(gapminder[-4,1:3]) #ignored 4th row. 
tempvar <- gapminder[,3]
min(tempvar)
max(tempvar)
mean(tempvar)
sd(tempvar)



#Exercise. 
# Create new datafram that contains only country names,years and life expectancies
#Use this dataframe to calc min and max expectancies.
newframevar <- gapminder[,c(1,2,5)]

min(newframevar[,3])
max(newframevar[,3])
sd(newframevar[,3])









