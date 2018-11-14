#! /usr/bin/perl

use strict;
use warnings;

my $name = qq|Srinivas|;
my @skills = ("sql", "perl", "git", "ansible","jenkins");
my %details = ("name" => "srinivas", "qualification" => "mca", "experience" => "5");

#reference to any variable will store teh physical address of that variavle we can create a reference to any type of variable by adding \ at the begining as follows

my $nameref = \$name;
my $skillsref = \@skills;
my $detailsref = \%details;

# we can print the reference value and the original which was there in the reference by using $$

print "Reference $nameref contains $$nameref\n";
print "Reference $skillsref contains @$skillsref\n";
print "Reference $detailsref contains ",%$detailsref,"\n";

# to print perticular value in the array and hash

print "@$skillsref[2]";
print %$detailsref{qualification};