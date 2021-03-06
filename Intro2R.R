# Title:  Intro2R.R
# 09 March 2020
# Author: Tim Assal
# This script corresponds to the code examples in the Introduction to R lecture

#load package
library(tidyverse)

#Part 3

#import data
iris.df <- read_csv("SourceData/iris.csv")

#view data
view(iris.df)
head(iris.df)
str(iris.df)

#create new attribute
iris.df$IDENT<-paste("A", sep="-", 1:nrow(iris.df))

#export data
write_csv(iris, "DerivedData/iris_out.csv")
#####
####

# Part 4

#Plot a histogram
hist(iris$Petal.Length, main="Histogram of Petal Length")

#Plot a boxplot grouped by species
boxplot(Petal.Length~Species, data=iris.df,main="Boxplot by Species",xlab="Species")


#Plot a scatterplot
plot(iris$Petal.Width, iris$Petal.Lenth, main="Scatterplot")


#ggplot
ggplot(iris.df, aes(x = Petal.Width, y = Petal.Length)) +
  geom_point(aes(), shape = 19, color = "blue", alpha =0.4) +# alpha to fade points
  geom_smooth(method = "lm", se = FALSE, color = "black") #fit a line 

# Part 5

#run model
model1 <- lm(Petal.Length ~ Petal.Width, data = iris.df)
summary(model1)








ggplot(d, aes(x = Petal.Width, y = Petal.Length)) +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +  # Plot regression slope
  geom_segment(aes(xend = Petal.Width, yend = predicted), alpha = .2) +  # alpha to fade lines
  geom_point() +
  geom_point(aes(y = predicted), shape = 1, color = "red")
