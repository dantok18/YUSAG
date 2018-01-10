library(XML)
library(RCurl)
i <- 2002
for(y in i:2017)
{
  u <- paste0('https://www.pro-football-reference.com/years/',toString(y),'/#all_team_stats')
  newu <- getURL(u)
  data1 <- readHTMLTable(newu)[[1]]
  data2 <- readHTMLTable(newu)[[2]]
  data <- rbind(data1,data2)
  data <- data[substring(data$Tm,2,3) != 'FC', ]
  
  data$Tm <- as.character(data$Tm)
  for(j in 2:8){
    data[, j] <- as.numeric(as.character(data[,j]))
  }
  if(y==i)
  {
  tot <- data.frame(data$Tm,data$W,data$L,data$PF,data$PA,data$PD)
  }
  if(y > i)
     {
       temp <-data.frame(data$Tm,data$W,data$L,data$PF,data$PA,data$PD)
       tot <- rbind(tot,temp)
     }
  print(y)
}
  


####

plot(tot$data.PD,tot$data.W,xlab = 'Point Differential',ylab = 'Wins',col = 'blue',main="NFL Wins vs Point Differential 2002-2017",pch=20)

