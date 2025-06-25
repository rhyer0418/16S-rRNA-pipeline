#!usr/bin/perl -w
use strict;
use warnings;

unless(@ARGV==2){
    die "Usage: perl $0 <Abundance.csv> <Relative_abundance.csv>!\n";
}

my(@new_header,%header,%abun,%total_abun);

open IN,"$ARGV[0]"||die $!;
chomp(my $header=<IN>);
my @header=split /\,/,$header;
push @new_header,"Sample_ID";
for my $a(1..$#header-2){
	my @array=split/\;/,$header[$a];
	my @array2=split/\_/,$array[-1];
	if(exists $array2[-1]){
	    $array2[-1]=~s/\[|\]//g;
	}
	if (!exists $array2[-1]||$array2[-1] eq "g"){
	    push @new_header,"Unclassified";
	}else{
	    push @new_header,$array2[-1];
	}
}

while(<IN>){
    chomp(my $line=$_);
    my @array=split /\,/,$line;
    for my $b (1..$#array-2){
	$total_abun{$array[0]} +=$array[$b];
	$abun{$array[0]}{$new_header[$b]}+=$array[$b];
	$header{$new_header[$b]}=1;
    }
}
close IN;

open OUT,">$ARGV[1]"||die $!;
for my $c(sort keys %header){
    	$c=~s/\s+/\_/g;
	print OUT "\t$c";
}
print OUT "\n";

for my $e(sort keys %total_abun){
    my $out=$e;
    for my $f(sort keys %header){
	my $relative_abun;
	$relative_abun=$abun{$e}{$f}/$total_abun{$e}*100;
	$relative_abun=sprintf "%.3f",$relative_abun;
	$out .="\t$relative_abun";
    }
    print OUT "$out\n";
}
close OUT;
