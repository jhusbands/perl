use lib '/home/jhusbands/samples/lib';

use Jhusbands::Loginpass;
use Data::Dumper;

use strict;
use warnings;




print "Enter your first and last name. The naming convention is as follows:\n";

my $name_conv = Jhusbands::Loginpass->name_conv();
    
    print $name_conv;

    print "Enter: ";
        chomp(my $name = <STDIN>);
    
my $fullname = Jhusbands::Loginpass->check_name($name);
my $firstname = Jhusbands::Loginpass->get_firstname($fullname);
my $lastname = Jhusbands::Loginpass->get_lastname($fullname);
    
    print "\nThank you $lastname, $firstname.\n";
    
    print "\nNow please enter your UNSECURED password.\n";

my $pass_conv = Jhusbands::Loginpass->pass_conv();

    print $pass_conv;

    print "Enter: ";   
        chomp(my $pass1 = <STDIN>);
            
    print "Confirm: ";
        chomp(my $pass2 = <STDIN>);
        
my $password = Jhusbands::Loginpass->check_pass($pass1, $pass2);
my $username = Jhusbands::Loginpass->username($fullname);    
    print "Your username is: $username\nYour password is: $password.\n"




