#Step1.Extract the taxnomical information at Kingdom level
qiime taxa collapse --i-table Deblur/Feature_table.qza --i-taxonomy Taxnomical_anno/Taxonomy_deblur.qza --p-level 1 --o-collapsed-table Summary_file/Taxonomy_L1.qza
#Step2.Obtain the collapsed abundance at Kingdom level
qiime metadata tabulate --m-input-file Summary_file/Taxonomy_L1.qza --o-visualization Summary_file/Taxonomy_L1.qzv
#Step3.Extract the taxnomical information at Phylum level
qiime taxa collapse --i-table Deblur/Feature_table.qza --i-taxonomy Taxnomical_anno/Taxonomy_deblur.qza --p-level 2 --o-collapsed-table Summary_file/Taxonomy_L2.qza
#Step4.Obtain the collapsed abundance at Phylum level
qiime metadata tabulate --m-input-file Summary_file/Taxonomy_L2.qza --o-visualization Summary_file/Taxonomy_L2.qzv
#Step5.Extract the taxnomical information at Class level
qiime taxa collapse --i-table Deblur/Feature_table.qza --i-taxonomy Taxnomical_anno/Taxonomy_deblur.qza --p-level 3 --o-collapsed-table Summary_file/Taxonomy_L3.qza
#Step6.Obtain the collapsed abundance at Class level
qiime metadata tabulate --m-input-file Summary_file/Taxonomy_L3.qza --o-visualization Summary_file/Taxonomy_L3.qzv
#Step7.Extract the taxnomical information at Order level
qiime taxa collapse --i-table Deblur/Feature_table.qza --i-taxonomy Taxnomical_anno/Taxonomy_deblur.qza --p-level 4 --o-collapsed-table Summary_file/Taxonomy_L4.qza
#Step8.Obtain the collapsed abundance at Order level
qiime metadata tabulate --m-input-file Summary_file/Taxonomy_L4.qza --o-visualization Summary_file/Taxonomy_L4.qzv
#Step9.Extract the taxnomical information at Family level
qiime taxa collapse --i-table Deblur/Feature_table.qza --i-taxonomy Taxnomical_anno/Taxonomy_deblur.qza --p-level 5 --o-collapsed-table Summary_file/Taxonomy_L5.qza
#Step10.Obtain the collapsed abundance at Family level
qiime metadata tabulate --m-input-file Summary_file/Taxonomy_L5.qza --o-visualization Summary_file/Taxonomy_L5.qzv
#Step11.Extract the taxnomical information at Genus level
qiime taxa collapse --i-table Deblur/Feature_table.qza --i-taxonomy Taxnomical_anno/Taxonomy_deblur.qza --p-level 6 --o-collapsed-table Summary_file/Taxonomy_L6.qza
#Step12.Obtain the collapsed abundance at Genus level
qiime metadata tabulate --m-input-file Summary_file/Taxonomy_L6.qza --o-visualization Summary_file/Taxonomy_L6.qzv
#Step13.Extract the taxnomical information at Species level
qiime taxa collapse --i-table Deblur/Feature_table.qza --i-taxonomy Taxnomical_anno/Taxonomy_deblur.qza --p-level 7 --o-collapsed-table Summary_file/Taxonomy_L7.qza
#Step14.Obtain the collapsed abundance at Species level
qiime metadata tabulate --m-input-file Summary_file/Taxonomy_L7.qza --o-visualization Summary_file/Taxonomy_L7.qzv
