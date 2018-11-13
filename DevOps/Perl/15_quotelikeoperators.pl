#! /usr/bin/perl

use strict;
use warnings;

my $str1 = q{perl};
my $str2 = qq[pythan];
my @array = qw[perl pythan sql java];
my $unixcommand = qx!hostname!;
my $unixcommand2 = qx[ls];
my $unixcommand3 = qx{uptime};

print "Srt1 = $str1\nstr2 = $str2\nArray = @array\nUnixcommand = $unixcommand\nUnixcommand2 = $unixcommand2\nUnixcommand3 = $unixcommand3\n";