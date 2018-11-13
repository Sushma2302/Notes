#! /usr/bin/perl
#https://www.youtube.com/watch?v=4nZL97ptqIE&list=PLWPirh4EWFpE0UEJPQ2PUeXUfvJDhPqSD&index=18

use strict;
use warnings;
=comment

whileeach is generally used in hashes, which is explained in the below example

=cut

my %colourcode = {red =>1, blue=>2, green=>3, white =>4, orange=>5};

while(my ($key,$value) = each (%colourcode))
{
print $key , " => ", $value;
}
