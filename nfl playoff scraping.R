library(XML)
library(RCurl)
seed <- c(1:16,1:16)

i = 2002
for(y in i:2017){
  
  u <- paste0('https://www.pro-football-reference.com/years/',toString(y),'/playoffs.htm')
  newu <- getURL(u)
  nat <- readHTMLTable(newu)[[1]]
  ame <- readHTMLTable(newu)[[2]]
  com <- rbind(nat,ame)
  com$Tm <- as.character(com$Tm)
  com$W <- as.numeric(as.character(com$W))
  com$L <- as.numeric(as.character(com$L))
  
  
  if(y == i){
    tot <- data.frame(seed,com$Tm,com$W,com$L)
  }
  
  if(y > i){
    temp <- data.frame(seed,com$Tm,com$W,com$L)
    tot <- rbind(tot,temp)
    
  }
  
  print(y)
}
