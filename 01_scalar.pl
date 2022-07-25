use strict;
use warnings;

# Scalar variables

my $name = "Gabriel";

if (1==1) {
    # Scope B

    my $dogsName = "Fido";
    print "$dogsName\n";

}

print "Hello, $name!\n";
