## Q1

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "./data/housing.csv", method = "curl")
housingData <- read.csv("./data/housing.csv")

nrow(subset(housingData, housingData$VAL == 24))

## Q3

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = "./data/naturalGas.xlsx", method = "curl")

library(xlsx)
# Reading specific rows and columns
colIndex <- 7:15
rowIndex <- 18:23
dat <- read.xlsx("./data/naturalGas.xlsx", sheetIndex=1, colIndex=colIndex, rowIndex=rowIndex)

sum(dat$Zip*dat$Ext,na.rm=T) 