library(ggplot2)

ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()+xlim(3,6)+ylim(10,30)

library(dplyr)

df_mpg<-mpg%>%
  
  group_by(drv)%>%
  
  summarise(mean_hwy=mean(hwy))

ggplot(data=df_mpg,aes(x=drv,y=mean_hwy))+geom_col()

ggplot(data=df_mpg,aes(x=reorder(drv,-mean_hwy),y=mean_hwy))+geom_col()

ggplot(data=economics,aes(x=date,y=unemploy))+geom_line()

ggplot(data=mpg,aes(x=drv,y=hwy))+geom_boxplot()


install.packages("foreign")

library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

raw_welfare<-read.spss(file="Koweps_hpc10_2015_beta1.sav",to.data.frame = T)

welfare<-raw_welfare

head(welfare)
tail(walfare)
View(walfare)
dim(walfare)
str(walfare)
summary(walfare)

class(welfare$sex)

table(welfare$sex)

welfare$sex<-ifelse(welfare$sex==9,NA,welfare$sex)

table(is.na(welfare$sex))

qplot(welfare$sex)


welfare<-welfare %>%
  mutate(ageg=ifelse(age<30,"yoing",
                     ifelse(age <= 59,"middle","old")))

table(welfare$ageg)

ageg_income<-welfare %>%
  filter(!is.na(income)) %>%
  group_by(ageg)%>%
  summarise(mean_income=mean(income))

ggplot(data=ageg_income,aes(x=ageg,y=mean_income)) + geom_col()

sex_income<-welfare %>%
  filter(is.na(income))%>%
  group_by(ageg,sex)%>%
  summarise(mean_income=mean(income))

ggplot(data=sex_income,aes(x=ageg,y=mean_income,fill=sex))+
  geom_col()+
  scale_x_discrete(limits=c("young","middle","old"))


job_male<-welfare%>%
  filter(!is.na(job)&sex=="male")%>%
  group_by(job)%>%
  summarise(n=n())%>%
  arrange(desc(n))%>%
  head(10)

ggplot(data=job_male,aes(x=reorder(job,n),y=n))
  geom_col()
  coord_flip()
  
ggplot(data=job_female,aes(x=reorder(job,n),y=n))+
  geom_col()+
  coord_flip()

class(welfare$religion)
table(welfare$religion)

ggplot(data=df_divorce,aes(x=ageg,y=pct,fill=religion))+
  geom_col(position="dodge")

class(welfare$code_region)
table(welfare$code_region)

ggplot(data=region_ageg,aes(x=region,y=pct,fill=ageg))+
  geom_col()+
  coord_flip()+
  scale_x_discrete(limits=order)