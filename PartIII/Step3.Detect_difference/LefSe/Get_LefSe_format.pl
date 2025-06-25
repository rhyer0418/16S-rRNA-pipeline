#!usr/bin/perl -w
use strict;
use warnings;

unless(@ARGV==2){
    die "Usage: perl $0 <Relative_abundance.table.txt> <Table_for_LefSe.txt>!\n";
}

my (%abun,%tax);

open IN, "$ARGV[0]"||die $!;
<IN>;
chomp(my $header=<IN>);
my @header=split /\t+/,$header;
while(<IN>){
    chomp(my $line=$_);
    my @array=split /\t+/,$line;
    $array[0]=~s/\s+/\_/g;
    $array[0]=~s/\[|\]//g;
    my @array2=split /\|/,$array[0];
    my @k=split /\_+/,$array2[0];
    my @p=split /\_+/,$array2[1];
    my @c=split /\_+/,$array2[2];
    my @o=split /\_+/,$array2[3];
    my @f=split /\_+/,$array2[4];
    my @g=split /\_+/,$array2[5];
    if (exists $g[-1] && $g[-1] ne "g" ){
	my $name=join ("|",@array2);
	$tax{$name}=1;
	for my $a (1..$#header-1){
	    $abun{$name}{$header[$a]}+=$array[$a];
	}
    }elsif (exists $f[-1] && $f[-1] ne "f"){
	pop @array2;
	my $name2=join ("|",@array2);
	$tax{$name2}=1;
	for my $b (1..$#header-1){
	    $abun{$name2}{$header[$b]}+=$array[$b];
	}
    }elsif (exists $o[-1] && $o[-1] ne "o"){
	pop @array2;
	pop @array2;
	my $name3=join ("|",@array2);
	$tax{$name3}=1;
	for my $c (1..$#header-1){
	    $abun{$name3}{$header[$c]}+=$array[$c];
	}
    }elsif (exists $c[-1] && $c[-1] ne "c"){
	pop @array2;
	pop @array2;
	pop @array2;
	my $name4=join ("|",@array2);
	$tax{$name4}=1;
	for my $d (1..$#header-1){
	    $abun{$name4}{$header[$d]}+=$array[$d];
	}
    }elsif (exists $p[-1] && $p[-1] ne "p"){
	pop @array2;
	pop @array2;
	pop @array2;
	pop @array2;
	my $name5=join ("|",@array2);
	$tax{$name5}=1;
	for my $e (1..$#header-1){
	    $abun{$name5}{$header[$e]}+=$array[$e];
	}
    }else{
	pop @array2;
	pop @array2;
	pop @array2;
	pop @array2;
	pop @array2;
	my $name6=join ("|",@array2);
	$tax{$name6}=1;
	for my $f (1..$#header-1){
	    $abun{$name6}{$header[$f]}+=$array[$f];
	}
    }
}
close IN;
open OUT,">$ARGV[1]"||die $!;
print OUT "id";
for my $x (1..$#header-1){
    print OUT "\t$header[$x]";
}
print OUT "\n";
for my $y (sort keys %tax){
    my $out=$y;
    for my $z (1..$#header-1){
	$out .="\t$abun{$y}{$header[$z]}";
    }
    print OUT "$out\n";
}
close OUT;
