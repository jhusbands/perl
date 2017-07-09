use strict;
use warnings;

use Data::Dumper;
=pod
print "\n" . 'Convert @ into % and print has key => values:' . "\n";

my @breakf = q( coffee $2.50 donuts $0.95 juice $$1.50 ) . "\n";

my %breakf = @breakf;

print Dumper(%breakf)
=cut

my %car = (
    'brand' => 'mazda',
    'model' => '6',
    'year' => '2014',
    'color' => 'red',
);

my @keys = keys %car;
my @values = values %car;

print 'Print each key in the %car hash:' . "\n";

    foreach my $key (@keys){
        print "$key\n";
    }
    
print "\n" . 'Print each value in the %car hash:' . "\n";

    foreach my $val (@values){
        print "$val\n";
    }
 
print "\n" . 'Print each key in the %car hash that is year and model:' . "\n";  
    
        foreach my $key (@keys){
        print "$key\n" if $key =~ (/y|m/);
    }
    
print "\n" . 'Print each value in the %car hash:' . "\n";

    foreach my $value (@values) {
        print "$value\n";
    }

print "\n" . 'Print only digits from the values in the %car hash:' , "\n";

    foreach my $value (@values) {
        print "$value\n" if $value =~ (/\d/);
        }
        
print "\n" . 'Print keys and values form the %car hash:' . "\n";

    while ( my ($keys, $values)  = each %car ) {
        print "$keys => $values\n";
    }
    
print "\n" . 'Sort %car hash by keys:' . "\n";

    foreach my $key (sort keys %car) {
        printf "%-8s %s\n", $key, $car{$key};
}
    
    print "\n" . 'Another way to srt %car by keys:' . "\n";  
    
    foreach my $var (sort keys %car) {
        print "$var => $car{$var}\n";
    }
    
print "\n" . 'Sort %car hash by value:' . "\n";

    foreach my $n (sort { $car{$a} cmp $car{$b} } keys %car) {
        printf "%-8s %s\n", $car{$n} => $n;
    }
print "\n" . 'Or you could simply use reverse:' . "\n";

    my %inverse_car = reverse %car;
    
        foreach my $v (sort keys %inverse_car) {
            print "$v => $inverse_car{$v}\n";
        }