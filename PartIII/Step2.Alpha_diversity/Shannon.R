library(vegan)
library(ggplot2)

data1 <- read.table("/ifs1/User/liyinhu/16S_practice/PartIII/Step0.Relative_abun/Genus_relative_abun.xls",header=T)
data2 <- read.table("/ifs1/User/liyinhu/16S_practice/PartIII/Step1.PCA/sample.metadata",header=T)

shannon <- diversity(data1[,-1], index="shannon")
shannon2 <- data.frame(shannon,data2$Group)
write.table(shannon2,"shannon.txt",quote = FALSE,row.names = FALSE,col.names = TRUE)

pdf("/ifs1/User/liyinhu/16S_practice/PartIII/Step2.Alpha_diversity/genus_Shannon.pdf",width=8,height=8)
ggplot(shannon2,aes(x=data2.Group,y= shannon))+geom_boxplot(aes(fill=data2.Group),width =0.5,alpha=0.8)+labs(x = "Group",y="Shannon index")+theme(legend.title = element_blank())
dev.off()
