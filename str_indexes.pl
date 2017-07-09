    use strict;
    use warnings;
    use 5.010;
    
my $str = "The black cat climbed the green tree.\n";

print $str;

#get full length of string
my $length = length $str;
 
print "The length of the string is " . "'$length'\n";

#get substr tree
my $substr = substr $str, -6, 4;

print "The substr at offset -6, 4 is " . "'$substr'\n";

#get index location of tree
my $index = index $str, "tree";

print "The word tree begins at index " . "$index'\n";

#get the index for the color green
my $colorindex = index $str, 'gr';

print "The index of the \"t\" in tree is " . "'$colorindex'\n";

#get the full color "green' substr
my $color = substr $str, 26, 5;

print "The color of the tree using substr is " . "'$color'" . "\n";

#add "and went foobar!"

my $dead = substr $str, 36, 37, " and went foobar!";

print "$str";
