

@numbers= (1..10);
print "@numbers\n";

@arr = qw/a b c d e/;

print scalar (@arr), "\n"; # knows the number of elements in the array
print $#arr + 1, "\n"; # knows the number of elements in the array

my $str = "Hello World";
my @arr;

@arr = split('l', $str);
@arr2 = "Hello World";

# print "@arr \n";

foreach(@arr2) {
    print"$_\n";
}

%hash = (
    'Gabriel' => 18,
    'João' => 16
);
 
#or

%hash2 = qw(
    Gabriel 18,
    João 16
);

# print %hash{'João'}, "\n";
# print %hash2{'João'}, "\n";

# Loops

# @arrLoop = (1..4);
# foreach(@arrLoop) {
#     print"$_\n";
# }

# for(my $count=0; $count<4; $count++) {
#     print"$count\n";
# }

# for(1..4) {
#     print"$_\n";
# }

# While game loop
#===================================================
# $guru = 0;
# $luckynum = 7;
# print "Guess a Number Between 1 and 10: ";
# $guru = <STDIN>;
# while ($guru != $luckynum) {
#     print "Guess a Number Between 1 and 10: ";
#     $guru = <STDIN>;
# } 
# print "You guessed the lucky number $luckynum\n";
#===================================================

# Regular expressions
print "\n";
$edu = "ven\@ifc.edu";
$gma = "ven\@gmail.com";

print "$edu\n";
print "$gma\n";
print "\n";

if($gma=~m/.*(\@ifc.edu).*/){
    print "Apto a ser um autor!\n";
} else {
    print "Não está apto a ser um autor!\n";
}

