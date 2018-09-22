install.packages("dplyr")

library(dplyr)
exam<-read.csv("csv_exam.csv")
exam

exam %>% filter(class==1)

exam %>% filter(class != 1)

exam %>% select(english)

exam %>%
  mutate(total = math+english+science,
         mean = (math+english+science)/3) %>%
  head


df<-data.frame(sex=c("M","F",NA,"M","F"),
               score=c(5,4,3,4,NA))
df

is.na(df)

table(is.na(df))

table(is.na(df$sex))
table(is.na(df$score))

mean(df$score)
sum(df$score)

library(dplyr)
df %>% filter(is.na(score))

df%>%filter(!is.na(score))

df_nomiss<-df%>%filter(!is.na(score))
mean(df_nomiss$score)
sum(df_nomiss$score)

df_nomiss<-df%>%filter(!is.na(score)&!is.na(sex))
df_nomiss

df_nomiss2<-na.omit(df)
df_nomiss2

mean(df$score,na.rm=T)
sum(df$score,na.rm=T)

exam<-read.csv("csv_exam.csv")
exam[c(3,8,15),"math"]<-NA
exam

