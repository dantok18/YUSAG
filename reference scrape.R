table <- read.csv("2017_fantasy_data.csv",header=TRUE,sep=",")

#plot1  ####
par(las=2)
par(mar=c(5,10,1,1))
invnam <- rev(table$PO1[1:39])

barplot(rev(table$SCORE1[1:39]),col=ifelse(invnam=="QB","green"
                                       ,ifelse(invnam=="RB","red","blue")),horiz=TRUE,names.arg=rev(table$NAME1[1:39])
        ,ylab="",xlab="Fantasy Points",main="Top Fantasy Performers 2017",axes=FALSE)
axis(side=1,at=seq(0,400,by=25))
legend("bottomright",legend=c("QB","RB","WR"),fill=c('green','red','blue'),bty='n')

#plot2  ####

par(las=2)
par(mar=c(5,10,1,1))
invnam <- rev(table$PO1[1:15])

barplot(rev(table$SCORE2[1:15]),col='green',horiz=TRUE,names.arg=rev(table$NAME2[1:15])
        ,ylab="",xlab="Fantasy Points",main="Top QB Performers 2017",axes=FALSE)
axis(side=1,at=seq(0,400,by=25))
abline(v=table$SCORE2[11],col='red')

#plot3 ####
par(las=2)
par(mar=c(5,10,1,10))
invnam <- rev(table$PO1[1:15])

barplot(rev(par1[1:15]),col='green',horiz=TRUE,names.arg=rev(table$NAME2[1:15])
        ,ylab="",xlab="PAR",main="Top QB Performers 2017",axes=FALSE)
axis(side=1,at=seq(-75,125,by=25))
abline(v=table$SCORE2[11],col='red')


#plot 4 ####

par(las=2)
par(mar=c(5,10,1,1))

barplot(rev(table$SCORE3[1:25]),col='red',horiz=TRUE,names.arg=rev(table$NAME3[1:25])
        ,ylab="",xlab="Fantasy Points",main="Top RB Performers 2017",axes=FALSE)
axis(side=1,at=seq(0,400,by=25))
abline(v=table$SCORE3[21],col='blue')

#plot 5#####


par(las=2)
par(mar=c(5,10,1,1))

barplot(rev(par2[1:25]),col='red',horiz=TRUE,names.arg=rev(table$NAME3[1:25])
        ,ylab="",xlab="PAR",main="Top RB Performers 2017",axes=FALSE)
axis(side=1,at=seq(-25,200,by=25))

#plot 6 ####  
par(las=2)
par(mar=c(5,10,1,1))

barplot(rev(table$SCORE4[1:25]),col='blue',horiz=TRUE,names.arg=rev(table$NAME4[1:25])
        ,ylab="",xlab="Fantasy Points",main="Top WR Performers 2017",axes=FALSE)
axis(side=1,at=seq(0,400,by=25))
abline(v=table$SCORE4[21],col='red')

#plot 7 ####

par(las=2)
par(mar=c(5,10,1,1))

barplot(rev(par3[1:25]),col='blue',horiz=TRUE,names.arg=rev(table$NAME4[1:25])
        ,ylab="",xlab="PAR",main="Top WR Performers 2017",axes=FALSE)
axis(side=1,at=seq(-50,100,by=25))



#plot 8 ####
par(las=2)
par(mar=c(5,10,1,1))

barplot(rev(table$SCORE5[1:15]),col='orange',horiz=TRUE,names.arg=rev(table$NAME5[1:15])
        ,ylab="",xlab="Fantasy Points",main="Top TE Performers 2017",axes=FALSE)
axis(side=1,at=seq(0,400,by=25))
abline(v=table$SCORE5[11],col='blue')

#plot9 ####
par(las=2)
par(mar=c(5,10,1,1))

barplot(rev(par5[1:15]),col='orange',horiz=TRUE,names.arg=rev(table$NAME5[1:15])
        ,ylab="",xlab="PAR",main="Top TE Performers 2017",axes=FALSE)
axis(side=1,at=seq(-25,100,by=25))


#plot10 ####
par(las=2)
par(mar=c(5,10,1,5))
invnam <- rev(table$PAR[1:59])
invpos <- rev(table$Position[1:59])
barplot(invnam,col=ifelse(invpos=="QB","green"
                                           ,ifelse(invpos=="RB","red",ifelse(invpos=="WR","blue","orange"))),horiz=TRUE,names.arg=rev(table$Player[1:59])
        ,ylab="",xlab="PAR",main="Top Fantasy Performers 2017",axes=FALSE)
axis(side=1,at=seq(0,175,by=25))
legend("bottomright",legend=c("QB","RB","WR","TE"),fill=c('green','red','blue','orange'),bty='n')


#Plot11 #####
par(pch=16)
par(mar=c(5,5,5,5))
plot(table$final_rank,table$Rank,col=ifelse(table$Position=="QB","green"
                                            ,ifelse(table$Position=="RB","red",ifelse(table$Position=="WR","blue","orange")))
     ,xlab="Final Rank (PAR)",ylab="PreSeason ESPN Rank",main="Preseason vs Final Ranks (TOP 60 FINAL)",xlim=c(0,80))
abline(a=0,b=1,col='black')
textxy(table$final_rank,table$Rank,labs=table$Player,cex=1,offset = .6,srt=0)
legend("bottomright",legend=c("QB","RB","WR"),fill=c('green','red','blue'),bty='n')

#plot12 #####
par(pch=16)
par(mar=c(5,5,5,5))
plot(table$PARFIN,table$rank1,col=ifelse(table$top_position=="QB","green"
                                            ,ifelse(table$top_position=="RB","red",ifelse(table$top_position=="WR","blue","orange")))
     ,xlab="Final Rank (PAR)",ylab="PreSeason ESPN Rank",main="Preseason vs Final Ranks (TOP 20 INITIAL)",xlim=c(0,75))
abline(a=0,b=1,col='black')
text(table$PARFIN,table$rank1,table$top_player,cex=1.5,adj=c(0,0),srt=0)
legend("topright",legend=c("QB","RB","WR"),fill=c('green','red','blue'),bty='n')

#plot13 ####
par(pch=16)
par(mar=c(5,5,5,5))
plot(table$rank1,table$PARFROM,col=ifelse(table$top_position=="QB","green"
                                         ,ifelse(table$top_position=="RB","red",ifelse(table$top_position=="WR","blue","orange")))
     ,xlab="PreSeason ESPN Rank",ylab="PAR",main="PAR for top 20 PreSeason Players",xlim=c(0,22),ylim=c(-150,250))
abline(a=0,b=0,col='orange')
text(table$rank1,table$PARFROM,table$top_player,cex=1,adj=c(0,0),srt=90)
legend("bottomright",legend=c("QB","RB","WR"),fill=c('green','red','blue'),bty='n')

