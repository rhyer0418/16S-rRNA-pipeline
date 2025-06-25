taxdata <- read.table("/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/Genus_relative_abun_2.xls",header=T,sep="\t")


#Acinetobacter
mean.sd <- aggregate(taxdata$Acinetobacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Acinetobacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Acinetobacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Actinomadura
mean.sd <- aggregate(taxdata$Actinomadura,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Actinomadura~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Actinomadura',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Aeromicrobium
mean.sd <- aggregate(taxdata$Aeromicrobium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Aeromicrobium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Aeromicrobium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Aggregatibacter
mean.sd <- aggregate(taxdata$Aggregatibacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Aggregatibacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Aggregatibacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Alistipes
mean.sd <- aggregate(taxdata$Alistipes,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Alistipes~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Alistipes',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Anaerococcus
mean.sd <- aggregate(taxdata$Anaerococcus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Anaerococcus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Anaerococcus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Arcobacter
mean.sd <- aggregate(taxdata$Arcobacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Arcobacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Arcobacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Bacillus
mean.sd <- aggregate(taxdata$Bacillus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Bacillus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Bacillus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Bacteroides
mean.sd <- aggregate(taxdata$Bacteroides,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Bacteroides~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Bacteroides',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Brevundimonas
mean.sd <- aggregate(taxdata$Brevundimonas,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Brevundimonas~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Brevundimonas',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Brochothrix
mean.sd <- aggregate(taxdata$Brochothrix,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Brochothrix~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Brochothrix',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Candidatus_Arthromitus
mean.sd <- aggregate(taxdata$Candidatus_Arthromitus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Candidatus_Arthromitus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Candidatus_Arthromitus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Chitinophaga
mean.sd <- aggregate(taxdata$Chitinophaga,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Chitinophaga~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Chitinophaga',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Chryseobacterium
mean.sd <- aggregate(taxdata$Chryseobacterium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Chryseobacterium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Chryseobacterium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Clostridium
mean.sd <- aggregate(taxdata$Clostridium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Clostridium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Clostridium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Collinsella
mean.sd <- aggregate(taxdata$Collinsella,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Collinsella~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Collinsella',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Corynebacterium
mean.sd <- aggregate(taxdata$Corynebacterium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Corynebacterium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Corynebacterium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Desulfurispora
mean.sd <- aggregate(taxdata$Desulfurispora,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Desulfurispora~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Desulfurispora',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Devosia
mean.sd <- aggregate(taxdata$Devosia,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Devosia~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Devosia',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Enhydrobacter
mean.sd <- aggregate(taxdata$Enhydrobacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Enhydrobacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Enhydrobacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Enterococcus
mean.sd <- aggregate(taxdata$Enterococcus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Enterococcus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Enterococcus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Faecalibacterium
mean.sd <- aggregate(taxdata$Faecalibacterium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Faecalibacterium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Faecalibacterium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Finegoldia
mean.sd <- aggregate(taxdata$Finegoldia,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Finegoldia~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Finegoldia',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Flavobacterium
mean.sd <- aggregate(taxdata$Flavobacterium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Flavobacterium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Flavobacterium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Flexispira
mean.sd <- aggregate(taxdata$Flexispira,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Flexispira~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Flexispira',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Granulicatella
mean.sd <- aggregate(taxdata$Granulicatella,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Granulicatella~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Granulicatella',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Haemophilus
mean.sd <- aggregate(taxdata$Haemophilus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Haemophilus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Haemophilus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Helicobacter
mean.sd <- aggregate(taxdata$Helicobacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Helicobacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Helicobacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Kaistobacter
mean.sd <- aggregate(taxdata$Kaistobacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Kaistobacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Kaistobacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Klebsiella
mean.sd <- aggregate(taxdata$Klebsiella,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Klebsiella~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Klebsiella',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Lactobacillus
mean.sd <- aggregate(taxdata$Lactobacillus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Lactobacillus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Lactobacillus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Micrococcus
mean.sd <- aggregate(taxdata$Micrococcus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Micrococcus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Micrococcus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Myroides
mean.sd <- aggregate(taxdata$Myroides,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Myroides~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Myroides',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Neisseria
mean.sd <- aggregate(taxdata$Neisseria,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Neisseria~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Neisseria',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Novosphingobium
mean.sd <- aggregate(taxdata$Novosphingobium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Novosphingobium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Novosphingobium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Oscillospira
mean.sd <- aggregate(taxdata$Oscillospira,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Oscillospira~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Oscillospira',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Paenisporosarcina
mean.sd <- aggregate(taxdata$Paenisporosarcina,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Paenisporosarcina~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Paenisporosarcina',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Parabacteroides
mean.sd <- aggregate(taxdata$Parabacteroides,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Parabacteroides~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Parabacteroides',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Paracoccus
mean.sd <- aggregate(taxdata$Paracoccus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Paracoccus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Paracoccus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Pedobacter
mean.sd <- aggregate(taxdata$Pedobacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Pedobacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Pedobacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Peptococcus
mean.sd <- aggregate(taxdata$Peptococcus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Peptococcus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Peptococcus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Phyllobacterium
mean.sd <- aggregate(taxdata$Phyllobacterium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Phyllobacterium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Phyllobacterium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Porphyromonas
mean.sd <- aggregate(taxdata$Porphyromonas,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Porphyromonas~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Porphyromonas',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Prevotella
mean.sd <- aggregate(taxdata$Prevotella,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Prevotella~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Prevotella',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Pseudomonas
mean.sd <- aggregate(taxdata$Pseudomonas,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Pseudomonas~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Pseudomonas',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Psychrobacter
mean.sd <- aggregate(taxdata$Psychrobacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Psychrobacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Psychrobacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Rhodoplanes
mean.sd <- aggregate(taxdata$Rhodoplanes,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Rhodoplanes~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Rhodoplanes',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Roseburia
mean.sd <- aggregate(taxdata$Roseburia,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Roseburia~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Roseburia',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Rothia
mean.sd <- aggregate(taxdata$Rothia,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Rothia~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Rothia',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Ruminococcus
mean.sd <- aggregate(taxdata$Ruminococcus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Ruminococcus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Ruminococcus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Sedimentibacter
mean.sd <- aggregate(taxdata$Sedimentibacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Sedimentibacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Sedimentibacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Sphingobacterium
mean.sd <- aggregate(taxdata$Sphingobacterium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Sphingobacterium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Sphingobacterium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Sphingobium
mean.sd <- aggregate(taxdata$Sphingobium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Sphingobium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Sphingobium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Staphylococcus
mean.sd <- aggregate(taxdata$Staphylococcus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Staphylococcus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Staphylococcus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Stenotrophomonas
mean.sd <- aggregate(taxdata$Stenotrophomonas,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Stenotrophomonas~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Stenotrophomonas',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Steroidobacter
mean.sd <- aggregate(taxdata$Steroidobacter,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Steroidobacter~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Steroidobacter',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Streptococcus
mean.sd <- aggregate(taxdata$Streptococcus,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Streptococcus~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Streptococcus',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Streptomyces
mean.sd <- aggregate(taxdata$Streptomyces,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Streptomyces~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Streptomyces',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Streptosporangium
mean.sd <- aggregate(taxdata$Streptosporangium,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Streptosporangium~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Streptosporangium',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Unclassified
mean.sd <- aggregate(taxdata$Unclassified,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Unclassified~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Unclassified',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


#Weissella
mean.sd <- aggregate(taxdata$Weissella,by=list(taxdata$Group),FUN=function(x)c(mean=sprintf("%0.6f",mean(x)),sd=sprintf("%0.6f",sd(x))))
test <- wilcox.test(Weissella~Group,data=taxdata,pair=FALSE,conf.level=0.95)
print = cbind('Weissella',mean.sd[1,2],mean.sd[2,2],test$p.value)
write.table(print,file='/ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/wilcox.test.xls',quote=F,append=T,row.names=F,col.names=F,sep='\t')


