use strict;
use warnings;

sub total 
	{	
	my $sum;
	foreach (@_) {
		$sum += $_;
	}
	$sum
	}

#FIND THE TOTAL OF @numbers

my @numbers = ( 1..1000 );

my $total_numbers = total(@numbers);

print "The total sum of the programs \@_ calculations is $total_numbers.\n";










#FIND THE TOTAL OF @fred AND $user_total
#
#my @fred = qw{ 1 3 5 7 9};
#
#my $fred_total = total(@fred);
#
#print "The total of the \@fred array is $fred_total.\n";
#
#print "Enter some numbers on a seperate line.\n";
#
#my $user_total = total<STDIN>;
#
#print "The total of those numbers is $user_total.\n."
