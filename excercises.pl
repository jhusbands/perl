use strict;
use warnings;

use Data::Dumper;

=pod
my %car_catalog = (
    	'BMW Series 5' => '100000',
        'Mercedes 200' => '250000',
        'Toyota Corolla' => '20000',
        'Lexus 3' => '95000'
        );
        
my @wishlist = ("BMW Series 5", "Toyota Corolla");
    #use @ and %;
	print "I would like to buy one $wishlist[0] for the price of $car_catalog{'BMW Series 5'} Dollars.\n";
	print "I would like to buy one $wishlist[1] for the price of $car_catalog{'Toyota Corolla'} Dollars.\n";


                            #convert feet to meter, kilograms to lbs, dollars to euro
my $feet = 5.8;
my $pounds = 195;
my $dollars = 1.35;

#conversion
my $var_meters = 0.3048;
my $convert_meters = $feet *$var_meters;
my $var_kilo = 0.45359237;
my $convert_kilos = $pounds * $var_kilo;
my $var_euro = 0.89;
my $convert_euro = $dollars * 0.89; 


my $meter = sprintf("%.2f", $convert_meters);
my $kilo = sprintf("%.2f", $convert_kilos);
my $euro = sprintf("%.2f", $convert_euro);


print "As a European are $meter meters tall, weight $kilo kilos, and have $euro euros to spend\n";

=cut #                                  alternative % with STDIN, sprintf, array conversion, double  values

print "Enter your height in feet\n";
chomp( my $feet = <STDIN> );
print "Enter your weight in pounds\n";
chomp( my $pounds = <STDIN> );
print "Enter your money in dollars\n";
chomp( my $dollars = <STDIN> );

my %euro_conversion = (
    'meter' => sprintf( "%.2f", ( $feet * 0.3048 ) ),
    'kilo'  => sprintf( "%.2f", ( $pounds * 0.45359237 ) ),
    'euro'  => sprintf( "%.2f", ( $dollars * 0.89 ) )
);
print
"In Europer you are $euro_conversion{'meter'} meters tall, your weight is $euro_conversion{'kilo'} lbs, and you have $euro_conversion{'euro'} euros to get a cappuchino!\n";

print "\nLets double your height, weight, and money! Check it!\n";

my @nums = values(%euro_conversion);

double(@nums);

sub double {
    foreach (@_) {
        $_ *= 2;
    }
}

print
"\nDoubling your values, you are $nums[1] meters tall, your weight is  $nums[0] kilo, and you have  $nums[2] euros to get a cappuchino!\n";
