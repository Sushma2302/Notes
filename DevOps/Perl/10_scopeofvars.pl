#! /usr/bin/perl

=comment
Scoper of variables

we have 3 types in scope
1. my
2. local
3. our

1. my
variables declared as my $var can be accessable through out the script including subroutine
and the vars declared inside the subroutine is accable with in the subroutine only
2. local
this variables can be accessable with in that block only.
3.our 
this can be accessable globally


Note: here local variables will be accable with nested functions but not the my variables
=cut

my $var =10;
local $val = 12;

sub myfun
{
my $var1 = 11;
local $val1 = 13;
print "Inside function , MY outside variable is $var\n";
print "Inside function , MY Inside variable os $var1\n";

print "Inside function , LOCAL outside variable is $val\n";
print "Inside function , LOCAL Inside variable os $val1\n";
}

print "Outside function, MY outside variable is $var\n";
print "Outside function, MY Inside variable os $var1\n";

print "Outside function , LOCAL outside variable is $val\n";
print "Outside function , LOCAL Inside variable os $val1\n";

myfun();