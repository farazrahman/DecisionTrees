library(tidyverse)
library(rpart)
library(rpart.plot)


#using the default parameters of the rpart() function. 
#The function rpart() stands for 'recursive partitioning'; this is used to build trees in R.
#Use all the attributes for tree construction.

heart$`heart disease` <- as.factor(heart$`heart disease`)
tree = rpart(`heart disease`~., data = heart)
prp(tree)
