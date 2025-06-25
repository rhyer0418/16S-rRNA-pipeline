qiime feature-table relative-frequency --i-table /ifs1/User/liyinhu/16S_practice/PartII/Summary_file/Taxonomy_L6.qza  --o-relative-frequency-table /ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/LefSe/Relative_abundance.table.qza
qiime tools export --input-path /ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/LefSe/Relative_abundance.table.qza --output-path /ifs1/User/liyinhu/16S_practice/PartIII/Step3.Detect_difference/LefSe/
biom convert -i feature-table.biom -o Relative_abundance.table.txt --header-key "taxonomy" --to-tsv
sed -i 's/\;/\|/g' Relative_abundance.table.txt
