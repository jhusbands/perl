#!/usr/bin/perl
    use strict;
        use warnings;
    
  
    
    my @nums = (1..10);
    foreach $num (@nums) {
    my $num /= 10;
    if ( $num >= 50) {
        print "$num \n";
        }}