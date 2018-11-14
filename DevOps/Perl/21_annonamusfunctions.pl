#! /usr/bin/perl

use strict;
use warnings;

my $name = qq|Srinivas|;
my @skills = qq! sql perl git ansible jenkins! ;#("sql", "perl", "git", "ansible","jenkins");
my %details = ("name" => "srinivas", "qualification" => "mca", "experience" => "5");

#reference to any variable will store teh physical address of that variavle we can create a reference to any type of variable by adding \ at the begining as follows

my $nameref = \$name;
my $skillsref = \@skills;
my $detailsref = \%details;

sub display
{
	my($string, $array, $hash) = @_;
	print "Reference $string contains $$string\n";
	print "Reference $array contains @$array\n";
	print "Reference $hash contains ",%$hash,"\n"; 	
}

display($nameref,$skillsref,$detailsref); # or display(\$name,\@skills,\%details);

