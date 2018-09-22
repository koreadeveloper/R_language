a<-1
a

b<-2
b

c<-3
c

d<-3.5
d


a+b
mean(a+b+c)
max(var1)
min(var1)
4/b
5*b

var1<-c(1,2,5,7,8)
var1

var4<-seq(1,10,by=2)
var4

var1+var4

str1<-c(hello,world)
str1

paste(str1,",")

install.packages("ggplot2")

library(ggplot2)

x<-c("a","a","b","c")
x

qplot(x)
qplot(data=mpg,x=drv,y=hwy,geom="line")
qplot(data=mpg,x=drv,y=hwy,geom="boxplot",colour=drv)

?qplot


english <-c(90,80,60,70)
english

math<-c(50,60,100,20)
math

df_midterm <-data.frame(english,math)
df_midterm

class<-c(1,1,2,2)
class

df_midterm <-data.frame(english,math,class)
df_midterm

mean(df_midterm$english)
mean(df_midterm$math)

df_midterm<-data.frame(english=c(90,80,60,70),
                       math=c(50,60,100,20),
                       class=c(1,1,2,2))
df_midterm

install.packages("readxl")
library(readxl)

df_exam<-read_excel("d:/r/excel_exam.xlsx")
df_exam

mean(df_exam$english)
mean(df_exam$science)

df_exam_novar<-read_excel("excel_exam_novar.xlsx",col_names=F)
df_exam_novar

df_exam_csv<-read.csv("csv_exam.csv")
df_exam_csv

exam<-read.csv("csv_exam.csv")

head(exam,100)

tail(exam,10)

dim(exam)

View(exam)

str(exam)

summary(exam)

mpg<-as.data.frame(ggplot2::mpg)

head(mpg)

dim(mpg)

tail(mpg)

str(mpg)

?mpg

summary(mpg)

df_raw<-data.frame(var1=c(1,2,1),
                   var2=c(2,3,2))
df_raw