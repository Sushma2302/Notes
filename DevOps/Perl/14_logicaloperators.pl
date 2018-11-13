#! /usr/bin/perl

use strict;
use warnings;

my @languages = ("perl", "pythan", "java","sql");

if ($languages[0] eq "perl" and (scalar @languages == 4 ))
{
print "Condition is TRUE\n"
}



if ($languages[1] eq "perl" or (scalar @languages == 4 ))
{
print "Atleast one of the condition is TRUE\n"
}


if (not($languages[1] eq "perl" and (scalar @languages == 4 )))
{
print "Conditional not is TRUE\n"
}