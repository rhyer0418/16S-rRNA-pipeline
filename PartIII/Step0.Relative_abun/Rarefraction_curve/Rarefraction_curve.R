library(vegan)

data <- read.csv("/ifs1/User/liyinhu/16S_practice/PartIII/Step0.Relative_abun/Genus_abun.csv", header = TRUE)
genus <- data[,2:(ncol(data)-2)]
S <- specnumber(genus)
raremax <- min(rowSums(genus))
Srare <- rarefy(genus, raremax)

pdf("/ifs1/User/liyinhu/16S_practice/PartIII/Step0.Relative_abun/Rarefraction_curve/Rarefied_observed.pdf",width=8,height=8)
plot(S, Srare, xlab = "Observed No. of Genus", ylab = "Rarefied No. of Genus")
dev.off()

pdf("/ifs1/User/liyinhu/16S_practice/PartIII/Step0.Relative_abun/Rarefraction_curve/Rarefraction_curve.pdf",width=8,height=8)
rarecurve(genus, step = 20, col = rainbow(10),xlab = "Reads Number", ylab = "Genus Richness",label = TRUE)
dev.off()
