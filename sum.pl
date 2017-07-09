use strict;
use warnings;

my @numbers = ( 1 .. 10 );

sub sum {

    my $sum = 0;

    foreach my $var (@numbers) {

        my $sum = $sum += $var;
    }

    print "$sum \n";

}

sum(@numbers);

