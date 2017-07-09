use strict;
use warnings;

#Project Euler, problem 45
# https://projecteuler.net/problem=45
#Find the next triangle number that is also pentagonal and hexagonal (after 40755)

my %tri = ();
my %pent = ();
my %hex = ();
my $num;

for (my $i = 0; $i < 1000000; $i++) {
	$tri { ( $i * ( $i + 1 ) / 2 ) } = 1;
	$pent { ( $i * ( 3 * $i - 1 ) / 2 ) } = 1;
	$hex { ( $i * ( 2 * $i - 1 ) ) } = 1;
}

foreach $num (sort keys %tri) {
	if ($tri{$num} && $pent{$num} && $hex{$num}) {
		print "\nThe next pent//hex triangle after 40755 is:\n$num\n\n" if ($num > 40755);
	}
}
exit;

