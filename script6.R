exam<-read.csv("C:/Users/Admin/Desktop/exam.csv")

exam[]

exam[1,]

exam[2,]

exam[exam$class ==1,]

exam[exam$math>=80,]

exam[exam$class==1&exam$math>=50,]


exam[exam$english <90 | exam$science<50,]


exam[,1]

exam[,2]

exam[,3]

exam[,"class"]

exam[,"math"]

exam[,math]
exam[,"math"]

exam$tot<-(exam$math+exam$english+exam$science)/3
aggregate(data=exam[exam$math>=50&exam$english>=80,],tot~class,mean)


var1<-c(1,2,3,1,2)
var2<-factor(c(1,2,3,1,2))

var1

var2

var1+2

var2+2

class(var1)
class(var2)

levels(var1)
levels(var2)


a<-1
a

b<-"hello"
b
class(a)
class(b)

x1<-data.frame(var3 = c(1,2,3),
               var4 = c("a","b","C"))
x1
class(x1)
