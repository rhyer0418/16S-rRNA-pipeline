#Step1.Denoising, filter chimera & clustering
qiime dada2 denoise-single --i-demultiplexed-seqs /ifs1/User/liyinhu/16S_practice/DADA2/Transformed_data.qza --p-trunc-len 0 --o-table Feature_table.qza --o-representative-sequences Feature_sequence.qza --o-denoising-stats DADA2_stat_table.qza
#Step2.Visulization of Feature table
qiime feature-table summarize --i-table /ifs1/User/liyinhu/16S_practice/PartII/DADA2/Feature_table.qza --o-visualization /ifs1/User/liyinhu/16S_practice/PartII/DADA2/Feature_table.qzv
