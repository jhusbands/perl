use strict;
use warnings;

print "This will calculate the radius of any diameter circle. 
Please enter your radius.\n";

my $radius = <STDIN>;

chomp($radius);

my $circ = (2 * $radius) * 3.14;

	while ($radius < 0)
                {
		print "Negative numbers are not allowed.  Your result will default to 0.\n"; 
		last
		};

print "Your answer is $circ.\n";	
