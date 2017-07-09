use strict;
use warnings;

print "Enter the name of account you wish to delete.\n";
chomp( my $username = <STDIN> );

#my $admin = "jhusbands"; must be logged in as admin

system("sudo -i deluser $username");
system("sudo rm -r /home/$username");

#system("userdel $username");
