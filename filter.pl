#!/usr/bin/perl -w

use strict;

while(my $word = <>) {
    $word =~ s|[\d©«®»—“”„£¥€]||g;
    print $word if $word !~ m/^\s?$/;
}

