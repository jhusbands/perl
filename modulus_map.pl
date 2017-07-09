use strict;
use warnings;
my $sum = 0;
map { $sum += $_ if ( ( $_ % 3 ) == 0 || ( $_ % 5 ) == 0 ) } ( 1 .. 10 );
print $sum;

#omg, map