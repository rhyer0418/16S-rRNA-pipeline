#!usr/bin/perl -w
use strict;
use warnings;

unless(@ARGV==4){
    die "Usage: perl $0 <Target.genus> <Genus_relative_abun.xls> <sample.metadata> <Cleaned.genus.data>!\n";
}

my (@target_genus,%sample_group,%sample_abun);
open IN1,"$ARGV[0]"|| die $!;
while(<IN1>){
    chomp(my $line=$_);
    push @target_genus, $line;
}
close IN1;

open IN2,"$ARGV[2]"|| die $!;
<IN2>;
while(<IN2>){
    chomp(my $line2=$_);
    my @array=split /\s+/,$line2;
    $sample_group{$array[0]}=$array[1];
}
close IN2;

open IN3,"$ARGV[1]"||die $!;
chomp(my $header=<IN3>);
my @header=split /\s+/, $header;
while(<IN3>){
    chomp(my $line3=$_);
    my @array2=split /\s+/,$line3;
    for my $a (1..$#array2){
	$sample_abun{$array2[0]}{$header[$a]}=$array2[$a];
    }
}
close IN3;

open OUT,">$ARGV[3]"||die $!;
print OUT "Genus\tSample\tGroup\tAbundance\n";
for my $b (@target_genus){
    my $out;
    for my $c (sort keys %sample_group){
	$out .="$b\t$c\t$sample_group{$c}\t$sample_abun{$c}{$b}\n";
    }
    print OUT "$out";
}
close OUT;

