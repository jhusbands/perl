use strict;
use warnings;

print "Enter name:\n";

while ( <STDIN> ) {

chomp;

#Matches all names with a upper or lower case J
#if (/[Jj]./) {

#Matches all names with a '.' in it.
#if (/\./) {

#Matches all words with one of more capital letters.
#if (/[A-Z]./) {

#Matches all words with a whitespace and Capital C.
#if (/[C]./) {

#Matches jason & brandon ignoring case.
if (/jason|Brandon/i) {

print "\t$_ matches!\n"; 

}

else {
    print "\t$_ does not match.\n"
}

}
