#! /usr/bin/perl

#use strict;
#use warnings;

$doc = <<DOC;
This is the hear document, here we can describe the program or can write any information 
DOC

print $doc;

# this is a single line comment perl

=comment
this is a multiple comment 
this will start with the = symbole followed by any name (must not be any spaces before =)
and will end with =cut (it should be the keyword "cut")
=cut

<<COMMENT;

This is also treated as a block of comment sterating from <<anyworld to sameworld
COMMENT

print $doc, "\n";
