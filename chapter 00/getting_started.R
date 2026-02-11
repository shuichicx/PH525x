library(rafalib)
library(downloader)

#下载数据集
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)

#读取数据集
dat <- read.csv("femaleMiceWeights.csv")

#从GitHub上下载包
library(devtools)
install_github("genomicsclass/dagdata")

#练习
colnames(dat)[2]
dat[12, 2]
weights <- dat$Bodyweight
weights[11]
length(weights)
mean(weights[13:24])
