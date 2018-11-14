#! /usr/bin/perl

use strict;
use warnings;

#sending parametes(multple) to function
# this example will get the value form keyboard and displays the words which contain that world

my @array = ("google.com 101", "yahoo.com 102", "wiki.org 103", "vote.gov 104");


sub grepfun
{
#first way to catch the parameters
# my $local1 = shift;
# my $local2 = shift;

#second way to catch the parameters
# my $local1 = $_[0];
# my $local2 = $_[1];

#third way to catch the parameters
my ($local1, $local2) = @_;
# print "\n $local";
chomp($local1);
chomp($local2);
foreach(@array)
 {
# print "$_\n";
if ($_ =~ /$local1.*$local2/)
 {
print "$_\n";
 }
 }
}


print "Enter a world \n";
my $choice1 = <STDIN>;
print "Enter another world to match the pattren\n";
my $choice2= <STDIN>;

grepfun($choice1,$choice2);