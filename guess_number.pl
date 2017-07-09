use strict;
use warnings;

print qq (
Hi, I'm a program and I don't have ears (yet).
Can you type your name for me and press enter?\n);

chomp( my $name = <STDIN>);
    
print qq (
Hi $name! Please to meet you.

I'm bored so let's play a game.
I am thinking of a number between 0 and 100.
Can you guess it? Don't worry, I'll help you along the way.
Go ahead, enter a number!\n);

my $i = int rand(100);



while (my $input = <STDIN>) {
    
    if ($input < $i) { 
        print qq (Nope, guess higher!\n);
    }
    elsif ($input > $i) {
        print qq (Nope, guess lower! Try again!\n);
    }
    elsif ($input == $i) {
        print qq (Wow! You got it $name!! I'm impressed.\n);
        last;
    }
    
    }

