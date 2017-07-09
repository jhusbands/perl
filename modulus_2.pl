use strict;
use warnings;
use Data::Dumper;

my $sum = 0;

for ( my $num = 0 ; $num <= 10 ; $num++ ) {

        if ( ( $num % 3 == 0 ) || ( $num % 5 == 0 ) ) {
            $sum += $num;
        }
    }
print $sum;
