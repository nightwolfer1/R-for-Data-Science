#machine learning
#model that can predict sepal width from iris data set with known sepal length.

#1 load dataset
iris=read.csv(file="iris.data",header=FALSE)
#View(iris)
#2 Preprocess the dataset
colnames(iris) = c('PLength','Pwidth','SLength','Swidth','Type')
Sepalwidth=iris[,"Pwidth"]
SepalLength=iris[,"PLength"]
#3 Visualize the data
plot(SepalLength,Sepalwidth)
#build machine learning model
model=lm(Sepalwidth~SepalLength)
#predict using function
predict(model,data.frame(SepalLength=15))
