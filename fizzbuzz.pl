use strict;
use warnings;

#Write a program that prints the numbers from 1 to 100.
#But for multiples of three print “Fizz” instead of the number
#and for the multiples of five print “Buzz”.
#For numbers which are multiples of both three and five print “FizzBuzz

my @numbers = ( 1 .. 100 );

sub fizzbuzz {

    foreach my $number (@numbers)

    {

        if ( ( ( $number % 5 ) == 0 ) || ( ( $number % 3 ) == 0 ) ) {

            if ( ( $number % 3 ) == 0 ) { print "Fizz"; }

            if ( ( $number % 5 ) == 0 ) { print "Buzz"; }
        }
        else {
            print "$number";
        }
        print "\n";

    }
}

fizzbuzz(@numbers);

