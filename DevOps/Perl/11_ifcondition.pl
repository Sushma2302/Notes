#! /usr/bin/perl

use strict;
use warnings;

my @array = ("JAVA", "SQL","GIT","JENKINS","ANSIBLE","PERL");

#if

if($array[-1] eq "PERL")
{
print "if .. true\n";
}

if($array[-1] eq "perl")
{
print "if .. true\n";
}
else
{
print "if..else..ture\n";
}

#ternury operator

print "Enter a ID to check the length";
my $id = <STDIN>;

(length($id) <= 3) ? print "SIze of ID is lessthen or equalto 3" : print "Size of ID is graterthen 3";