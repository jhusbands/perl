use strict;
use warnings;

use Data::Dumper;
use Sudo;

use strict;
use warnings;

#user name convention:
#[FIRST LETTER OF FIRST NAME] [LASTNAME] ex. Real Name "Jason Husbands" = Username "jhusbands";

print
"Please enter your first name followed by your last name. For example: John Smith.\n";
chomp( my $rname = <STDIN> );

analyze_name($rname);

sub analyze_name {
    if ( $_[0] =~ /^\w+\s+\w+$/ ) {
        print "You entered $_[0] this correct? y/n\n";
        chomp( my $yn = <STDIN> );
        if ( $yn =~ /(yes|y)/i ) {
            print
"Thank you $_[0]. Now please enter a password. REMEMBER your password.\n";
        }
        if ( $yn =~ /(no|n)/i ) {
            print "Please enter first and last name.\n";
            chomp( $rname = <STDIN> );
            analyze_name($rname);
        }
    }
    else {
        print
"Not a valid name convention. Please enter a first name and a last name.\n";
        chomp( $rname = <STDIN> );
        analyze_name($rname);

    }
}

chomp( my $password1 = <STDIN> );
print "Please confirm password.\n";
chomp( my $password2 = <STDIN> );

my @password = ( $password1, $password2 );

passw(@password);

sub passw {
    my $_ = @_;
    if ( $_[0] eq $_[1] ) {
        print "Thank you. Your password has been accepted\n";
    }
    else {
        print "Passwords do not match.  Please re-enter your password.\n";
        chomp( my $pass1 = <STDIN> );
        print "Please confirm password.\n";
        chomp( my $pass2 = <STDIN> );
        @password = ( $pass1, $pass2 );
        passw(@password);
    }
}

my @split = split( / /, $rname );
my $firstinitial = substr $rname, -0, 1;
my $lastname = $split[1];
chomp( my $user = lc $firstinitial . lc $lastname );

print
"Your username is all lower case: $user.\nPlease take note of your password.\n";

=cut
system "sudo -u jhusbands useradd $user";
        
print "Your account has been created";
