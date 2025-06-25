#!usr/bin/perl -w
use strict;
use warnings;

unless(@ARGV==5){
    die"Usage: perl $0 <Path ot Relative_abundance.file> <Pair/Unpaired> <Wilcox.test.R> <FDR.test.R> <Path to Output.directory>!\n";
}

my ($pair,%group);
if($ARGV[1] eq "Pair"){
    $pair="TRUE";
}elsif($ARGV[1] eq "Unpaired"){
    $pair="FALSE";
}else{
    print"Please confirm whether to use paired comparision or not!\n";
}

open IN,"$ARGV[0]"||die $!;
open OUT,">$ARGV[2]"||die $!;
print OUT "taxdata \<\- read.table\(\"$ARGV[0]\"\,header=T\,sep=\"\\t\"\)\n\n\n";

chomp(my $header=<IN>);
my @header=split /\s+/,$header;
for my $a (2..$#header){
	print OUT "\#$header[$a]\n";
	print OUT "mean\.sd \<\- aggregate\(taxdata\$$header[$a]\,by\=list\(taxdata\$Group\)\,FUN\=function\(x\)c\(mean=sprintf\(\"\%0\.6f\"\,mean\(x\)\)\,sd\=sprintf\(\"\%0\.6f\"\,sd\(x\)\)\)\)\n";
	print OUT "test \<\- wilcox\.test\($header[$a]\~Group\,data\=taxdata\,pair=$pair\,conf\.level\=0\.95\)\n";
	print OUT "print \= cbind\(\'$header[$a]\'\,mean\.sd\[1\,2\]\,mean\.sd\[2\,2\]\,test\$p.value)\n";
	print OUT "write\.table\(print\,file\=\'$ARGV[4]\/wilcox\.test\.xls\'\,quote\=F\,append\=T\,row\.names\=F\,col\.names\=F\,sep\=\'\\t\'\)\n\n\n";
}
while(<IN>){
    chomp(my $line=$_);
    my @array=split /\s+/,$line;
    $group{$array[1]}=1;
}

close IN;
close OUT;
open RES, ">$ARGV[4]/wilcox.test.xls"||die $!;
my $title = "";
for my $b (sort keys %group){
    $title .= "\tMEAN.group.$b\tSD.group.$b";
}
print RES "Species\t$title\tp.value\n";

open OUT2,">$ARGV[3]"||die $!;
print OUT2 "data \<\- read\.table\(\"$ARGV[4]\/wilcox.test.xls\"\,header\=T\,check\.names\=FALSE\)\n";
print OUT2 "col \= length\(data\)\n";
print OUT2 "pvalue \<\- data\[\,col\]\n";
print OUT2 "FDR \<\- sprintf \(\"\%0\.6f\"\,p\.adjust\(pvalue\,method\=\"BH\"\)\)\n";
print OUT2 "print \<\- cbind\(data\,FDR\)\n";
print OUT2 "write\.table\(print\,\'$ARGV[4]\/Wilcox\.FDR\.test\.xls\'\,quote\=F\,sep\=\'\\t\'\,row\.names\=FALSE\)\n";
close OUT2;
