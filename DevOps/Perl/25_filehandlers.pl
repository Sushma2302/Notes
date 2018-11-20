# !/usr/bin/perl

use strict;
use warnings;

open(fhd,"+<testCopy.pl") or die "Cannot open the file or $!";

open(fhd1,"+>testCopy1.pl") or die "Cannot open the file or $!"; # it will delete the exesting file with the same name and create new one
print fhd1  "Different Errors\n";

my @filecontent = <fhd>;

foreach (@filecontent)
{
print "$_";
}
# print "@filecontent\n";

print fhd  "Different Errors\n";
print "\nAfter writting the content to file \n";
# close(fhd);
# open(fhd,"+<testCopy.pl") or die "Cannot open the file or $!";
 while(<fhd>)
 {
 print $_ ;
 }

close(fhd);