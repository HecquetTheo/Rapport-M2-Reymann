library(ggplot2)

#rentrée des données
LiveEggsN2_16 <- c(81,51,67)
dfLiveEggsN2_16 <- data.frame(LiveEggsN2_16)
dfLiveEggsN2_16$LiveEggsN2_16 <- unlist(dfLiveEggsN2_16$LiveEggsN2_16)
Means_LiveEggsN2_16 <- data.frame(Frame=dfLiveEggsN2_16[1], Means_LiveEggsN2_16=colMeans(dfLiveEggsN2_16[1], na.rm = TRUE)) #calcul de la moyenne
Means_LiveEggsN2_16[1] <- NULL
Mean_LiveEggsN2_16 <- data.frame(Means_LiveEggsN2_16[1,1])
colnames(Mean_LiveEggsN2_16) <- "Mean_LiveEggsN2_16"

LiveEggsACR069_16 <- c(45,59,40)
dfLiveEggsACR069_16 <- data.frame(LiveEggsACR069_16)
dfLiveEggsACR069_16$LiveEggsACR069_16 <- unlist(dfLiveEggsACR069_16$LiveEggsACR069_16)
Means_LiveEggsACR069_16 <- data.frame(Frame=dfLiveEggsACR069_16[1], Means_LiveEggsACR069_16=colMeans(dfLiveEggsACR069_16[1], na.rm = TRUE))
Means_LiveEggsACR069_16[1] <- NULL
Mean_LiveEggsACR069_16 <- data.frame(Means_LiveEggsACR069_16[1,1])
colnames(Mean_LiveEggsACR069_16) <- "Mean_LiveEggsACR069_16"

DeadEggsN2_16 <- c(0,0,0)
dfDeadEggsN2_16 <- data.frame(DeadEggsN2_16)
dfDeadEggsN2_16$DeadEggsN2_16 <- unlist(dfDeadEggsN2_16$DeadEggsN2_16)
Means_DeadEggsN2_16 <- data.frame(Frame=dfDeadEggsN2_16[1], Means_DeadEggsN2_16=colMeans(dfDeadEggsN2_16[1], na.rm = TRUE))
Means_DeadEggsN2_16[1] <- NULL
Mean_DeadEggsN2_16 <- data.frame(Means_DeadEggsN2_16[1,1])
colnames(Mean_DeadEggsN2_16) <- "Mean_DeadEggsN2_16"

DeadEggsACR069_16 <- c(0,0,0)
dfDeadEggsACR069_16 <- data.frame(DeadEggsACR069_16)
dfDeadEggsACR069_16$DeadEggsACR069_16 <- unlist(dfDeadEggsACR069_16$DeadEggsACR069_16)
Means_DeadEggsACR069_16 <- data.frame(Frame=dfDeadEggsACR069_16[1], Means_DeadEggsACR069_16=colMeans(dfDeadEggsACR069_16[1], na.rm = TRUE))
Means_DeadEggsACR069_16[1] <- NULL
Mean_DeadEggsACR069_16 <- data.frame(Means_DeadEggsACR069_16[1,1])
colnames(Mean_DeadEggsACR069_16) <- "Mean_DeadEggsACR069_16"


LiveEggsN2_RT <- c(16,28,61)
dfLiveEggsN2_RT <- data.frame(LiveEggsN2_RT)
dfLiveEggsN2_RT$LiveEggsN2_RT <- unlist(dfLiveEggsN2_RT$LiveEggsN2_RT)
Means_LiveEggsN2_RT <- data.frame(Frame=dfLiveEggsN2_RT[1], Means_LiveEggsN2_RT=colMeans(dfLiveEggsN2_RT[1], na.rm = TRUE))
Means_LiveEggsN2_RT[1] <- NULL
Mean_LiveEggsN2_RT <- data.frame(Means_LiveEggsN2_RT[1,1])
colnames(Mean_LiveEggsN2_RT) <- "Mean_LiveEggsN2_RT"

LiveEggsACR069_RT <- c(7,0,22)
dfLiveEggsACR069_RT <- data.frame(LiveEggsACR069_RT)
dfLiveEggsACR069_RT$LiveEggsACR069_RT <- unlist(dfLiveEggsACR069_RT$LiveEggsACR069_RT)
Means_LiveEggsACR069_RT <- data.frame(Frame=dfLiveEggsACR069_RT[1], Means_LiveEggsACR069_RT=colMeans(dfLiveEggsACR069_RT[1], na.rm = TRUE))
Means_LiveEggsACR069_RT[1] <- NULL
Mean_LiveEggsACR069_RT <- data.frame(Means_LiveEggsACR069_RT[1,1])
colnames(Mean_LiveEggsACR069_RT) <- "Mean_LiveEggsACR069_RT"

DeadEggsN2_RT <- c(20,5,0)
dfDeadEggsN2_RT <- data.frame(DeadEggsN2_RT)
dfDeadEggsN2_RT$DeadEggsN2_RT <- unlist(dfDeadEggsN2_RT$DeadEggsN2_RT)
Means_DeadEggsN2_RT <- data.frame(Frame=dfDeadEggsN2_RT[1], Means_DeadEggsN2_RT=colMeans(dfDeadEggsN2_RT[1], na.rm = TRUE))
Means_DeadEggsN2_RT[1] <- NULL
Mean_DeadEggsN2_RT <- data.frame(Means_DeadEggsN2_RT[1,1])
colnames(Mean_DeadEggsN2_RT) <- "Mean_DeadEggsN2_RT"

DeadEggsACR069_RT <- c(33,66,38)
dfDeadEggsACR069_RT <- data.frame(DeadEggsACR069_RT)
dfDeadEggsACR069_RT$DeadEggsACR069_RT <- unlist(dfDeadEggsACR069_RT$DeadEggsACR069_RT)
Means_DeadEggsACR069_RT <- data.frame(Frame=dfDeadEggsACR069_RT[1], Means_DeadEggsACR069_RT=colMeans(dfDeadEggsACR069_RT[1], na.rm = TRUE))
Means_DeadEggsACR069_RT[1] <- NULL
Mean_DeadEggsACR069_RT <- data.frame(Means_DeadEggsACR069_RT[1,1])
colnames(Mean_DeadEggsACR069_RT) <- "Mean_DeadEggsACR069_RT"


p <- ggplot()+
  geom_point(data=dfLiveEggsN2_16, aes(x="Vivants 16°C", y=LiveEggsN2_16, color ="N2"), size = 5)+
  geom_point(data=Mean_LiveEggsN2_16, aes(x="Vivants 16°C", y=Mean_LiveEggsN2_16,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfLiveEggsACR069_16, aes(x="Vivants 16°C", y=LiveEggsACR069_16, color ="ACR069"), size = 5)+
  geom_point(data=Mean_LiveEggsACR069_16, aes(x="Vivants 16°C", y=Mean_LiveEggsACR069_16,color="ACR069"), shape = 2, size = 10)+
  
  geom_point(data=dfDeadEggsN2_16, aes(x="Morts 16°C", y=DeadEggsN2_16, color ="N2"), size = 5)+
  geom_point(data=Mean_DeadEggsN2_16, aes(x="Morts 16°C", y=Mean_DeadEggsN2_16,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfDeadEggsACR069_16, aes(x="Morts 16°C", y=DeadEggsACR069_16, color ="ACR069"), size = 5)+
  geom_point(data=Mean_DeadEggsACR069_16, aes(x="Morts 16°C", y=Mean_DeadEggsACR069_16,color="ACR069"), shape = 2, size = 10)+
  
  geom_point(data=dfLiveEggsN2_RT, aes(x="Vivants RT°C", y=LiveEggsN2_RT, color ="N2"), size = 5)+
  geom_point(data=Mean_LiveEggsN2_RT, aes(x="Vivants RT°C", y=Mean_LiveEggsN2_RT,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfLiveEggsACR069_RT, aes(x="Vivants RT°C", y=LiveEggsACR069_RT, color ="ACR069"), size = 5)+
  geom_point(data=Mean_LiveEggsACR069_RT, aes(x="Vivants RT°C", y=Mean_LiveEggsACR069_RT,color="ACR069"), shape = 2, size = 10)+
  
  geom_point(data=dfDeadEggsN2_RT, aes(x="Morts RT°C", y=DeadEggsN2_RT, color ="N2"), size = 5)+
  geom_point(data=Mean_DeadEggsN2_RT, aes(x="Morts RT°C", y=Mean_DeadEggsN2_RT,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfDeadEggsACR069_RT, aes(x="Morts RT°C", y=DeadEggsACR069_RT, color ="ACR069"), size = 5)+
  geom_point(data=Mean_DeadEggsACR069_RT, aes(x="Morts RT°C", y=Mean_DeadEggsACR069_RT,color="ACR069"), shape = 2, size = 10)+
  
  theme(legend.key = element_rect(fill = "white"))+
  labs(color = "Souches")+
  ylab("Nombre d'oeufs")+
  xlab(" ")+
  theme_light()+
  scale_color_brewer(palette="Dark2")+
  theme(text = element_text(size = 20)) 

  ggtitle(" ")

p

t.test(DeadEggsN2_RT, DeadEggsACR069_RT)
t.test(LiveEggsN2_RT, LiveEggsACR069_RT)
t.test(LiveEggsN2_16, LiveEggsACR069_16)

WormsN2_16 <- c(3,3,5)
dfWormsN2_16 <- data.frame(WormsN2_16)
dfWormsN2_16$WormsN2_16 <- unlist(dfWormsN2_16$WormsN2_16)
Means_WormsN2_16 <- data.frame(Frame=dfWormsN2_16[1], Means_WormsN2_16=colMeans(dfWormsN2_16[1], na.rm = TRUE))
Means_WormsN2_16[1] <- NULL
Mean_WormsN2_16 <- data.frame(Means_WormsN2_16[1,1])
colnames(Mean_WormsN2_16) <- "Mean_WormsN2_16"


WormsACR069_16 <- c(4,5,4)
dfWormsACR069_16 <- data.frame(WormsACR069_16)
dfWormsACR069_16$WormsACR069_16 <- unlist(dfWormsACR069_16$WormsACR069_16)
Means_WormsACR069_16 <- data.frame(Frame=dfWormsACR069_16[1], Means_WormsACR069_16=colMeans(dfWormsACR069_16[1], na.rm = TRUE))
Means_WormsACR069_16[1] <- NULL
Mean_WormsACR069_16 <- data.frame(Means_WormsACR069_16[1,1])
colnames(Mean_WormsACR069_16) <- "Mean_WormsACR069_16"

WormsN2_RT <- c(87,46,71)
dfWormsN2_RT <- data.frame(WormsN2_RT)
dfWormsN2_RT$WormsN2_RT <- unlist(dfWormsN2_RT$WormsN2_RT)
Means_WormsN2_RT <- data.frame(Frame=dfWormsN2_RT[1], Means_WormsN2_RT=colMeans(dfWormsN2_RT[1], na.rm = TRUE))
Means_WormsN2_RT[1] <- NULL
Mean_WormsN2_RT <- data.frame(Means_WormsN2_RT[1,1])
colnames(Mean_WormsN2_RT) <- "Mean_WormsN2_RT"

WormsACR069_RT <- c(53,43,41)
dfWormsACR069_RT <- data.frame(WormsACR069_RT)
dfWormsACR069_RT$WormsACR069_RT <- unlist(dfWormsACR069_RT$WormsACR069_RT)
Means_WormsACR069_RT <- data.frame(Frame=dfWormsACR069_RT[1], Means_WormsACR069_RT=colMeans(dfWormsACR069_RT[1], na.rm = TRUE))
Means_WormsACR069_RT[1] <- NULL
Mean_WormsACR069_RT <- data.frame(Means_WormsACR069_RT[1,1])
colnames(Mean_WormsACR069_RT) <- "Mean_WormsACR069_RT"

p <- ggplot()+
  geom_point(data=dfWormsN2_16, aes(x="16°C", y=WormsN2_16, color ="N2"), size = 5)+
  geom_point(data=Mean_WormsN2_16, aes(x="16°C", y=Mean_WormsN2_16,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfWormsACR069_16, aes(x="16°C", y=WormsACR069_16, color ="ACR069"), size = 5)+
  geom_point(data=Mean_WormsACR069_16, aes(x="16°C", y=Mean_WormsACR069_16,color="ACR069"), shape = 2, size = 10)+
  
  geom_point(data=dfWormsN2_RT, aes(x="RT°C", y=WormsN2_RT, color ="N2"), size = 5)+
  geom_point(data=Mean_WormsN2_RT, aes(x="RT°C", y=Mean_WormsN2_RT,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfWormsACR069_RT, aes(x="RT°C", y=WormsACR069_RT, color ="ACR069"), size = 5)+
  geom_point(data=Mean_WormsACR069_RT, aes(x="RT°C", y=Mean_WormsACR069_RT,color="ACR069"), shape = 2, size = 10)+
  
  theme(legend.key = element_rect(fill = "white"))+
  labs(color = "Souches")+
  ylab("Nombre de vers")+
  xlab(" ")+
  theme_light()+
  scale_color_brewer(palette="Dark2")+
  theme(text = element_text(size = 20)) 
  ggtitle(" ")

p

t.test(WormsACR069_RT, WormsN2_RT)

totalN216 <-  Mean_LiveEggsN2_16 + Mean_DeadEggsN2_16 +Mean_WormsN2_16
totalACR06916 <-  Mean_LiveEggsACR069_16 + Mean_DeadEggsACR069_16 +Mean_WormsACR069_16
totalN2RT <-  Mean_LiveEggsN2_RT + Mean_DeadEggsN2_RT +Mean_WormsN2_RT
totalACR069RT <-  Mean_LiveEggsACR069_RT + Mean_DeadEggsACR069_RT + Mean_WormsACR069_RT

LiveEggsN216Percentage <- (Mean_LiveEggsN2_16 / totalN216) *100
colnames(LiveEggsN216Percentage) <- "Number"
LiveEggsN216Percentage$Temp="16°C N2"
LiveEggsN216Percentage$Type="Oeufs vivants"

DeadEggsN216Percentage <- (Mean_DeadEggsN2_16 / totalN216) *100
colnames(DeadEggsN216Percentage) <- "Number"
DeadEggsN216Percentage$Temp="16°C N2"
DeadEggsN216Percentage$Type="Oeufs morts"

WormsN216Percentage <- (Mean_WormsN2_16 / totalN216) *100
colnames(WormsN216Percentage) <- "Number"
WormsN216Percentage$Temp="16°C N2"
WormsN216Percentage$Type="Vers"

LiveEggsACR06916Percentage <- (Mean_LiveEggsACR069_16 / totalACR06916) *100
colnames(LiveEggsACR06916Percentage) <- "Number"
LiveEggsACR06916Percentage$Temp="16°C ACR069"
LiveEggsACR06916Percentage$Type="Oeufs vivants"
DeadEggsACR06916Percentage <- (Mean_DeadEggsACR069_16 / totalACR06916) *100
colnames(DeadEggsACR06916Percentage) <- "Number"
DeadEggsACR06916Percentage$Temp="16°C ACR069"
DeadEggsACR06916Percentage$Type="Oeufs morts"
WormsACR06916Percentage <- (Mean_WormsACR069_16 / totalACR06916) *100
colnames(WormsACR06916Percentage) <- "Number"
WormsACR06916Percentage$Temp="16°C ACR069"
WormsACR06916Percentage$Type="Vers"

LiveEggsN2RTPercentage <- (Mean_LiveEggsN2_RT / totalN2RT) *100
colnames(LiveEggsN2RTPercentage) <- "Number"
LiveEggsN2RTPercentage$Temp="RT N2"
LiveEggsN2RTPercentage$Type="Oeufs vivants"

DeadEggsN2RTPercentage <- (Mean_DeadEggsN2_RT / totalN2RT) *100
colnames(DeadEggsN2RTPercentage) <- "Number"
DeadEggsN2RTPercentage$Temp="RT N2"
DeadEggsN2RTPercentage$Type="Oeufs morts"

WormsN2RTPercentage <- (Mean_WormsN2_RT / totalN2RT) *100
colnames(WormsN2RTPercentage) <- "Number"
WormsN2RTPercentage$Temp="RT N2"
WormsN2RTPercentage$Type="Vers"

LiveEggsACR069RTPercentage <- (Mean_LiveEggsACR069_RT / totalACR069RT) *100
colnames(LiveEggsACR069RTPercentage) <- "Number"
LiveEggsACR069RTPercentage$Temp="RT ACR069"
LiveEggsACR069RTPercentage$Type="Oeufs vivants"
DeadEggsACR069RTPercentage <- (Mean_DeadEggsACR069_RT / totalACR069RT) *100
colnames(DeadEggsACR069RTPercentage) <- "Number"
DeadEggsACR069RTPercentage$Temp="RT ACR069"
DeadEggsACR069RTPercentage$Type="Oeufs morts"
WormsACR069RTPercentage <- (Mean_WormsACR069_RT / totalACR069RT) *100
colnames(WormsACR069RTPercentage) <- "Number"
WormsACR069RTPercentage$Temp="RT ACR069"
WormsACR069RTPercentage$Type="Vers"

PoolData <- rbind.data.frame(LiveEggsN216Percentage,DeadEggsN216Percentage,WormsN216Percentage,LiveEggsACR06916Percentage,DeadEggsACR06916Percentage,WormsACR06916Percentage,LiveEggsN2RTPercentage,DeadEggsN2RTPercentage,WormsN2RTPercentage,LiveEggsACR069RTPercentage,DeadEggsACR069RTPercentage,WormsACR069RTPercentage
)

p <- ggplot(PoolData, aes(fill=Type, y=Number, x=Temp))+
  geom_bar(position="stack", stat="identity")+
            

  theme(legend.key = element_rect(fill = "white"))+
  labs(fill = "")+
  ylab("Pourcentage")+
  xlab(" ")+
  theme_light()+
  scale_color_brewer(palette="Dark2")+
  theme(text = element_text(size = 20)) 
p

Dead <- c(25,137)
Live <- c(105,29)
stat <- data.frame(Dead, Live)
fisher.test(stat)
