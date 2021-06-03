library(ggplot2)
library(dplyr)

setwd("C:/Users/hecqu/OneDrive/Bureau/20210704 macrto/output")
ACR0690704 <- read.csv(file = 'ACR069/nage/1/oui/particles.csv')
ACR0690704 <- ACR0690704[-c(8), ] #not worms
ACR0690704mouv <- read.csv(file = 'ACR069/Mouvement/2/particles.csv')
ACR0690704mouv$Moving..non.paralyzed. <- ifelse(grepl("T", ACR0690704mouv$Moving..non.paralyzed.), 100, 0)


ACR0700704 <- read.csv(file = 'ACR070/nage/x/particles.csv')
ACR0700704 <- ACR0700704[-c(11, 6, 14), ] #not worms
ACR0700704mouv <- read.csv(file = 'ACR070/mouv/particles.csv')
ACR0700704mouv$Moving..non.paralyzed. <- ifelse(grepl("T", ACR0700704mouv$Moving..non.paralyzed.), 100, 0)


setwd("C:/Users/hecqu/OneDrive/Bureau/20210904 Macro/ojutput")
ACR0690904 <- read.csv(file = 'ACR069/nage/particles.csv')
ACR0690904 <- ACR0690904[-c(1,5), ] #not worms
ACR0690904mouv <- read.csv(file = 'ACR069/mouv/particles.csv')
ACR0690904mouv$Moving..non.paralyzed. <- ifelse(grepl("T", ACR0690904mouv$Moving..non.paralyzed.), 100, 0)

ACR0700904mouv <- read.csv(file = 'ACR070/mouv/particles.csv')
ACR0700904mouv$Moving..non.paralyzed. <- ifelse(grepl("T", ACR0700904mouv$Moving..non.paralyzed.), 100, 0)

N20904 <- read.csv(file = 'N2/nagze/particles.csv')
N20904mouv <- read.csv(file = 'N2/mouv/particles.csv')
N20904mouv$Moving..non.paralyzed. <- ifelse(grepl("T", N20904mouv$Moving..non.paralyzed.), 100, 0)


Speed_Mean_ACR06907004 <- data.frame(Frame=ACR0690704mouv[4], Means=colMeans(ACR0690704mouv[4],na.rm = TRUE))
Speed_Mean_ACR06909004 <- data.frame(Frame=ACR0690904mouv[4], Means=colMeans(ACR0690904mouv[4],na.rm = TRUE))
Speed_ACR069tot <- rbind.data.frame(Speed_Mean_ACR06907004[1], Speed_Mean_ACR06909004[1])
Speed_Mean_ACR069tot <-  rbind.data.frame(Speed_Mean_ACR06907004[2,2], Speed_Mean_ACR06909004[2,2])
Speed_Mean_ACR069 <- data.frame(Frame=Speed_Mean_ACR069tot[1], Means=colMeans(Speed_Mean_ACR069tot[1],na.rm = TRUE)) # data frame with means for each time 
#colnames(Speed_Mean_ACR069)[1] <- "Means"


Speed_Mean_ACR07007004 <- data.frame(Frame=ACR0700704mouv[4], Means=colMeans(ACR0700704mouv[4],na.rm = TRUE))
Speed_Mean_ACR07009004 <- data.frame(Frame=ACR0700904mouv[4], Means=colMeans(ACR0700904mouv[4],na.rm = TRUE))
Speed_ACR070tot <- rbind.data.frame(Speed_Mean_ACR07007004[1], Speed_Mean_ACR07009004[1])
Speed_Mean_ACR070tot <-  rbind.data.frame(Speed_Mean_ACR07007004[2,2], Speed_Mean_ACR07009004[2,2])
Speed_Mean_ACR070 <- data.frame(Frame=Speed_Mean_ACR070tot[1], Means=colMeans(Speed_Mean_ACR070tot[1],na.rm = TRUE)) # data frame with means for each time 
#colnames(Speed_Mean_ACR070)[1] <- "Means"

Speed_N2tot <- rbind.data.frame(N20904mouv[4])
Speed_Mean_N209004 <- data.frame(Frame=N20904mouv[4], Means=colMeans(N20904mouv[4],na.rm = TRUE))

p<- ggplot() +
  
  
  geom_point(data=ACR0690704mouv, aes(x = "ACR069", y=Speed, color="Ver individuel"), size=5)+
  geom_point(data=ACR0690904mouv, aes(x = "ACR069", y=Speed, color="Ver individuel"), size=5)+
  geom_point(data=Speed_Mean_ACR069, aes(x = "ACR069", y=Means, color="Moyenne"),shape = 2, size=10)+

  geom_point(data=ACR0700704mouv, aes(x = "ACR070", y=Speed, color="Ver individuel"), size=5)+
  geom_point(data=ACR0700904mouv, aes(x = "ACR070", y=Speed, color="Ver individuel"), size=5)+
  geom_point(data=Speed_Mean_ACR070, aes(x = "ACR070", y=Means, color="Moyenne"), shape = 2, size=10)+
  
  geom_point(data=N20904mouv, aes(x = "N2", y=Speed, color='Ver individuel'), size=5)+
  geom_point(data=Speed_Mean_N209004, aes(x = "N2", y=Means, color='Moyenne'), shape = 2, size=10)+
  
  theme(legend.key = element_rect(fill = "white"))+
  labs(color = "Légende")+
  ylab("Vitesse (mm/sec)")+
  xlab(" ")+
  theme_light()+
  theme(text = element_text(size = 20))+
  ggtitle("Vitesse moyenne")
p

t.test(Speed_ACR070tot[1], Speed_ACR069tot[1])
t.test(Speed_N2tot[1], Speed_ACR069tot[1])
t.test(Speed_ACR070tot[1], Speed_N2tot[1])


Max_Speed_Mean_ACR06907004 <- data.frame(Frame=ACR0690704mouv[5], Means=colMeans(ACR0690704mouv[5],na.rm = TRUE))
Max_Speed_Mean_ACR06909004 <- data.frame(Frame=ACR0690904mouv[5], Means=colMeans(ACR0690904mouv[5],na.rm = TRUE))
Max_Speed_Mean_ACR069tot <-  rbind.data.frame(Max_Speed_Mean_ACR06907004[2,2], Max_Speed_Mean_ACR06909004[2,2])
Max_Speed_Mean_ACR069 <- data.frame(Frame=Max_Speed_Mean_ACR069tot[1], Means=colMeans(Max_Speed_Mean_ACR069tot[1],na.rm = TRUE))

Max_Speed_Mean_ACR07007004 <- data.frame(Frame=ACR0700704mouv[5], Means=colMeans(ACR0700704mouv[5],na.rm = TRUE))
Max_Speed_Mean_ACR07009004 <- data.frame(Frame=ACR0700904mouv[5], Means=colMeans(ACR0700904mouv[5],na.rm = TRUE))
Max_Speed_Mean_ACR070 <- data.frame(Frame=Max_Speed_Mean_ACR070tot[1], Means=colMeans(Max_Speed_Mean_ACR070tot[1],na.rm = TRUE))

Max_Speed_Mean_N20904 <- data.frame(Frame=N20904mouv[5], Means=colMeans(N20904mouv[5],na.rm = TRUE))

Max_Speed_ACR069tot <- rbind.data.frame(Max_Speed_Mean_ACR06907004[1], Max_Speed_Mean_ACR06909004[1])
Max_Speed_ACR070tot <-  rbind.data.frame(Max_Speed_Mean_ACR07007004[2,2], Max_Speed_Mean_ACR07009004[2,2])
Max_Speed_N2tot <- rbind.data.frame(N20904mouv[5])

p<- ggplot() +
  
  geom_point(data=ACR0690704mouv, aes(x = "ACR069", y=Max.speed, color="Ver individuel"), size=5)+
  geom_point(data=ACR0690904mouv, aes(x = "ACR069", y=Max.speed, color="Ver individuel"), size=5)+
  geom_point(data=Max_Speed_Mean_ACR06907004, aes(x = "ACR069", y=Means, color="Moyenne"), shape = 2, size=10)+

  geom_point(data=ACR0700704mouv, aes(x = "ACR070", y=Max.speed, color="Ver individuel"), size=5)+
  geom_point(data=ACR0700904mouv, aes(x = "ACR070", y=Max.speed, color="Ver individuel"), size=5)+
  geom_point(data=Max_Speed_Mean_ACR07007004, aes(x = "ACR070", y=Means, color="Moyenne"),shape = 2, size=10)+
  
  geom_point(data=N20904mouv, aes(x = "N2", y=Max.speed, color="Ver individuel"), size=5)+
  geom_point(data=Max_Speed_Mean_N20904, aes(x = "N2", y=Means, color="Moyenne"), shape = 2, size=10)+
  
  theme(legend.key = element_rect(fill = "white"))+
  labs(color = "Légende")+
  ylab("Vitesse (mm/sec)")+
  xlab(" ")+
  theme_light()+
  theme(text = element_text(size = 20))+
  ggtitle("Vitesse maximale")
p

t.test(Max_Speed_ACR070tot[1], Max_Speed_ACR069tot[1])
t.test(Max_Speed_N2tot[1], Max_Speed_ACR069tot[1])
t.test(Max_Speed_ACR070tot[1], Max_Speed_N2tot[1])

Eccentricity_Mean_N20904 <- data.frame(Frame=N20904[12], Means=colMeans(N20904[12],na.rm = TRUE)) # data frame with means for each time 

Eccentricity_Mean_ACR0700704 <- data.frame(Frame=ACR0700704[12], Means=colMeans(ACR0700704[12],na.rm = TRUE)) # data frame with means for each time 

Eccentricity_Mean_ACR0690704 <- data.frame(Frame=ACR0690704[12], Means=colMeans(ACR0690704[12],na.rm = TRUE)) # data frame with means for each time 
Eccentricity_Mean_ACR0690904 <- data.frame(Frame=ACR0690904[12], Means=colMeans(ACR0690904[12],na.rm = TRUE)) # data frame with means for each time 
Eccentricity_Mean_ACR069tot <-  rbind.data.frame(Eccentricity_Mean_ACR0690704[2,2], Eccentricity_Mean_ACR0690904[2,2])
Eccentricity_Mean_ACR069 <- data.frame(Frame=Eccentricity_Mean_ACR069tot[1], Means=colMeans(Eccentricity_Mean_ACR069tot[1],na.rm = TRUE)) # data frame with means for each time 
colnames(Eccentricity_Mean_ACR069tot)[1] <- "Means"

Eccentricity_ACR069tot <- rbind.data.frame(Eccentricity_Mean_ACR0690704[1], Eccentricity_Mean_ACR0690904[1])
Eccentricity_ACR070tot <-  rbind.data.frame(Eccentricity_Mean_ACR0700704[1])
Eccentricity_N2tot <- rbind.data.frame(N20904mouv[12])

t.test(Eccentricity_ACR070tot[1], Eccentricity_ACR069tot[1])
t.test(Eccentricity_N2tot[1], Eccentricity_ACR069tot[1])
t.test(Eccentricity_ACR070tot[1], Eccentricity_N2tot[1])


p<- ggplot() +
  geom_point(data=N20904, aes(x = "N2", y=Eccentricity, color="Ver individuel"), size=5)+
  geom_point(data=Eccentricity_Mean_N20904, aes(x = "N2", y=Means, color="Moyenne"),shape = 2, size=10)+

  geom_point(data=ACR0690904, aes(x = "ACR069", y=Eccentricity, color="Ver individuel"), size=5)+
  geom_point(data=Eccentricity_Mean_ACR069, aes(x = "ACR069", y=Means, color="Moyenne"), shape = 2, size=10)+
  geom_point(data=ACR0690704, aes(x = "ACR069", y=Eccentricity, color="Ver individuel"), size=5)+

  geom_point(data=ACR0700704, aes(x = "ACR070", y=Eccentricity, color="Ver individuel"), size=5)+
  geom_point(data=Eccentricity_Mean_ACR0700704, aes(x = "ACR070", y=Means, color="Moyenne"),shape = 2, size=10)+
  
  theme(legend.key = element_rect(fill = "white"))+
  labs(color = "Légende")+
  ylab("Excentricité")+
  xlab(" ")+
  theme_light()+
  theme(text = element_text(size = 20))+
  ggtitle("Excentricité moyenne des battements")
p


BPM_Mean_N20904 <- data.frame(Frame=N20904[2], Means=colMeans(N20904[2],na.rm = TRUE)) # data frame with means for each time 

BPM_ACR069tot <-  rbind.data.frame(ACR0690704[2], ACR0690904[2])
BPM_Mean_ACR069tot <- data.frame(Frame=BPM_ACR069tot, Means=colMeans(BPM_ACR069tot,na.rm = TRUE)) # data frame with means for each time

BPM_Mean_ACR0700704 <- data.frame(Frame=ACR0700704[2], Means=colMeans(ACR0700704[2],na.rm = TRUE)) # data frame with means for each time

BPM_ACR070tot <-  rbind.data.frame(BPM_Mean_ACR0700704[1])
BPM_N2tot <- rbind.data.frame(N20904[2])

t.test(BPM_ACR070tot[1], BPM_ACR069tot[1])
t.test(BPM_N2tot[1], BPM_ACR069tot[1])
t.test(BPM_ACR070tot[1], BPM_N2tot[1])

p<- ggplot() +
  geom_point(data=N20904, aes(x = "N2", y=BPM, color="Ver individuel"), size=5)+
  geom_point(data=BPM_Mean_N20904, aes(x = "N2", y=Means, color="Moyenne"),shape = 2, size=10)+

  geom_point(data=ACR0690904, aes(x = "ACR069", y=BPM, color="Ver individuel"), size=5)+
  geom_point(data=ACR0690704, aes(x = "ACR069", y=BPM, color="Ver individuel"), size=5)+
  geom_point(data=BPM_Mean_ACR069tot, aes(x = "ACR069", y=Means, color="Moyenne"), shape = 2, size=10)+

  geom_point(data=ACR0700704, aes(x = "ACR070", y=BPM, color="Ver individuel"), size=5)+
  geom_point(data=BPM_Mean_ACR0700704, aes(x = "ACR070", y=Means, color="Moyenne"),shape = 2, size=10)+
  theme(legend.key = element_rect(fill = "white"))+
  labs(color = "Légende")+
  ylab("Nombre de battements")+
  xlab(" ")+
  theme_light()+
  theme(text = element_text(size = 20))+
  ggtitle("Battements par minute")
p

t.test(BPM_Mean_ACR0700704[1], BPM_Mean_ACR069tot[1])

