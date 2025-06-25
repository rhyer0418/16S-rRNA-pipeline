#Step1.Denoising, filter chimera & clustering
qiime deblur denoise-16S --i-demultiplexed-seqs /ifs1/User/liyinhu/16S_practice/PartII/Transformed_data/Transformed_data.qza --p-trim-length 410 --o-table Deblur/Feature_table.qza --o-representative-sequences Deblur/Feature_sequence.qza --p-sample-stats --o-stats Deblur/Sample_stats.qza
#Step2.Visulization of Sample stat
qiime deblur visualize-stats --i-deblur-stats /ifs1/User/liyinhu/16S_practice/PartII/Deblur/Sample_stats.qza --o-visualization /ifs1/User/liyinhu/16S_practice/PartII/Deblur/Sample_stats.qzv
#Step3.Visulization of Feature table
qiime feature-table summarize --i-table /ifs1/User/liyinhu/16S_practice/PartII/Deblur/Feature_table.qza --o-visualization /ifs1/User/liyinhu/16S_practice/PartII/Deblur/Feature_table.qzv
#Step4.Obtain the sOTU sequences
qiime feature-table tabulate-seqs --i-data Deblur/Feature_sequence.qza --o-visualization Deblur/Feature_sequence.qzv
