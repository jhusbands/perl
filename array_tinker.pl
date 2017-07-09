use strict;
use warnings;

use Data::Dumper;

print 'The @animals array contains the following:' . "\n";

my @animals = ( "dog", "cat", "bird", "fish", "whale", "dolphin", "wolf", "lion", "lizard", "ape", "monkey", "chimp", "bear" );

foreach my $i (0 .. $#animals) {
    print "$i - $animals[$i]\n";
}

print "\npush squirrel\n";

push @animals, 'Squirrel';

foreach my $i (0 .. $#animals) {
    print "$i - $animals[$i]\n";
}

print "**Squirrel has been added to end of array off the array**\n";

print "\npop squirrel\n";

my $pop = pop @animals;

foreach my $i (0 .. $#animals) {
    print "$i - $animals[$i]\n";
}

print "**$pop has been moved off the end of array**\n";

print "\nshift array\n";

my $shift = shift @animals;

foreach my $i (0 .. $#animals) {
    print "$i - $animals[$i]\n";
}

print "**$shift has been moved off beginning of array**\n\n";

print "unshift array\n";

unshift @animals, 'Raccoon';

foreach my $i (0 .. $#animals){
    print "$i - $animals[$i]\n";
}

print "**Raccoon has been moved into beginning of array**\n";

print "\nusing Data::Dumper\n";
print Dumper(@animals);

