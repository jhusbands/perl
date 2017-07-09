package Jhusbands::Loginpass;

use strict;
use warnings;

use Data::Dumper;


my $pass = "sarah5631";

if ($pass =~ m/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/) {
    print "passed"
} else {
    print "failed";
}
=pod
sub check_name {
    my $class = shift;
    my $fullname = @_;
    if ($fullname =~ /^\w+\s+\w+$/ ) {
        my @fullname_array = split( / /, $fullname);
            
            foreach $_ (@fullname_array) {
                $_ = ucfirst lc for @fullname_array;
                @fullname_array = join(" ", @fullname_array);
                print Dumper(@fullname_array) . "\n";
                return @fullname;
            }
      }   
}
    
        foreach my $word (@array) {
        $word = ucfirst $word;
        print Dumper(@array);
        }





my $username = "testing"; 

my $admin = "jhusbands";
my $ls = "sudo -i adduser $username";
#my $add ="sudo ";

system($ls);
#system($add);
=cut