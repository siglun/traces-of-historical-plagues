#!/usr/bin/perl -w

use strict;

my %i = {};
my %er = {};
my %har = {};
my %havde = {};

while(my $line = <>) {
    chomp $line;
    my ($count, $word, $year) = split(" ",$line,3);

#    print "$year $word $count\n";

    if($word eq 'i') {
	$i{$year}=$count;
    } elsif ($word eq 'er') {
	$er{$year}=$count;
    } elsif ($word eq 'har') {
	$har{$year}=$count;
    } elsif ($word eq 'havde') {
	$havde{$year}=$count;
    }
    
}

for my $year (1848 .. 1858) {
    print "$year\t$i{$year}\t$er{$year}\t$har{$year}\t$havde{$year}\n";
}
