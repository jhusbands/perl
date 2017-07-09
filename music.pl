use strict;
use warnings;

use Data::Dumper;
use File::Slurp;

my @lines = read_file( '/home/jhusbands/scripts/examples/music.txt' );

chomp @lines;

sub list {
    print "Print list from text:\n";
    foreach my $line (@_) {
        print "\t$line\n";
        } print "\n";
    } 

sub alphabet {
    print "Sort by Alphabetical order:\n";
    my @sorted = sort @_;
        foreach my $sort (@sorted) {
            print "\t$sort\n"
        }       print "\n";
    }

my $joined;

sub join {
    print "Join array with ':' :\n";
    $joined = join ":", @_;
      print "\t$joined\n\n";
}

sub split {
    print "Split array at the ':' :\n";
    my @split = split /:/, $joined;
        my @sorted = reverse sort @split; 
        foreach my $var (@sorted) {
            print sort "\t$var\n";
        }
    print "\n"
}


sub get_blues {
    print "Only the blues please:\n";
    my @blues = grep(/Blues/, @_);
        foreach my $var (@blues) {
            print "\t$var\n";
        }
}   

sub no_blues {
    print "\nNo blues please:\n";
    my @no_blues = grep(!/Blues/, @_);
       foreach my $var (@no_blues) {
        print "\t$var\n";
        }   
}

&list(@lines);
&alphabet(@lines);
&join(@lines);
&split(@lines);
&get_blues(@lines);
&no_blues(@lines);

