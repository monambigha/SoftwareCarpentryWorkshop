# Load data set
gapminder <- read.csv("gapminder-FiveYearData.csv", header = TRUE)
names(gapminder)
gapminder$country
head(gapminder[,c('country','year','pop')])

#Selecting by logical vector  Example: only if the country is USA ... 
x <- c(1,2,3,11,12,13,14,25)
x<10
x==11
x!=11
x %in% 1:10

 head(gapminder[gapminder$year == 1962,])
#Exercise
long_lived <- gapminder[gapminder$lifeExp > 75,]
str(gapminder)
str(long_lived)
long_lived$country <- droplevels(long_lived$country) 
str(long_lived)

# Exercise 
# Create two boxplot
sixtythree=head(gapminder[gapminder$year==1962,])
sixtythree
plot(sixtythree$continent,sixtythree$lifeExp , main= "Continents vs Life Expectancies",
     xlab="Continents",ylab="Life Expectancies")
plot(gapminder$year,gapminder$lifeExp,main= "Years vs Life Expectancies",
     xlab="Years",ylab="Life Expectancies")



