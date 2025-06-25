#!usr/bin/perl -w
use strict;
use warnings;

unless(@ARGV==5){
    die "Usage: perl $0 <Spearman.xls> <Spearman_P_FDR.xls> <Spearman,cutoff> <P_FDR.cutoff> <Output.edge.table>!\n";
}

my (%spearman, %spearman_fdr);

open IN1, "$ARGV[0]"||die $!;
chomp(my $header1=<IN1>);
my @header1=split /\,/,$header1;
while(<IN1>){
    chomp(my $line1=$_);
    my @array1=split /\,/,$line1;
    for my $a (1..$#array1){
	$spearman{$array1[0]}{$header1[$a]}=$array1[$a];
    }
}
close IN1;

open IN2, "$ARGV[1]"||die $!;
open OUT, ">$ARGV[4]"||die $!;
print OUT "Source\tTarget\tSpearman\tAdjusted_P_value\n";
chomp(my $header2=<IN2>);
my @header2=split /\,/,$header2;
while(<IN2>){
    chomp(my $line2=$_);
    my @array2=split /\,/,$line2;
    for my $b (1..$#array2){
	if (exists $spearman_fdr{$header2[$b]}{$array2[0]}){
	    next;
	}elsif($header2[$b] eq $array2[0]){
	    next;
	}else{
	    $spearman_fdr{$array2[0]}{$header2[$b]}=$array2[$b];
	}
	if ($spearman_fdr{$array2[0]}{$header2[$b]} > $ARGV[3]){
	    next;
	}
	if ($spearman{$array2[0]}{$header2[$b]} < 0 && $spearman{$array2[0]}{$header2[$b]} < -($ARGV[2])){
	    print OUT "$array2[0]\t$header2[$b]\t$spearman{$array2[0]}{$header2[$b]}\t$spearman_fdr{$array2[0]}{$header2[$b]}\n";
	}
	if ($spearman{$array2[0]}{$header2[$b]} > 0 && $spearman{$array2[0]}{$header2[$b]} > $ARGV[2]){
	    print OUT "$array2[0]\t$header2[$b]\t$spearman{$array2[0]}{$header2[$b]}\t$spearman_fdr{$array2[0]}{$header2[$b]}\n";
	}
    }
}
print "-$ARGV[2]";
close IN2;
close OUT;

