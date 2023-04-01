library(tidyverse)
mydataset <- read.table("BirthWeights.txt", header = TRUE)
ggplot(data=bw, mapping=aes(x=Mage,y=BirthWeight)) + geom_point()
ggplot(data=bw, mapping=aes(x=Gage,y=BirthWeight)) + geom_point()
ggplot(data = mydataset) +
  geom_boxplot(mapping = aes(Race, BirthWeight, xlab = "Race", ylab = "Birth Weight"))
ggplot(data = mydataset) +
  geom_point(mapping = aes(Gage,BirthWeight, color = Gen))
cor(mydataset$Gage, mydataset$BirthWeight)
birth.lm <- lm(BirthWeight ~ Mage + Gage + Race + Gen, data = mydataset)
ggplot()+geom_histogram(mapping=aes(x=stdres(birth.lm)))