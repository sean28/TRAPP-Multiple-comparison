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
x<-seq(1,length(rmsf[,13]))
y<-cbind(rmsf[,13])

x2<-seq(1,length(rmsf2[,13]))
y2<-cbind(rmsf2[,13])

# Draw Lines
ggplot()+
geom_point(data=rmsf,aes(x,y,color="sienna"),    size=2.0)  + 
geom_point(data=rmsf2,aes(x2,y2,color="wheat"), size=2.0)  + 
geom_line(data=rmsf,aes(x,y,color="sienna"),    size=1.5)  + 
geom_line(data=rmsf2,aes(x2,y2,color="wheat"), size=1.5)  + 
# mean line
geom_segment(data =rmsf,aes(x=0,xend =100,y=mean(y),yend=mean(y)), color="red")+
geom_segment(data =rmsf2,aes(x=0,xend =100,y=mean(y2),yend=mean(y2)), color="green")+
geom_label(color="red",aes(x=100, y=mean(y)-0.25,label=signif(mean(y), digits = 4), fontface="plain", family="sans")) +
geom_label(color="green",aes(x=100, y=mean(y2)+0.25, label=signif(mean(y2), digits = 4), fontface="plain", family="sans")) +
geom_label(label.size=0,aes(x=90, y=mean(y)-0.25,label=namemean1, fontface="plain", family="sans"), color="red") +
geom_label(label.size=0,aes(x=90, y=mean(y2)+0.25, label=namemean2, fontface="plain", family="sans"), color="green") +

# labs title
labs(title="",x="Trajectory",y="Aromatic)") +

# legend
scale_color_manual(name="",values=c("sienna","wheat"),label=c(name,name2)) +

#scale
scale_y_continuous(limits=c(-1,8),breaks=seq(-1,8,2),label=seq(-1,8,2))  +
scale_x_continuous(limits=c(0,100),breaks=seq(0,100,10),label=seq(0,1000,100)) +
theme_bw() +

# theme
theme(
plot.title=element_text(hjust=0.5,size=20),
axis.title.x=element_text(size=12,face="bold"),
axis.title.y=element_text(size=12,face="bold",color="sienna"),
axis.text.x=element_text(size=10,face="bold"),
axis.text.y=element_text(size=10,face="bold",color="sienna")
) 


# Save png
ggsave("./Aromatic.png",width=18,height=6,dpi=300)

# check whether the unwanted file exists and remove it
file.exists("Rplots.pdf")
file.remove("Rplots.pdf")
