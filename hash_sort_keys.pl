use strict;
use warnings;

my %soli_deo_gloria  = (

    'Jason' => 'Husbands',
    'Radai' => 'Rodriguez',
    'Joe' => 'Pentony',
    'Sean' => 'Hulme'
    );
    
    foreach my $key (sort keys %soli_deo_gloria) {
    
    my $value = $soli_deo_gloria{$key};
    
    print "$key $value.\n";
    
    }
