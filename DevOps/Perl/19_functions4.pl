#! /usr/bin/perl

use strict;
use warnings;

#here we are trying to pass hashes to array and return hash

my %hash = ("google.com" =>101, "yahoo.com" =>102, "wiki.org" =>103, "vote.gov" =>104);

sub printhash
{
my %lochash = @_;

foreach(keys %lochash)
{
if ($_ =~ /com/)
{
$lochash{$_}--;
}elsif($_ =~ /org/)
{
$lochash{$_}++;
}
}

return %lochash;
}

print "Hashes before function call is ",%hash,"\n";

%hash = printhash(%hash);

print "Hashes after function call is ",%hash,"\n";