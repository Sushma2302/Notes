# !/usr/bin/perl

use strict;
use warnings;

=comment
declaration:
@arrayname = ([...], [...], [...]); to access @arrayname[0]->[1];
  or
$arrayname = [  [...], [...], [...]  ]; to access $arrayname[0]->[1];

=cut

my @array = (["sql", "perl", "git", "ansible","jenkins"], ["Srinivas","Srinu"],[100..110]);
my $arrayref = [["sql", "perl", "git", "ansible","jenkins"], ["Srinivas","Srinu"],[100..110]];


print "@{$array[0]}\n";
print "@{$array[1]}\n";
print "@{$array[2]}\n";



print "@{$array[0]}[0]\n";
print "@{$array[1]}[1]\n";
print "@{$array[2]}[3]\n";

print "Using array reffernce\n";

print "@{$arrayref->[0]}\n";
print "@{$arrayref->[1]}\n";
print "@{$arrayref->[2]}\n";

print "@{$arrayref->[0]}[0]\n";
print "@{$arrayref->[1]}[1]\n";
print "@{$arrayref->[2]}[3]\n";