# !/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;
my @array = qw|google.com yahoo.com ping.com jda.org cssi.org dbs.org perl sql jenkins ansible|;
my %hashofarray;
# my @array = ("google.com ","yahoo.com ","ping.com ","jda.org ","cssi.org ","dbs.org ","perl ","sql ","jenkins ","ansible");

print @array."\n";
print "@array\n";

foreach(@array)
{
if($_ =~ /com/)
{
addarra("com",$_);
}
elsif($_ =~ /org/)
{
addarra("org",$_);
}
else
{
addarra("skill",$_);
}
}

sub addarra
{
my ($array, $value) = @_;
if(exists($hashofarray{$array}))
{
push(@{$hashofarray{$array}},$value);
}
else
{
$hashofarray{$array}[0] = $value;
}

}
print Dumper(\%hashofarray);
