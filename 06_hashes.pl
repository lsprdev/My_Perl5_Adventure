use strict;
use warnings;

use Data::Dumper;

my %countries = (
    england => "small",
    australia => "large",
    germany => "medium",
);

my $sizeOfEngland = $countries{"australia"};

# Add

$countries{"peru"} = "Very large";

# Change

$countries{"england"} = "Very very large";

# Delete

delete $countries{"peru"};

print Dumper(\%countries);

# qw hash 

my %hash_food_qw = qw(
    burger 500
    chips 200
    cola 400
);