# R作图
library(ggplot2)
#options(repr.plot.width=20, repr.plot.height=6)

# Import data
rmsf<-read.table("./triad-nma.csv")
rmsf2<-read.table("./triad-water.csv")
name<-c("NMA")
name2<-c("Water")

namemean1<-c("NMA mean")
namemean2<-c("Water mean")

# Define x and y
x<-seq(1,length(rmsf[,12]))
y<-cbind(rmsf[,12])

x2<-seq(1,length(rmsf2[,12]))
y2<-cbind(rmsf2[,12])

# Draw Lines
ggplot()+
geom_point(data=rmsf,aes(x,y,color="peru"),    size=2.0)  + 
geom_point(data=rmsf2,aes(x2,y2,color="peachpuff"), size=2.0)  + 
geom_line(data=rmsf,aes(x,y,color="peru"),    size=1.5)  + 
geom_line(data=rmsf2,aes(x2,y2,color="peachpuff"), size=1.5)  + 

# mean line
geom_segment(data =rmsf,aes(x=0,xend =100,y=mean(y),yend=mean(y)), color="red")+
geom_segment(data =rmsf2,aes(x=0,xend =100,y=mean(y2),yend=mean(y2)), color="green")+
geom_label(color="red",aes(x=100, y=mean(y)+0.1,label=signif(mean(y), digits = 4), fontface="plain", family="sans")) +
geom_label(color="green",aes(x=100, y=mean(y2)-0.1, label=signif(mean(y2), digits = 4), fontface="plain", family="sans")) +
geom_label(label.size=0,aes(x=90, y=mean(y)+0.1,label=namemean1, fontface="plain", family="sans"), color="red") +
geom_label(label.size=0,aes(x=90, y=mean(y2)-0.1, label=namemean2, fontface="plain", family="sans"), color="green") +

# labs title
labs(title="",x="",y="Hydrophobic") +

# legend
scale_color_manual(name="",values=c("peru","peachpuff"),label=c(name,name2)) +

#scale
scale_y_continuous(limits=c(-2,6),breaks=seq(-2,6,2),label=seq(-2,6,2))  +
scale_x_continuous(limits=c(0,100),breaks=seq(0,100,10),label=seq(0,1000,100)) +
theme_bw() +

# theme
theme(
plot.title=element_text(hjust=0.5,size=20),
axis.title.x=element_text(size=12,face="bold"),
axis.title.y=element_text(size=12,face="bold",color="peru"),
axis.text.x=element_text(size=10,face="bold"),
axis.text.y=element_text(size=10,face="bold",color="peru")
) 


# Save png
ggsave("./Hydrophobic.png",width=18,height=6,dpi=300)

# check whether the unwanted file exists and remove it
file.exists("Rplots.pdf")
file.remove("Rplots.pdf")
