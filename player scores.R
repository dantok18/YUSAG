library(XML)
library(RCurl)
u <- 'https://www.basketball-reference.com/players/j/jamesle01/gamelog/2018/'
newu <- getURL(u)
data <- as.data.frame(readHTMLTable(newu)[[8]])
data <- data[data$Rk != 'Rk',]
for(j in 1:ncol(data)){
  data[,j] <- as.numeric(as.character(data[,j]))
}
