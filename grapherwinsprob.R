library(ggplot2)

sev_wins <- c()
eig_wins <- c()
nin_wins <- c()
ten_wins <- c()
ele_wins <- c()
twe_wins <- c()
thi_wins <- c()
for_wins <- c()
fif_wins <- c()
sit_wins <- c()

i=1
sev_wins[i] <- data$X7_wins[1]
eig_wins[i] <- data$X8_wins[1]
nin_wins[i] <- data$X9_wins[1]
ten_wins[i] <- data$X10_wins[1]
ele_wins[i] <- data$X11_wins[1]
twe_wins[i] <- data$X12_wins[1]
thi_wins[i] <- data$X13_wins[1]
for_wins[i] <- data$X14_wins[1]
fif_wins[i] <- data$X15_wins[1]
sit_wins[i] <- data$X16_wins[1]

i=2
sev_wins[i] <- data$X7_wins[2]
eig_wins[i] <- data$X8_wins[2]
nin_wins[i] <- data$X9_wins[2]
ten_wins[i] <- data$X10_wins[2]
ele_wins[i] <- data$X11_wins[2]
twe_wins[i] <- data$X12_wins[2]
thi_wins[i] <- data$X13_wins[2]
for_wins[i] <- data$X14_wins[2]
fif_wins[i] <- data$X15_wins[2]
sit_wins[i] <- data$X16_wins[2]

i=2
sev_wins[i] <- data$X7_wins[2]
eig_wins[i] <- data$X8_wins[2]
nin_wins[i] <- data$X9_wins[2]
ten_wins[i] <- data$X10_wins[2]
ele_wins[i] <- data$X11_wins[2]
twe_wins[i] <- data$X12_wins[2]
thi_wins[i] <- data$X13_wins[2]
for_wins[i] <- data$X14_wins[2]
fif_wins[i] <- data$X15_wins[2]
sit_wins[i] <- data$X16_wins[2]

i=3
sev_wins[i] <- data$X7_wins[3] 
eig_wins[i] <- data$X8_wins[3] 
nin_wins[i] <- data$X9_wins[3]
ten_wins[i] <- data$X10_wins[3]
ele_wins[i] <- data$X11_wins[3]
twe_wins[i] <- data$X12_wins[3]
thi_wins[i] <- data$X13_wins[3]
for_wins[i] <- data$X14_wins[3]
fif_wins[i] <- data$X15_wins[3]
sit_wins[i] <- data$X16_wins[3]

sev_wins[i] <- sev_wins[i] + data$X7_wins[4] 
eig_wins[i] <- eig_wins[i] + data$X8_wins[4] 
nin_wins[i] <- nin_wins[i] + data$X9_wins[4]
ten_wins[i] <- ten_wins[i] + data$X10_wins[4]
ele_wins[i] <- ele_wins[i] + data$X11_wins[4]
twe_wins[i] <- twe_wins[i] + data$X12_wins[4]
thi_wins[i] <- thi_wins[i] + data$X13_wins[4]
for_wins[i] <- for_wins[i] + data$X14_wins[4]
fif_wins[i] <- fif_wins[i] + data$X15_wins[4]
sit_wins[i] <- sit_wins[i] + data$X16_wins[4]

i=4
sev_wins[i] <- data$X7_wins[5]
eig_wins[i] <- data$X8_wins[5]
nin_wins[i] <- data$X9_wins[5]
ten_wins[i] <- data$X10_wins[5]
ele_wins[i] <- data$X11_wins[5]
twe_wins[i] <- data$X12_wins[5]
thi_wins[i] <- data$X13_wins[5]
for_wins[i] <- data$X14_wins[5]
fif_wins[i] <- data$X15_wins[5]
sit_wins[i] <- data$X16_wins[5]

sev_wins[i] <- sev_wins[i] + data$X7_wins[6] 
eig_wins[i] <- eig_wins[i] + data$X8_wins[6] 
nin_wins[i] <- nin_wins[i] + data$X9_wins[6]
ten_wins[i] <- ten_wins[i] + data$X10_wins[6]
ele_wins[i] <- ele_wins[i] + data$X11_wins[6]
twe_wins[i] <- twe_wins[i] + data$X12_wins[6]
thi_wins[i] <- thi_wins[i] + data$X13_wins[6]
for_wins[i] <- for_wins[i] + data$X14_wins[6]
fif_wins[i] <- fif_wins[i] + data$X15_wins[6]
sit_wins[i] <- sit_wins[i] + data$X16_wins[6]


tab <- data.frame(sit_wins,fif_wins,for_wins,thi_wins,twe_wins,ele_wins,ten_wins,nin_wins,eig_wins,sev_wins)
par(mar = c(5,5,5,10))
barplot(as.matrix(tab),ylab = 'Probability',
        main = 'Probability of Playoff Spot Given Wins (NFL 2002-2017)',
        names.arg= c(16,15,14,13,12,11,10,9,8,7),xlab="Wins",
        col=c('red','orange','darkgreen','blue'),

)
abline(h=c(.1,.2,.3,.4,.5,.6,.7,.8,.9))
legend('topright',legend = c('1 Seed','1st Round Bye','Division Champion','Make Playoffs'),fill=c('red','orange','darkgreen','blue'),cex=.9)