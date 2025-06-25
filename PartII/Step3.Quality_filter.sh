#Step1.Quality filtering
qiime quality-filter q-score --i-demux /ifs1/User/liyinhu/16S_practice/PartII/Transformed_data/Transformed_data.qza --o-filtered-sequences /ifs1/User/liyinhu/16S_practice/PartII/Quality_filter/Filtered_data.qza --o-filter-stats /ifs1/User/liyinhu/16S_practice/PartII/Quality_filter/Filtered_stats.qza
#Step2.Visulizaion with table
qiime metadata tabulate --m-input-file /ifs1/User/liyinhu/16S_practice/PartII/Quality_filter/Filtered_stats.qza --o-visualization /ifs1/User/liyinhu/16S_practice/PartII/Quality_filter/Filtered_stats.qzv
