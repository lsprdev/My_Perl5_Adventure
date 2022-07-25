use strict;
use warnings;

my @array = ("string1", "str2", "str3");

my @list_of_things = ("String", 1, 0, 0.1, undef);


my $thing = "another thing";
my @list_of_things2 = ("hello", 1, 5, $thing);

# Accessing Arrays

my $element = $array[1];

# DONT DO THIS
my $neat = "string";
my @neat = ("string", "string2", $element);
$neat[2];

# qw arrays
my @quoteWordArray = qw(each of these words is an array element);
my @quoteWordArraySlash = qw/each of these words is an array element/;

# Len of array
print scalar @quoteWordArray, "\n";



