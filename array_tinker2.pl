use strict;
use warnings;

use Data::Dumper;

my $string = qq(dog cat bird fish whale dolphin wolf lion lizard ape moneky chimp bear\n);

print $string;

print qq(\nConvert \$string into array via split\n);

my @animals = split / /, $string;

print Dumper(@animals);

print qq(\nConvert \@animals array back into \$string via join \n);

my $new_string = join "-:-", @animals;

print Dumper($new_string);

print qq(\nConvert \$string back into \@animals array via split\n);

my @new_animals = split /-:-/, $new_string;

print Dumper(@new_animals);
