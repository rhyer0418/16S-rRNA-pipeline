#Step1.Remove replications
qiime vsearch dereplicate-sequences --i-sequences /ifs1/User/liyinhu/16S_practice/PartII/Transformed_data/Transformed_data.qza --o-dereplicated-table OTU_cluster/Dereplicated_table.qza --o-dereplicated-sequences OTU_cluster/Dereplicated_sequence.qza
#Step2.OTU clustering
qiime vsearch cluster-features-de-novo --i-sequences /ifs1/User/liyinhu/16S_practice/PartII/OTU_cluster/Dereplicated_sequence.qza --i-table /ifs1/User/liyinhu/16S_practice/PartII/OTU_cluster/Dereplicated_table.qza --p-perc-identity 0.97 --o-clustered-table OTU_cluster/Feature_table.qza --o-clustered-sequences OTU_cluster/Feature_sequence.qza
#Step3.Visulization of Feature table
qiime feature-table summarize --i-table /ifs1/User/liyinhu/16S_practice/PartII/OTU_cluster/Feature_table.qza --o-visualization /ifs1/User/liyinhu/16S_practice/PartII/OTU_cluster/Feature_table.qzv
