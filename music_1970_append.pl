use Data::Dumper;
use File::Slurp;


my @lines = read_file( 'music.txt' );

chomp @lines;

my $time = localtime;

my @append = map {$_ .= " **appended** $time\n";} @lines;

append_file( 'music_1970_append.txt', @append);

print "Your music file has been appended on $time";
