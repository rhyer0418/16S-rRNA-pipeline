data <- read.table("/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls",header=T,check.names=FALSE)
col = length(data)
pvalue <- data[,col]
FDR <- sprintf ("%0.6f",p.adjust(pvalue,method="BH"))
print <- cbind(data,FDR)
write.table(print,'/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/Wilcox.FDR.test.xls',quote=F,sep='\t',row.names=FALSE)
