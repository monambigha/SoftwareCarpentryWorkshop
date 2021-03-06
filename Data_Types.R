#Six Types of Data
#1.Character
c <- 'a'
c <-'Hello World'
#2.Numeric
n <- 2
n <- 3.41
#3.Integer
i <- 2L
#4.Complex
comp <- 1+4i

#5.Logical
l<-TRUE
l<-FALSE
#6.List

#Simple Examples
s <- "Hello World"
class(s)
typeof(s)

s <- 1
class(s)
typeof(s)

s <- 1L
class(s)
typeof(s)

z <- as.numeric(s)
class(z)
typeof(z)
length(z)

#Data Structures - 
# atomic vector-stores same data type, cant mix
# lists - stores diff types 
# matrix
# data frame

#Example
# atomic vector-stores same data type, cant mix

log_vector <- c(TRUE,TRUE,FALSE,TRUE)
char_vector <- c("Amber","Beta","Charlie")
char_vector <- c(char_vector,"Delta")

char_vector
length(char_vector)
class(char_vector)


#Empty Data -> use NA
a <- c("A","B",NA,"D")
 length(a)
 
#Extremes
 1/0
 0/0

 anyNA(a) # if any value in 'a' is empty
 
mixed <- c(TRUE,"A")
mixed
as.logical(mixed)


my_list <- list(1, "A", TRUE)
my_list

phonebook <- list(name='Asher', phone='111-1111' , age=27)
phonebook['name']

m <- matrix(1:6, nrow=2,ncol=3, byrow = TRUE)
m

# Data Frames
 df <- data.frame(id=letters[1:10], x=1:10 ,y=11:20)
df
class(df)
typeof(df)
head(df)
tail(df)
nrow(df)
ncol(df)

str(df)
summary(df)
names(df)
#Factor- categorical data : How many arizona are there etc. Survey- ppl in this room,state born
# R will automatically assumes, the strings are factors. 

##explicitly create factor by 
state <- factor(c("Arizona","Colorado","Arizona"))
state
nlevels(state)
levels(state)

ratings <- factor(c("low","high","medium","low"))
ratings
min(ratings) # doesnt work coz its string

ratings <- factor(ratings,levels=c("low","high","medium"),ordered = TRUE)
levels(ratings)
min(ratings)

survey = data.frame(name=c("Jack","Jill","Maria","Clark","Steve"), sex=c("M","f","F","M","M"))
str(survey)

barplot(table(survey$sex))
survey$sex[survey$sex == 'f'] <- "F"
survey
survey$sex <- droplevels(survey$sex)


# Exercise, which col in gapminder dataset are factors, hint use 'str' or summary

str(gapminder)


