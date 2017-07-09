use strict;
use warnings;

print "\n";

print "Enter some names, each with a new line.\n";

chomp( my @input = <STDIN> );

    foreach my $input(@input) {

        if ($input =~ (/[Ff]red/)) {

            print "$input matches!\n";

        }

        else {
 
            print "Sorry, $input is not a  match.\n";
        }
    }

