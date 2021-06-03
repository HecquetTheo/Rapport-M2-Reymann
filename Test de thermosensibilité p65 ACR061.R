library(ggplot2)


LiveEggsN2_16 <- c(21,31,32)
dfLiveEggsN2_16 <- data.frame(LiveEggsN2_16)
dfLiveEggsN2_16$LiveEggsN2_16 <- unlist(dfLiveEggsN2_16$LiveEggsN2_16)
Means_LiveEggsN2_16 <- data.frame(Frame=dfLiveEggsN2_16[1], Means_LiveEggsN2_16=colMeans(dfLiveEggsN2_16[1], na.rm = TRUE))
Means_LiveEggsN2_16[1] <- NULL
Mean_LiveEggsN2_16 <- data.frame(Means_LiveEggsN2_16[1,1])
colnames(Mean_LiveEggsN2_16) <- "Mean_LiveEggsN2_16"

LiveEggsACR061_16 <- c(50,22,35)
dfLiveEggsACR061_16 <- data.frame(LiveEggsACR061_16)
dfLiveEggsACR061_16$LiveEggsACR061_16 <- unlist(dfLiveEggsACR061_16$LiveEggsACR061_16)
Means_LiveEggsACR061_16 <- data.frame(Frame=dfLiveEggsACR061_16[1], Means_LiveEggsACR061_16=colMeans(dfLiveEggsACR061_16[1], na.rm = TRUE))
Means_LiveEggsACR061_16[1] <- NULL
Mean_LiveEggsACR061_16 <- data.frame(Means_LiveEggsACR061_16[1,1])
colnames(Mean_LiveEggsACR061_16) <- "Mean_LiveEggsACR061_16"

DeadEggsN2_16 <- c(0,0,0)
dfDeadEggsN2_16 <- data.frame(DeadEggsN2_16)
dfDeadEggsN2_16$DeadEggsN2_16 <- unlist(dfDeadEggsN2_16$DeadEggsN2_16)
Means_DeadEggsN2_16 <- data.frame(Frame=dfDeadEggsN2_16[1], Means_DeadEggsN2_16=colMeans(dfDeadEggsN2_16[1], na.rm = TRUE))
Means_DeadEggsN2_16[1] <- NULL
Mean_DeadEggsN2_16 <- data.frame(Means_DeadEggsN2_16[1,1])
colnames(Mean_DeadEggsN2_16) <- "Mean_DeadEggsN2_16"

DeadEggsACR061_16 <- c(0,0,0)
dfDeadEggsACR061_16 <- data.frame(DeadEggsACR061_16)
dfDeadEggsACR061_16$DeadEggsACR061_16 <- unlist(dfDeadEggsACR061_16$DeadEggsACR061_16)
Means_DeadEggsACR061_16 <- data.frame(Frame=dfDeadEggsACR061_16[1], Means_DeadEggsACR061_16=colMeans(dfDeadEggsACR061_16[1], na.rm = TRUE))
Means_DeadEggsACR061_16[1] <- NULL
Mean_DeadEggsACR061_16 <- data.frame(Means_DeadEggsACR061_16[1,1])
colnames(Mean_DeadEggsACR061_16) <- "Mean_DeadEggsACR061_16"


LiveEggsN2_26 <- c(58,15,56)
dfLiveEggsN2_26 <- data.frame(LiveEggsN2_26)
dfLiveEggsN2_26$LiveEggsN2_26 <- unlist(dfLiveEggsN2_26$LiveEggsN2_26)
Means_LiveEggsN2_26 <- data.frame(Frame=dfLiveEggsN2_26[1], Means_LiveEggsN2_26=colMeans(dfLiveEggsN2_26[1], na.rm = TRUE))
Means_LiveEggsN2_26[1] <- NULL
Mean_LiveEggsN2_26 <- data.frame(Means_LiveEggsN2_26[1,1])
colnames(Mean_LiveEggsN2_26) <- "Mean_LiveEggsN2_26"

LiveEggsACR061_26 <- c(41,1,56)
dfLiveEggsACR061_26 <- data.frame(LiveEggsACR061_26)
dfLiveEggsACR061_26$LiveEggsACR061_26 <- unlist(dfLiveEggsACR061_26$LiveEggsACR061_26)
Means_LiveEggsACR061_26 <- data.frame(Frame=dfLiveEggsACR061_26[1], Means_LiveEggsACR061_26=colMeans(dfLiveEggsACR061_26[1], na.rm = TRUE))
Means_LiveEggsACR061_26[1] <- NULL
Mean_LiveEggsACR061_26 <- data.frame(Means_LiveEggsACR061_26[1,1])
colnames(Mean_LiveEggsACR061_26) <- "Mean_LiveEggsACR061_26"

DeadEggsN2_26 <- c(0,13,0)
dfDeadEggsN2_26 <- data.frame(DeadEggsN2_26)
dfDeadEggsN2_26$DeadEggsN2_26 <- unlist(dfDeadEggsN2_26$DeadEggsN2_26)
Means_DeadEggsN2_26 <- data.frame(Frame=dfDeadEggsN2_26[1], Means_DeadEggsN2_26=colMeans(dfDeadEggsN2_26[1], na.rm = TRUE))
Means_DeadEggsN2_26[1] <- NULL
Mean_DeadEggsN2_26 <- data.frame(Means_DeadEggsN2_26[1,1])
colnames(Mean_DeadEggsN2_26) <- "Mean_DeadEggsN2_26"

DeadEggsACR061_26 <- c(6,3,0)
dfDeadEggsACR061_26 <- data.frame(DeadEggsACR061_26)
dfDeadEggsACR061_26$DeadEggsACR061_26 <- unlist(dfDeadEggsACR061_26$DeadEggsACR061_26)
Means_DeadEggsACR061_26 <- data.frame(Frame=dfDeadEggsACR061_26[1], Means_DeadEggsACR061_26=colMeans(dfDeadEggsACR061_26[1], na.rm = TRUE))
Means_DeadEggsACR061_26[1] <- NULL
Mean_DeadEggsACR061_26 <- data.frame(Means_DeadEggsACR061_26[1,1])
colnames(Mean_DeadEggsACR061_26) <- "Mean_DeadEggsACR061_26"


p <- ggplot()+
  geom_point(data=dfLiveEggsN2_16, aes(x="Vivants 16°C", y=LiveEggsN2_16, color ="N2"), size = 5)+
  geom_point(data=Mean_LiveEggsN2_16, aes(x="Vivants 16°C", y=Mean_LiveEggsN2_16,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfLiveEggsACR061_16, aes(x="Vivants 16°C", y=LiveEggsACR061_16, color ="ACR061"), size = 5)+
  geom_point(data=Mean_LiveEggsACR061_16, aes(x="Vivants 16°C", y=Mean_LiveEggsACR061_16,color="ACR061"), shape = 2, size = 10)+
  
  geom_point(data=dfDeadEggsN2_16, aes(x="Morts 16°C", y=DeadEggsN2_16, color ="N2"), size = 5)+
  geom_point(data=Mean_DeadEggsN2_16, aes(x="Morts 16°C", y=Mean_DeadEggsN2_16,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfDeadEggsACR061_16, aes(x="Morts 16°C", y=DeadEggsACR061_16, color ="ACR061"), size = 5)+
  geom_point(data=Mean_DeadEggsACR061_16, aes(x="Morts 16°C", y=Mean_DeadEggsACR061_16,color="ACR061"), shape = 2, size = 10)+
  
  geom_point(data=dfLiveEggsN2_26, aes(x="Vivants 26°C", y=LiveEggsN2_26, color ="N2"), size = 5)+
  geom_point(data=Mean_LiveEggsN2_26, aes(x="Vivants 26°C", y=Mean_LiveEggsN2_26,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfLiveEggsACR061_26, aes(x="Vivants 26°C", y=LiveEggsACR061_26, color ="ACR061"), size = 5)+
  geom_point(data=Mean_LiveEggsACR061_26, aes(x="Vivants 26°C", y=Mean_LiveEggsACR061_26,color="ACR061"), shape = 2, size = 10)+
  
  geom_point(data=dfDeadEggsN2_26, aes(x="Morts 26°C", y=DeadEggsN2_26, color ="N2"), size = 5)+
  geom_point(data=Mean_DeadEggsN2_26, aes(x="Morts 26°C", y=Mean_DeadEggsN2_26,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfDeadEggsACR061_26, aes(x="Morts 26°C", y=DeadEggsACR061_26, color ="ACR061"), size = 5)+
  geom_point(data=Mean_DeadEggsACR061_26, aes(x="Morts 26°C", y=Mean_DeadEggsACR061_26,color="ACR061"), shape = 2, size = 10)+
  
  theme(legend.key = element_rect(fill = "white"))+
  labs(color = "Souches")+
  ylab("Nombre d'oeufs")+
  xlab(" ")+
  theme_light()+
  scale_color_brewer(palette="Dark2")+
  theme(text = element_text(size = 20))
  ggtitle("Test de thermosensitivité p.65")

p

WormsN2_16 <- c(3,5,6)
dfWormsN2_16 <- data.frame(WormsN2_16)
dfWormsN2_16$WormsN2_16 <- unlist(dfWormsN2_16$WormsN2_16)
Means_WormsN2_16 <- data.frame(Frame=dfWormsN2_16[1], Means_WormsN2_16=colMeans(dfWormsN2_16[1], na.rm = TRUE))
Means_WormsN2_16[1] <- NULL
Mean_WormsN2_16 <- data.frame(Means_WormsN2_16[1,1])
colnames(Mean_WormsN2_16) <- "Mean_WormsN2_16"


WormsACR061_16 <- c(9,8,13)
dfWormsACR061_16 <- data.frame(WormsACR061_16)
dfWormsACR061_16$WormsACR061_16 <- unlist(dfWormsACR061_16$WormsACR061_16)
Means_WormsACR061_16 <- data.frame(Frame=dfWormsACR061_16[1], Means_WormsACR061_16=colMeans(dfWormsACR061_16[1], na.rm = TRUE))
Means_WormsACR061_16[1] <- NULL
Mean_WormsACR061_16 <- data.frame(Means_WormsACR061_16[1,1])
colnames(Mean_WormsACR061_16) <- "Mean_WormsACR061_16"

WormsN2_26 <- c(53,69,44)
dfWormsN2_26 <- data.frame(WormsN2_26)
dfWormsN2_26$WormsN2_26 <- unlist(dfWormsN2_26$WormsN2_26)
Means_WormsN2_26 <- data.frame(Frame=dfWormsN2_26[1], Means_WormsN2_26=colMeans(dfWormsN2_26[1], na.rm = TRUE))
Means_WormsN2_26[1] <- NULL
Mean_WormsN2_26 <- data.frame(Means_WormsN2_26[1,1])
colnames(Mean_WormsN2_26) <- "Mean_WormsN2_26"

WormsACR061_26 <- c(34,49,36)
dfWormsACR061_26 <- data.frame(WormsACR061_26)
dfWormsACR061_26$WormsACR061_26 <- unlist(dfWormsACR061_26$WormsACR061_26)
Means_WormsACR061_26 <- data.frame(Frame=dfWormsACR061_26[1], Means_WormsACR061_26=colMeans(dfWormsACR061_26[1], na.rm = TRUE))
Means_WormsACR061_26[1] <- NULL
Mean_WormsACR061_26 <- data.frame(Means_WormsACR061_26[1,1])
colnames(Mean_WormsACR061_26) <- "Mean_WormsACR061_26"

p <- ggplot()+
  geom_point(data=dfWormsN2_16, aes(x="16°C", y=WormsN2_16, color ="N2"), size = 5)+
  geom_point(data=Mean_WormsN2_16, aes(x="16°C", y=Mean_WormsN2_16,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfWormsACR061_16, aes(x="16°C", y=WormsACR061_16, color ="ACR061"), size = 5)+
  geom_point(data=Mean_WormsACR061_16, aes(x="16°C", y=Mean_WormsACR061_16,color="ACR061"), shape = 2, size = 10)+
  
  geom_point(data=dfWormsN2_26, aes(x="26°C", y=WormsN2_26, color ="N2"), size = 5)+
  geom_point(data=Mean_WormsN2_26, aes(x="26°C", y=Mean_WormsN2_26,color="N2"), shape = 2, size = 10)+
  geom_point(data=dfWormsACR061_26, aes(x="26°C", y=WormsACR061_26, color ="ACR061"), size = 5)+
  geom_point(data=Mean_WormsACR061_26, aes(x="26°C", y=Mean_WormsACR061_26,color="ACR061"), shape = 2, size = 10)+
  
  theme(legend.key = element_rect(fill = "white"))+
  labs(color = "Souches")+
  ylab("Nombre de vers")+
  xlab(" ")+
  theme_light()+
  scale_color_brewer(palette="Dark2")+
  theme(text = element_text(size = 20))

  ggtitle("Test de thermosensitivité p.65")

p

totalN216 <-  Mean_LiveEggsN2_16 + Mean_DeadEggsN2_16 +Mean_WormsN2_16
totalACR06116 <-  Mean_LiveEggsACR061_16 + Mean_DeadEggsACR061_16 +Mean_WormsACR061_16
totalN226 <-  Mean_LiveEggsN2_26 + Mean_DeadEggsN2_26 +Mean_WormsN2_26
totalACR06126 <-  Mean_LiveEggsACR061_26 + Mean_DeadEggsACR061_26 +Mean_WormsACR061_26

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

LiveEggsACR06116Percentage <- (Mean_LiveEggsACR061_16 / totalACR06116) *100
colnames(LiveEggsACR06116Percentage) <- "Number"
LiveEggsACR06116Percentage$Temp="16°C ACR061"
LiveEggsACR06116Percentage$Type="Oeufs vivants"
DeadEggsACR06116Percentage <- (Mean_DeadEggsACR061_16 / totalACR06116) *100
colnames(DeadEggsACR06116Percentage) <- "Number"
DeadEggsACR06116Percentage$Temp="16°C ACR061"
DeadEggsACR06116Percentage$Type="Oeufs morts"
WormsACR06116Percentage <- (Mean_WormsACR061_16 / totalACR06116) *100
colnames(WormsACR06116Percentage) <- "Number"
WormsACR06116Percentage$Temp="16°C ACR061"
WormsACR06116Percentage$Type="Vers"

LiveEggsN226Percentage <- (Mean_LiveEggsN2_26 / totalN226) *100
colnames(LiveEggsN226Percentage) <- "Number"
LiveEggsN226Percentage$Temp="26°C N2"
LiveEggsN226Percentage$Type="Oeufs vivants"

DeadEggsN226Percentage <- (Mean_DeadEggsN2_26 / totalN226) *100
colnames(DeadEggsN226Percentage) <- "Number"
DeadEggsN226Percentage$Temp="26°C N2"
DeadEggsN226Percentage$Type="Oeufs morts"

WormsN226Percentage <- (Mean_WormsN2_26 / totalN226) *100
colnames(WormsN226Percentage) <- "Number"
WormsN226Percentage$Temp="26°C N2"
WormsN226Percentage$Type="Vers"

LiveEggsACR06126Percentage <- (Mean_LiveEggsACR061_26 / totalACR06126) *100
colnames(LiveEggsACR06126Percentage) <- "Number"
LiveEggsACR06126Percentage$Temp="26°C ACR061"
LiveEggsACR06126Percentage$Type="Oeufs vivants"
DeadEggsACR06126Percentage <- (Mean_DeadEggsACR061_26 / totalACR06126) *100
colnames(DeadEggsACR06126Percentage) <- "Number"
DeadEggsACR06126Percentage$Temp="26°C ACR061"
DeadEggsACR06126Percentage$Type="Oeufs morts"
WormsACR06126Percentage <- (Mean_WormsACR061_26 / totalACR06126) *100
colnames(WormsACR06126Percentage) <- "Number"
WormsACR06126Percentage$Temp="26°C ACR061"
WormsACR06126Percentage$Type="Vers"

PoolData <- rbind.data.frame(LiveEggsN216Percentage,DeadEggsN216Percentage,WormsN216Percentage,LiveEggsACR06116Percentage,DeadEggsACR06116Percentage,WormsACR06116Percentage,LiveEggsN226Percentage,DeadEggsN226Percentage,WormsN226Percentage,LiveEggsACR06126Percentage,DeadEggsACR06126Percentage,WormsACR06126Percentage
)

p <- ggplot(PoolData, aes(fill=Type, y=Number, x=Temp, ))+
  geom_bar(position="stack", stat="identity")+
  
  
  theme(legend.key = element_rect(fill = "white"))+
  ylab("Pourcentage")+
  xlab(" ")+
  labs(fill = " ")+
  theme_light()+ 
  theme(text = element_text(size = 20))

  ggtitle("Test de thermosensitivité p.65")

p
