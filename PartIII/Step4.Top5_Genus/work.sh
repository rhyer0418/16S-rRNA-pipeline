#Step1. List top 5 genus for compared groups
sort -rn -k2 ../Step3.Detect_difference/wilcox.test.xls | head -6 >> Top5_genus_1.xls
sort -rn -k4 ../Step3.Detect_difference/wilcox.test.xls | head -6 >> Top5_genus_1.xls
awk '{print $1}' Top5_genus_1.xls | sort | uniq > Top5_genus_2.xls
#Step2. Data preparation
perl Data_preparation.pl Top5_genus_2.xls ../Step0.Relative_abun/Genus_relative_abun.xls ../Step1.PCA/sample.metadata Top5_genus_clean.xls
#Step3. Draw boxplot
/ifs1/User/liyinhu/miniconda2/envs/R3.6/bin/R CMD BATCH Boxplot.R
