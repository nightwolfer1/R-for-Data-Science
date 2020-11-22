

#iris data set, importng data on R with link 

link = "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
iris = read.csv(url(link),header=FALSE)
#view function
#View(iris) #lets us view the dataset.
#imported localy
#iris2=read.csv(file="iris.data",header=FALSE)
#View(iris2)

#finding dimensions Rows Columns
dim(iris)



#adding column names
colnames(iris) = c('PLength','Pwidth','SLength','Swidth','Type')

#missing values
is.na(iris)#returns boolean dataframe if value is null returns True
any(is.na(iris))#looks at all the data if True it contains null value
sum(is.na(iris))#returns the quantity of null values in dataframe
#dataframe containing null values
df=data.frame(c(1,2,3,6),c(3,4,NA,NA))
is.na(df)#.. same for the rest of the methods can be applies 

#Visualization

x=c(1,2,3,4)
y=c(1,2,3,4)
plot(x,y, type='l',main='Hi',xlab='x',ylab='y')#gives scatter points (points) as standard with type which type of plot can be defined


#plot(iris) will plot every column of the dataset
plot(iris)
#plot indivual column of dataset #x_values is the index, and y_values are the values contained in the column.
plot(iris$Swidth)
#bar plot
barplot(iris$Swidth,col='green')
#box plot
boxplot(iris$Swidth,col='green')
#histogram
hist(iris$Swidth,col='green')
