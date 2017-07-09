use strict;
use warnings;
use Data::Dumper;

my $sum = 0;

print "Enter a number to find the % of 3 and 5:";

chomp( my $input = <STDIN> );

my @num = ( 0 .. $input );

foreach my $num (@num) {
    if ( ( $num % 3 == 0 ) || ( $num % 5 == 0 ) ) {
        $sum += $num;
    }
}
print $sum;
