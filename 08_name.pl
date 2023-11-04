print "What is your name? ";
my $name = <STDIN>;
chomp $name;

if ($name) {
    print "Hello, $name!\n";
} else {
    print "You didn't enter a name!\n";
}