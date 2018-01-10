gro <- function(x,coe,cen,car){
  pop <- car/(1+exp(-coe*(x-cen)))
  return(pop)
}

x.data <- data$wins
y.data <- data$playoff

low_cen <- 5
cen_ran <- 10

low_coe <- .5
coe_ran <- 2.5

tests <- 500
min_cen <- low_cen
min_coe <- low_coe

cen_int <- cen_ran/tests
coe_int <- coe_ran/tests

resid <- 0


for(i in 1:length(x.data)){
  resid = resid + (gro(x.data[i],low_coe,low_cen,1)- y.data[i])^2
}



for(i in 1:tests){
  for(j in 1:tests){
    
    temp <- 0
    for(k in 1:length(x.data)){
      temp = temp + (gro(x.data[k],low_coe + i*coe_int,low_cen + j*cen_int,1)- y.data[k])^2
    }
    if(temp < resid)
    {
      resid <- temp
      min_cen <-low_cen + j*cen_int
      min_coe <- low_coe + i*coe_int
    }
    
  }
}
print(min_cen)
print(min_coe)