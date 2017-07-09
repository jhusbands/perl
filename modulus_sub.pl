use strict;
use warnings;
use Data::Dumper;

my @nums = (1..10);
my @nums2 = (1..20);


my $sum = 0;

sub modulus {
   foreach $_ (@_) {
    if ( ( $_ % 3 == 0 ) || ( $_ % 5 == 0 ) ) {
        $sum += $_;
    }
}
print "\t$sum\n"; 
}

modulus(@nums);
modulus(@nums2);
modulus(1..30);
