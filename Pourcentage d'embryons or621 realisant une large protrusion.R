library(ggplot2)
twenty <- c(100,100,100,0,0,0,0,0,0,0,0,0)
twenty_six <- c(100,100,100,100,100,100,100,100,100,100,100,0,0,0,0,0)

big_bleb_twenty <- data.frame(twenty)
big_bleb_means_twenty <- data.frame(Frame=big_bleb_twenty[1], Means20=colMeans(big_bleb_twenty[1], na.rm = TRUE))
big_bleb_means_twenty[1] <- NULL
big_bleb_mean_twenty <- big_bleb_means_twenty[1,1]

big_bleb_twentysix <- data.frame(twenty_six)
big_bleb_means_twentysix <- data.frame(Frame=big_bleb_twentysix[1], Means26=colMeans(big_bleb_twentysix[1], na.rm = TRUE))
big_bleb_means_twentysix[1] <- NULL
big_bleb_mean_twentysix <- big_bleb_means_twentysix[1,1]


big_bleb_means <- cbind.data.frame(big_bleb_mean_twenty[1], big_bleb_mean_twentysix)
colnames(big_bleb_means) <- c("Means20","Means26")

p <- ggplot() +
  geom_bar(stat="identity", width = 0.5, data=big_bleb_means, aes(x = "20°C", y = Means20))+
  geom_bar(stat="identity", width = 0.5, data=big_bleb_means, aes(x = "26°C", y = Means26))+
  scale_y_continuous(limit = c(0, 100))+
  ylab("Pourcentage")+
  xlab("Température")+
  theme_light()+
  theme(text = element_text(size = 17))+
  ggtitle("Pourcentage d'embryons or621 formant un large bleb")
p

YesBleb <- c(3,11)
NoBleb <- c(9,5)
stat <- data.frame(YesBleb, NoBleb)
fisher.test(stat)