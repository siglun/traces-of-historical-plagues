#!/usr/bin/perl

my @values     = ();
my $week       = 1;

while(my $line = <>) {
    chomp $line;
    
    my @fields = split /\s/,$line, 3;

    if($fields[0] != $week) {
	my $n=$#values;
	my $mean_value = 0;
	if($n > 1) {
	    foreach my $val (@values) {
		$mean_value = $mean_value + $val;
	    }
	    $mean_value = $mean_value/$n;
	    my $variance = 0;
	    foreach my $val (@values) {
		$variance = ($val - $mean_value)*($val - $mean_value) + $variance;
	    }
	    my $sd = sqrt($variance/($n-1)); 

	    print "$week $mean_value $sd\n";

	} else {
	    print "$week $fields[1] 0\n";
	}
	
	@values = ();
    }

    push @values,$fields[1];

    $week = $fields[0];

}
