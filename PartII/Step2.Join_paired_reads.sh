#Step1.Join paired-end reads
qiime vsearch join-pairs --i-demultiplexed-seqs /ifs1/User/liyinhu/16S_practice/PartII/Transformed_data/Transformed_data.qza --o-joined-sequences /ifs1/User/liyinhu/16S_practice/PartII/Joined_data/Joined_data.qza
#Step2.Visulization of the connect results
qiime demux summarize --i-data /ifs1/User/liyinhu/16S_practice/PartII/Joined_data/Joined_data.qza --o-visualization /ifs1/User/liyinhu/16S_practice/PartII/Joined_data/Joined_data.qzv
