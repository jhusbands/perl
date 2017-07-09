use lib '/home/jhusbands/samples/lib';

use Test::Most;
use Jhusbands::Loginpass;
use Data::Dumper;

use strict;
use warnings;

BEGIN { use_ok ('Jhusbands::Loginpass') }

subtest "Test Fullname" => sub {
    
my $name = "testing this";
my $fullname;

lives_ok {
    $fullname = Jhusbands::Loginpass->check_name($name);
} "lives ok";

explain $fullname, " = \$fullname";

ok( $fullname =~ m/^\w+\s+\w+$/, '\$fullname is like m/^\w+\s+\w+$/');

is ($fullname, 'Testing This', "\$fullname is Testing This");

isn't ($fullname, 'testing this', "\$fullname isn't testing this");

cmp_ok ($fullname, "eq", "Testing This", "does return format ucifirst lc first and last name");

};

subtest "Test Password" => sub {
    
my $pass1 = "Pass12";
my $pass2 = "Pass12";

my $password;
lives_ok {
    $password = Jhusbands::Loginpass->check_pass($pass1, $pass2 );
}   "\$password lives ok";

explain $password, " = \$PassWord";

ok( $password =~ m/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/, '\$password meets regex convention');

is ($password, 'Pass12', "\$password is Pass12");

isn't ($password, 'pass12', "\$password isn't testing this");

cmp_ok ($password, "eq", "Pass12", "\$password = Pass12, not anything else");
};

print "\n";

subtest "First Name" => sub {
    
my $fullname = "testing this";
my $firstname;

lives_ok {
     $firstname = Jhusbands::Loginpass->get_firstname($fullname);;
} "lives ok";

explain $firstname, " = \$firstname";

ok( $firstname = 'Testing', "\$firstname ok");

is ($firstname, 'Testing', "\$fullname is Testing ");

isn't ($firstname, 'testing', "\$fullname isn't testing");

cmp_ok ($firstname, "eq", "Testing", "does return format ucifirst lc first and last name");

};

print "\n";

subtest "Last Name" => sub {
    
my $fullname = "testing this";
my $lastname;

lives_ok {
     $lastname = Jhusbands::Loginpass->get_firstname($fullname);;
} "lives ok";

explain $lastname, " = \$lastname";

ok( $lastname = 'This', "\$lastname ok");

is ($lastname, 'This', "\$fullname is This ");

isn't ($lastname, 'testing', "\$fullname isn't testing");

cmp_ok ($lastname, "eq", "This", "does return format ucifirst lc first and last name");

};

print "\n";

subtest "Username" => sub {
    
my $fullname = "testing this";
my $username;

lives_ok {
     $username = Jhusbands::Loginpass->get_firstname($fullname);;
} "lives ok";

explain $username, " = \\tthis";

ok( $username = 'tthis', "\$username ok");

is ($username, 'tthis', "\$username is This ");

isn't ($username, 'testing', "\$username isn't testing");

cmp_ok ($username, "eq", "tthis", "does return format ucifirst lc first and last name");

};

done_testing()