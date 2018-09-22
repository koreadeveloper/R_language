install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP")

library(KoNLP)
library(dplyr)

useNIADic()
txt <- readLines("hiphop.txt")
head(txt)

install.packages("stringr")
library("stringr")

txt<-str_replace_all(txt,"\\w"," ")

install.packages("wordcloud")

library(wordcloud)
library(RColorBrewer)

wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq =2,
          random.order=F,
          rot.per=.1,
          scale=c(4,0.3),
          colors=pal)



install.packages("ggiraphExtra")
library(ggiraphExtra)

str(USArrests)
head(USArrests)

library(tibble)

crime<-rownames_to_column(USArrests,var="state")
crime$state<-tolower(crime$state)

library(ggplot2)
states_map<-map_data("state")
str(states_map)

ggChoropleth(data=crime,
             aes(fill=Murder,
                 map_id=state),
             map=states_map,
             interactive = T)


install.packages("plotly")
library(plotly)

library(ggplot2)
p <- ggplot(data=mpg,aes(x=displ,y=hwy,col=drv)) + geom_point()

ggplotly(p)


p <- ggplot(data=diamonds,aes(x=cut,fill=clarity))+geom_bar(position="dodge")


ggplotly(p)


mpg<-as.data.frame(ggplot2::mpg)

library(dplyr)
mpg_diff<-mpg %>%
  select(class,cty)%>%
  filter(class %in% c("comact","suv"))

head(mpg_diff)
table(mpg_diff$class)

t.test(data=mpg_diff,cty~class,var.equal=T)


economics<-as.data.frame(ggplot2::economics)
cor.test(economics$unemploy,economics$pce)

head(mtcars)
car_cor<-cor(mtcars)
round(car_cor,2)

install.packages("corrplot")
library(corrplot)

corrplot(car_cor)

corrplot(car_cor,method="number")

col<-colorRampPalette(c("#BB4444","#EE9988","#FFFFFF","77AADD","#4477AA"))

corrplot(car_cor,
         method="color",
         col=col(200),
         type="lower",
         order="hclust",
         addCoef.col="black",
         tl.col="black",
         tl.srt=45,
         diag=F)