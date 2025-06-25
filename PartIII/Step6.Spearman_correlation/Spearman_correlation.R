library(psych)

data <- read.table("/ifs1/User/liyinhu/16S_practice/PartIII/Step0.Relative_abun/Genus_relative_abun.xls",header=T)
spearman <- corr.test(data,method="spearman",adjust="fdr")
write.csv(spearman$r, "Spearman_correlation.csv", quote=F)
write.csv(spearman$p, "Spearman_correlation_P_FDR.csv", quote=F)
