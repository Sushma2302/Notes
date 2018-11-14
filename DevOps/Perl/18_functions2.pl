#! /usr/bin/perl

use strict;
use warnings;

#passing an array to function and return an array from the function
#in this example we are going to append "com" if we have com in theat world, "org" if we have org in that world and "gov" if we have gov in that world
my @array = ("google.com 101", "yahoo.com 102", "wiki.org 103", "vote.gov 104");

sub returnarray
{
my @args = @_;

foreach (@args)
{
if($_ =~ /com/)
{
$_ .= ".com";
}elsif ($_ =~ /org/)
{
$_.= ".org";
}
else
{
$_.= ".gov";
}
}
return @args;
}

print "Before calling function array is @array\n";

@array = returnarray(@array);

print "After calling function array is @array\n";