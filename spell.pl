#!/usr/bin/perl

# use strict;

use Text::Aspell;
my $speller = Text::Aspell->new;
 
die unless $speller;
 
 
# Set some options
$speller->set_option('lang','da');

while(my $word = <>) {
    if($speller->check( $word )) {
	print $word ;
    } else {
	my @suggesions=$speller->suggest($word);
	print join("\n",@suggesions);
    }
}

