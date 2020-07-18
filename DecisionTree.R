library(readr)
library(rpart)
library(rpart.plot)

decision_tree_dataset_for_R <- read_csv("Desktop/Projects/Artist-promotion/decision_tree_dataset_for_R.csv")
#View(decision_tree_dataset_for_R)
data <- decision_tree_dataset_for_R

drop <- c('X1','pc1','pc2','mode')
data = data[,!(names(data) %in% drop)]

prune.control = rpart.control(minsplit = 1, minbucket = 1, maxdepth=5,cp = 0.001)


model <- rpart(formula = Label ~ .,
               data = data, 
               method = "class",control = prune.control)

rpart.plot(model,type=4)
