# Real Data Set


#create a new directory
dir.create("data")
#download a file. 
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv"
              ,destfile = "data/gapminder.csv"
              )