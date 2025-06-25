#Importing 16S paired sequencing data
qiime tools import --type 'SampleData[SequencesWithQuality]' --input-path /ifs1/User/liyinhu/16S_practice/DADA2/samples.manifest --output-path /ifs1/User/liyinhu/16S_practice/DADA2/Transformed_data.qza --input-format SingleEndFastqManifestPhred33
#Visulization of the results
qiime demux summarize --i-data /ifs1/User/liyinhu/16S_practice/DADA2/Transformed_data.qza --o-visualization /ifs1/User/liyinhu/16S_practice/DADA2/Transformed_data2.qzv
