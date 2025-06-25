library(ggplot2)
library(ggsci)

data <- read.table("/ifs1/User/liyinhu/16S_practice/PartIII/Step4_Top5_Genus/Top5_genus_clean.xls",header=T)

pdf ("/ifs1/User/liyinhu/16S_practice/PartIII/Step4_Top5_Genus/Top5_genus.pdf",,width=8,height=8)
p1 <- ggplot(data,aes(x=Genus,y=Abundance,fill=Group))+geom_boxplot(alpha=0.7)+labs(x="Top 5 Genus",y="Relativa abundances (%)")+theme(axis.text.x=element_text(angle=90))
p1+scale_fill_lancet()
dev.off()
