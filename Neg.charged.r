# R作图
library(ggplot2)
#options(repr.plot.width=20, repr.plot.height=6)

# Druggability(LR)
# Import data
rmsf<-read.table("./triad-nma.csv")
rmsf2<-read.table("./triad-water.csv")
name<-c("NMA")
name2<-c("Water")
namemean1<-c("NMA mean")
namemean2<-c("Water mean")

# Define x and y
x<-seq(1,length(rmsf[,9]))
y<-cbind(rmsf[,9])

x2<-seq(1,length(rmsf2[,9]))
y2<-cbind(rmsf2[,9])

# Draw Lines
ggplot()+
geom_point(data=rmsf,aes(x,y,color="chocolate1"),    size=2.0)  + 
geom_point(data=rmsf2,aes(x2,y2,color="burlywood1"), size=2.0)  + 
geom_line(data=rmsf,aes(x,y,color="chocolate1"),    size=1.5)  + 
geom_line(data=rmsf2,aes(x2,y2,color="burlywood1"), size=1.5)  + 

# mean line
geom_segment(data =rmsf,aes(x=0,xend =100,y=mean(y),yend=mean(y)), color="red")+
geom_segment(data =rmsf2,aes(x=0,xend =100,y=mean(y2),yend=mean(y2)), color="green")+
geom_label(color="red",aes(x=100, y=mean(y),label=signif(mean(y), digits = 4), fontface="plain", family="sans")) +
geom_label(color="green",aes(x=100, y=mean(y2), label=signif(mean(y2), digits = 4), fontface="plain", family="sans")) +
geom_label(label.size=0,aes(x=90, y=mean(y),label=namemean1, fontface="plain", family="sans"), color="red") +
geom_label(label.size=0,aes(x=90, y=mean(y2), label=namemean2, fontface="plain", family="sans"), color="green") +

# labs title
labs(title="",x="",y="Neg. charged") +

# legend
scale_color_manual(name="",values=c("chocolate1","burlywood1"),label=c(name,name2)) +

#scale
scale_y_continuous(limits=c(-2,3.5),breaks=seq(-2,3.5,1),label=seq(-2,3.5,1))  +
scale_x_continuous(limits=c(0,100),breaks=seq(0,100,10),label=seq(0,1000,100)) +
theme_bw() +

# theme
theme(
plot.title=element_text(hjust=0.5,size=20),
axis.title.x=element_text(size=12,face="bold"),
axis.title.y=element_text(size=12,face="bold",color="chocolate1"),
axis.text.x=element_text(size=10,face="bold"),
axis.text.y=element_text(size=10,face="bold",color="chocolate1")
) 



# Save png
ggsave("./Neg.charged.png",width=18,height=6,dpi=300)

# check whether the unwanted file exists and remove it
file.exists("Rplots.pdf")
file.remove("Rplots.pdf")
