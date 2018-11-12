#! /usr/bin/perl

#split function is used to split an string in to array ising a delimeter
$stringtosplit  = "SQL|PL/SQL|GIT|JENKINS|ANSIBLE";
@array = split("|",$stringtosplit);

print "Array is : @array\n";
