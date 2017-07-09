use strict;
use warnings;

my %lastname  = (

    'Jason' => 'Husbands',
    'Radai' => 'Rodriguez',
    'Joe' => 'Pentony',
    'Sean' => 'Hulme'
    );
    
    print "Please enter the name Jason, Radai, Joe, or Sean for full name.\n";

    my $name = <STDIN>;
    chomp $name;  
    
    print "$name" . "'s full name is $lastname{$name}.\n";
    
