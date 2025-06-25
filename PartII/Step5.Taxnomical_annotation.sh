#Step0. Classifier updating
#conda install --override-channels -c defaults scikit-learn=0.21.2
#Step1.Taxnomical annotation
qiime feature-classifier classify-sklearn --i-classifier /ifs1/User/liyinhu/miniconda2/envs/qiime2-2019.10/database/gg-13-8-99-nb-classifier.qza --i-reads Deblur/Feature_sequence.qza --o-classification Taxnomical_anno/Taxonomy_deblur.qza
#Step2.Visulization of taxnomical annotation
qiime metadata tabulate --m-input-file Taxnomical_anno/Taxonomy_deblur.qza --o-visualization Taxnomical_anno/Taxonomy_deblur.qzv
#Step3.Draw barplot
qiime taxa barplot --i-table Deblur/Feature_table.qza --m-metadata-file sample.metadata --i-taxonomy Taxnomical_anno/Taxonomy_deblur.qza --o-visualization Taxnomical_anno/Tax_bar_deblur.qzv
#Note: sample.metadata file need to be set by yourself.
#Step4.Export profiling table in biom format
qiime tools export --input-path Deblur/Feature_table.qza --output-path Taxnomical_anno
#Step5.Convert biom into tsv 
biom convert -i Taxnomical_anno/feature-table.biom -o Taxnomical_anno/feature-table.txt --to-tsv
