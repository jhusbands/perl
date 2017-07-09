use strict;
use warnings;

use File::Slurper 'read_lines';

my $fh = 'TLD.txt';

my @TLD = read_lines($fh);

#my @TLD= qw( yz.b.a y.b yy.b zy.a z.a za.a za.b zaa.a ); test

chomp @TLD;

#split the array at the . , reverse the scalars in the array at the split, join the scalars array at . ,(i.e com.google)
my @reverseTLD = map { join '.' => reverse split( /\./, $_ ) } @TLD;

#sort the new array alphabetically as com.google
my @revsortTLD = sort @reverseTLD;    

#return to google.com (split, reverse, join again)
my @finalsortTLD = map { join '.' => reverse split( /\./, $_ ) } @revsortTLD;    

print "\n$_" for @finalsortTLD;
