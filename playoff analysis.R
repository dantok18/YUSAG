one_seed <- c()
two_seed <- c()
thr_seed <- c()
fou_seed <- c()
fiv_seed <- c()
six_seed <- c()
sev_win <- c()
eig_win <- c()
nin_win <- c()
ten_win <- c()
ele_win <- c()
twe_win <- c()
thi_win <- c()
fot_win <- c()
fif_win <- c()
sit_win <- c()
for(i in 1:512)
{
  if(tot$seed[i] ==1)
  {
    one_seed <- c(one_seed,tot$com.W[i])
  }
  if(tot$seed[i] ==2)
  {
    two_seed <- c(two_seed,tot$com.W[i])
  }
  if(tot$seed[i] ==3)
  {
    thr_seed <- c(thr_seed,tot$com.W[i])
  }
  if(tot$seed[i] ==4)
  {
    fou_seed <- c(fou_seed,tot$com.W[i])
  }
  if(tot$seed[i] ==5)
  {
    fiv_seed <- c(fiv_seed,tot$com.W[i])
  }
  if(tot$seed[i] ==6)
  {
    six_seed <- c(six_seed,tot$com.W[i])
  }
  if(tot$com.W[i]==7)
  {
    sev_win <- c(sev_win,tot$seed[i])
  }
  if(tot$com.W[i]==8)
  {
    eig_win <- c(eig_win,tot$seed[i])
  }
  if(tot$com.W[i]==9)
  {
    nin_win <- c(nin_win,tot$seed[i])
  }
  if(tot$com.W[i]==10)
  {
    ten_win <- c(ten_win,tot$seed[i])
  }
  if(tot$com.W[i]==11)
  {
    ele_win <- c(ele_win,tot$seed[i])
  }
  if(tot$com.W[i]==12)
  {
    twe_win <- c(twe_win,tot$seed[i])
  }
  if(tot$com.W[i]==13)
  {
    thi_win <- c(thi_win,tot$seed[i])
  }
  if(tot$com.W[i]==14)
  {
    fot_win <- c(fot_win,tot$seed[i])
  }
  if(tot$com.W[i]==15)
  {
    fif_win <- c(fif_win,tot$seed[i])
  }
  if(tot$com.W[i]==16)
  {
    sit_win <- c(sit_win,tot$seed[i])
  }
}
######
for(i in 1:61)
{
  if(i > length(sev_win))
  {
    sev_win[i] = 0
  }
  if(i > length(eig_win))
  {
  eig_win[i] = 0
  }
if(i > length(nin_win))
{
  nin_win[i] = 0
}
if(i > length(ten_win))
{
  ten_win[i] = 0
}
if(i > length(ele_win))
{
  ele_win[i] = 0
}
if(i > length(twe_win))
{
  twe_win[i] = 0
}
if(i > length(thi_win))
{
  thi_win[i] = 0
}
if(i > length(fot_win))
{
  fot_win[i] = 0
}
if(i > length(fif_win))
{
  fif_win[i] = 0
}
if(i > length(sit_win))
{
  sit_win[i] = 0
}
}





