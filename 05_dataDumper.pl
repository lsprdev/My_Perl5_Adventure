use strict;
use warnings;

use Data::Dumper;

my $scalar = "string";

my @array = ("string1", "str2", "str3");

my %hash = (
    name => "Gabriel",
    height => "5'5",
    interest => ["programming", "music", "books"]
);

print Dumper(\%hash);
