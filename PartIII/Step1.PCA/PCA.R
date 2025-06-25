library(ggfortify)

data1 <- read.table("/ifs1/User/liyinhu/16S_practice/PartIII/Step0.Relative_abun/Genus_relative_abun.xls",header=T)
data2 <- read.table("/ifs1/User/liyinhu/16S_practice/PartIII/Step1.PCA/sample.metadata",header=T)

pdf("/ifs1/User/liyinhu/16S_practice/PartIII/Step1.PCA/genus_PCA.pdf",width=8,height=8)
autoplot(prcomp(data1[,-1]), data = data2, colour = 'Group', shape= 'Site', size=3)
dev.off()
