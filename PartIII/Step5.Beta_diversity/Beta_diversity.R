library(vegan)
library(gplots)
library(RColorBrewer)
library(plyr)
library(ggplot2)

#Step1. Calculate Bray Curtis
data <- read.table("/ifs1/User/liyinhu/16S_practice/PartIII/Step0.Relative_abun/Genus_relative_abun.xls",header=T)
bray <- vegdist(data,method="bray")
write.table(as.matrix(bray),"bray_curtis.txt",quote = FALSE,row.names = TRUE,col.names = TRUE)

#Step2. Draw heatmap
pdf("/ifs1/User/liyinhu/16S_practice/PartIII/Step5.Beta_diversity/Heatmap.pdf",width=8,height=8)
heatmap.2(as.matrix(bray), trace="none", col=rev(colorRampPalette(brewer.pal(10, "RdBu"))(20)), breaks=seq(0,0.8,0.04), dendrogram="row", main="Bray-crutis distance among samples")
dev.off()

#Step3. PCoA analysis
pdf("/ifs1/User/liyinhu/16S_practice/PartIII/Step5.Beta_diversity/PCoA.pdf")
group <-  read.delim("/ifs1/User/liyinhu/16S_practice/PartIII/Step5.Beta_diversity/sample.metadata", sep = '\t', stringsAsFactors = F)
pcoa <- cmdscale(bray, k=(nrow(data)-1), eig=TRUE)
sample_site <- data.frame({pcoa$point})[1:2]
sample_site$names <- rownames(sample_site)
names(sample_site)[1:2] <- c('PCoA1', 'PCoA2')
sample_site <- merge(sample_site, group, by='names', all.x = TRUE)
write.csv(sample_site, "Sample_PCoA_site.csv", quote=F)

sample_site$Group <- factor(sample_site$Group, levels = c('Case', 'Control'))
group_border <- ddply(sample_site, 'Group', function(df) df[chull(df[[2]], df[[3]]), ])
pcoa_eig <- (pcoa$eig)[1:2] / sum(pcoa$eig)

ggplot(sample_site, aes(PCoA1, PCoA2, group = Group)) +
theme(panel.background = element_rect(color = 'black', fill = 'transparent'), legend.key = element_rect(fill = 'transparent')) +
geom_vline(xintercept = 0, color = 'gray', size = 0.4) +
geom_hline(yintercept = 0, color = 'gray', size = 0.4) +
geom_polygon(data = group_border, aes(fill = Group)) +
geom_point(aes(color = Group), size = 1.2, alpha = 0.8)+
scale_color_brewer(palette="Set1") +
scale_fill_manual(values = c('#C673FF2E', '#73D5FF2E')) +
labs(x = paste('PCoA1: ', round(100 * pcoa_eig[1], 2), '%'), y = paste('PCoA2: ', round(100 * pcoa_eig[2], 2), '%'))
while (!is.null(dev.list()))  dev.off()
