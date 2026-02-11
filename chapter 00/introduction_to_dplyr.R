filename <- "femaleMiceWeights.csv"
dat <- read.csv(filename)
head(dat)

library("dplyr")
#进行子集筛选
chow <- filter(dat, Diet=="chow")
head(chow)

#选择包含特定值的列
chowVals <- select(chow, Bodyweight)
head(chowVals)

#用%>%表示管道
chowVals <- filter(dat, Diet=="chow") %>% select(Bodyweight)

#dplyr接收data.frame返回data.frame
class(dat)
class(chowVals)

#unlist函数将lists转换为numeric向量
chowVals <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist
class(chowVals)

#练习
library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- "msleep_ggplot2.csv"
if (!file.exists(filename)) download(url,filename)

msleep <- read.csv("msleep_ggplot2.csv")

class(msleep)
primates <- filter(msleep, order=="Primates")
nrow(primates)
class(primates)
sleep <- select(primates, sleep_total)
class(sleep)
unlist(sleep) %>% mean()
primates %>% 
  summarise(mean = mean(sleep_total), n = n())