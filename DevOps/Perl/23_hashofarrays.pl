# # !/usr/bin/perl

use strict;
use warnings;

# #data strectures having a hash where values of each key are having array refferences
# declaration %hashname = (key => [..]);
# or
# $hashname = {key => [..]}

my %hash = (nicknames => ["Srinivas", "Sriniu", "Ponnaganti"], languages => ["English","Hindi","Japanies"]);
#using refferences, declaration of hashes using refferences should be enclosed in {}
my $hashref = {nicknames => ["Srinivas", "Sriniu", "Ponnaganti"], languages => ["English","Hindi","Japanies"]};

foreach(keys %hash)
{
print "$_ => @{$hash{$_}}\n"; #->[0];
# print $hash{$_}->[0];
}

# to print a perticular value in an array ; ex: second value in the key "nicknames"

print $hash{nicknames}->[0],"\n";
print $hash{nicknames}->[1],"\n";
print $hash{"nicknames"}->[2],"\n";

#print the hashes of arrays with refferences

foreach(keys %{$hashref})
{
print "$_ => @{$hashref->{$_}}\n"; #->[0];
# print $hash{$_}->[0];
}


print $hashref->{nicknames}->[0],"\n";
print $hashref->{nicknames}->[1],"\n";
print $hashref->{"nicknames"}->[2],"\n";