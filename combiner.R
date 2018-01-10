median_income <- vector(mode = 'character',length=4380)
average_income <- vector(mode = 'character',length=4380)
percent_rich <- vector(mode = 'character',length=4380)

for(i in 1:4380){
  
  tryCatch(
    
    if(i > 0)
    {
      median_income[i] <- c1[i][[1]]
      average_income[i] <- c2[i][[1]]
      percent_rich[i] <- c3[i][[1]]
    }
   
    ,
    warning = function(w)
    {
      print(paste("warning on ---",toString(i)));
      median_income[i] <- 'N/A';
      average_income[i] <- 'N/A';
      percent_rich[i] <- 'N/A'
      
    },
    
    error = function(e)
    {
      print(paste("error on ---",toString(i)));
      median_income[i] <- 'N/A';
      average_income[i] <- 'N/A';
      percent_rich[i] <- 'N/A'
      
    }
  )
    
    
  
 
}


