#! /usr/bin/perl

use strict;
use warnings;

# simply calling a function with out any orguments and return values
my $name = qq[Srinivas\n];

sub printfunction
{
print $name;
}

# calling function
printfunction() ;# &printfunction() also work in the same way

#sending parameter(one) to function
# this example will get the value form keyboard and displays the words which contain that world

my @array = ("google.com 101", "yahoo.com 102", "wiki.org 103", "vote.gov 104");


sub grepfun
{
my $local = shift;

# print "\n $local";
chomp($local);
foreach(@array)
 {
# print "$_\n";
if ($_ =~ /$local/)
 {
print "$_\n";
 }
 }
}


print "Enter a world \n";
my $choice = <STDIN>;

grepfun($choice);



