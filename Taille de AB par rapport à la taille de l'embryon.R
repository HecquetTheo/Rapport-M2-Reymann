library(ggplot2)


N2_20 <- c(56.7155309, 57.94018534,57.07493343,57.40740741,59.29533679,60.45524691,52.64588619)
dfN2_20 <- data.frame(N2_20)
N2_means_20 <- data.frame(Frame=dfN2_20[1], N2_means_20=colMeans(dfN2_20[1], na.rm = TRUE))
N2_means_20[1] <- NULL
N2_mean_20 <- data.frame(N2_means_20[1,1])
colnames(N2_mean_20) <- "Mean_N2_20"

N2_26 <- c(60.94215862,58.29088851, 57.47368421, 61.98670317, 56.20155039,58.04087072, 59.96437319)
dfN2_26 <- data.frame(N2_26)
N2_means_26 <- data.frame(Frame=dfN2_26[1], N2_means_26=colMeans(dfN2_26[1], na.rm = TRUE))
N2_means_26[1] <- NULL
N2_mean_26 <- data.frame(N2_means_26[1,1])
colnames(N2_mean_26) <- "Mean_N2_26"

ACR037_20 <- c(52.79805353, 60.17191977)
dfACR037_20 <- data.frame(ACR037_20)
ACR037_means_20 <- data.frame(Frame=dfACR037_20[1], ACR037_means_20=colMeans(dfACR037_20[1], na.rm = TRUE))
ACR037_means_20[1] <- NULL
ACR037_mean_20 <- data.frame(ACR037_means_20[1,1])
colnames(ACR037_mean_20) <- "Mean_ACR037_20"
#ACR037_mean_20$Mean_ACR037_20 <- unlist(ACR037_mean_20$Mean_ACR037_20)

ACR037_26 <- c(57.17299578,53.76782077)
dfACR037_26 <- data.frame(ACR037_26)
ACR037_means_26 <- data.frame(Frame=dfACR037_26[1], ACR037_means_26=colMeans(dfACR037_26[1], na.rm = TRUE))
ACR037_means_26[1] <- NULL
ACR037_mean_26 <- data.frame(ACR037_means_26[1,1])
colnames(ACR037_mean_26) <- "Mean_ACR037_26"

ACR043_20 <- c(56.92640693, 55.6122449, 55.69948187, 59.3220339, 57.88113695)
dfACR043_20 <- data.frame(ACR043_20)
ACR043_means_20 <- data.frame(Frame=dfACR043_20[1], ACR043_means_20=colMeans(dfACR043_20[1], na.rm = TRUE))
ACR043_means_20[1] <- NULL
ACR043_mean_20 <- data.frame(ACR043_means_20[1,1])
colnames(ACR043_mean_20) <- "Mean_ACR043_20"

ACR043_26 <- c(55.84988962,48.90829694,50,46.02150538)
dfACR043_26 <- data.frame(ACR043_26)
ACR043_means_26 <- data.frame(Frame=dfACR043_26[1], ACR043_means_26=colMeans(dfACR043_26[1], na.rm = TRUE))
ACR043_means_26[1] <- NULL
ACR043_mean_26 <- data.frame(ACR043_means_26[1,1])
colnames(ACR043_mean_26) <- "Mean_ACR043_26"

ACR044_26 <- c(51.06796117)
dfACR044_26 <- data.frame(ACR044_26)
ACR044_means_26 <- data.frame(Frame=dfACR044_26[1], ACR044_means_26=colMeans(dfACR044_26[1], na.rm = TRUE))
ACR044_means_26[1] <- NULL
ACR044_mean_26 <- data.frame(ACR044_means_26[1,1])
colnames(ACR044_mean_26) <- "Mean_ACR044_26"

ACR045_20 <- c(58.33333333,59.07172996,54.41527446)
dfACR045_20 <- data.frame(ACR045_20)
ACR045_means_20 <- data.frame(Frame=dfACR045_20[1], ACR045_means_20=colMeans(dfACR045_20[1], na.rm = TRUE))
ACR045_means_20[1] <- NULL
ACR045_mean_20 <- data.frame(ACR045_means_20[1,1])
colnames(ACR045_mean_20) <- "Mean_ACR045_20"

ACR045_26 <- c(49.80842912,60.18518519,42.43070362)
dfACR045_26 <- data.frame(ACR045_26)
ACR045_means_26 <- data.frame(Frame=dfACR045_26[1], ACR045_means_26=colMeans(dfACR045_26[1], na.rm = TRUE))
ACR045_means_26[1] <- NULL
ACR045_mean_26 <- data.frame(ACR045_means_26[1,1])
colnames(ACR045_mean_26) <- "Mean_ACR045_26"

colnames(dfACR037_20) <- "a20"
colnames(dfACR043_20) <- "a20"
colnames(dfACR045_20) <- "a20"

colnames(dfACR037_26) <- "a26"
colnames(dfACR043_26) <- "a26"
colnames(dfACR044_26) <- "a26"
colnames(dfACR045_26) <- "a26"

pool20 <- rbind(dfACR037_20,dfACR043_20,dfACR045_20)
pool20$a20 <- unlist(pool20$a20)
pool_means_20 <- data.frame(Frame=pool20[1], pool_means_20=colMeans(pool20[1], na.rm = TRUE))
pool_means_20[1] <- NULL
pool_mean_20 <- data.frame(pool_means_20[1,1])
colnames(pool_mean_20) <- "pool_mean_20"

pool_mean_20
pool26 <- rbind(dfACR037_26,dfACR043_26,dfACR044_26,dfACR045_26)
pool26$a26 <- unlist(pool26$a26)
pool_means_26 <- data.frame(Frame=pool26[1], pool_means_26=colMeans(pool26[1], na.rm = TRUE))
pool_means_26[1] <- NULL
pool_mean_26 <- data.frame(pool_means_26[1,1])
colnames(pool_mean_26) <- "pool_mean_26"


p <- ggplot()+
  geom_point(data=dfN2_20, aes(x="20°C N2", y=N2_20, color ="Embryon individuel"), size = 5)+
  
  geom_point(data=dfACR037_20, aes(x="20°C or621", y=ACR037_20, color ="Embryon individuel"),size = 5)+
  #geom_point(data=ACR037_mean_20, aes(x="20°C", y=Mean_ACR037_20,color="ACR037"), shape = 2, size = 5)+
  geom_point(data=dfACR043_20, aes(x="20°C or621", y=ACR043_20, color ="Embryon individuel"),size = 5)+
  #geom_point(data=ACR043_mean_20, aes(x="20°C", y=Mean_ACR043_20,color="ACR043"), shape = 2, size = 5)+
  geom_point(data=dfACR045_20, aes(x="20°C or621", y=ACR045_20, color ="Embryon individuel"),size = 5)+
  #geom_point(data=ACR045_mean_20, aes(x="20°C", y=Mean_ACR045_20,color="ACR045"), shape = 2, size = 5)+
  
  geom_point(data=N2_mean_20, aes(x="20°C N2", y=Mean_N2_20,color="Moyenne"), shape = 2, size = 10)+
  geom_point(data=pool_mean_20, aes(x="20°C or621", y=pool_mean_20,color="Moyenne"), shape = 2, size = 10)+
  
  geom_point(data=dfN2_26, aes(x="26°C N2", y=N2_26, color ="Embryon individuel"), size = 5)+
  
  geom_point(data=dfACR037_26, aes(x="26°C or621", y=ACR037_26, color ="Embryon individuel"),size = 5)+
  #geom_point(data=ACR037_mean_26, aes(x="26°C", y=Mean_ACR037_26,color="ACR037"), shape = 2, size = 5)+
  geom_point(data=dfACR043_26, aes(x="26°C or621", y=ACR043_26, color ="Embryon individuel"),size = 5)+
  #geom_point(data=ACR043_mean_26, aes(x="26°C", y=Mean_ACR043_26,color="ACR043"), shape = 2, size = 5)+
  geom_point(data=dfACR044_26, aes(x="26°C or621", y=ACR044_26, color ="Embryon individuel"),size = 5)+
  #geom_point(data=ACR044_mean_26, aes(x="26°C", y=Mean_ACR044_26,color="ACR044"), shape = 2, size = 5)+
  geom_point(data=dfACR045_26, aes(x="26°C or621", y=ACR045_26, color ="Embryon individuel"),size = 5)+
  #geom_point(data=ACR045_mean_26, aes(x="26°C", y=Mean_ACR045_26,color="ACR045"), shape = 2, size = 5)+
  
  geom_point(data=N2_mean_26, aes(x="26°C N2", y=Mean_N2_26,color="Moyenne"), shape = 2, size = 10)+
  geom_point(data=pool_mean_26, aes(x="26°C or621", y=pool_mean_26,color="Moyenne"), shape = 2, size = 10)+
  
  theme(legend.key = element_rect(fill = "white"))+
  labs(color = "")+
  scale_y_continuous(limit = c(40, 65))+
  ylab("Pourcentage")+
  xlab(" ")+
  theme_light()+
  theme(text = element_text(size = 17))+
  ggtitle("Taille de AB par rapport à la taille de l'embryon")

p

t.test(pool20, pool26)
t.test(dfN2_26, pool26)