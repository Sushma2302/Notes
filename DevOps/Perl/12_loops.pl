#! /usr/bin/perl
#https://www.youtube.com/watch?v=4nZL97ptqIE&list=PLWPirh4EWFpE0UEJPQ2PUeXUfvJDhPqSD&index=18
use strict;
use warnings;

my @errors = ("401 - UNAUTHORIZED","400 - BAD_REQUEST","403 - FORBIDDEN","404 - NOT_FOUND","500 - INTERNAL_SERVER_ERROR");


#while

my $size_of_array = scalar @errors;

my $loop = 0;
my $count = 1;

print "Displaying the array values using while loop\n";

while ($loop < $size_of_array)
{

print $count," element of the array is : " , $errors[$loop],"\n";
$count = $count + 1;
$loop = $loop + 1;
 } 
 
print "\nSize of array is ",$count-1;
 
 #do-while
print "\n\nDisplaying the array values using do-while loop\n"; 

$loop = 0;
$count = 1;
do
{

print $count," element of the array is : " , $errors[$loop],"\n";
$count = $count + 1;
$loop = $loop + 1;

}while($loop < $size_of_array);

print "\nSize of array is ",$count-1;

# for loop
print "\n\nDisplaying the array values using for loop\n"; 

$loop = 0;
$count = 1;


for($loop = 0;$loop < $size_of_array; $loop++)
{

print $count," element of the array is : " , $errors[$loop],"\n";
$count++;

}


#another way of for loop 
$count = 1;
print "\n Another way of for loop\n";
for(0..$#errors)
{

print $count," element of the array is : " , $errors[$_],"\n";
$count++;

}

print "\nSize of array is ",$count-1;

#foreach
#here $_ will be the element of the array
foreach(@errors)
{
print " element of the array using foreach is : " , $_,"\n";
}


#foreach
# here $_ will be the index(number) of the aray
foreach(0..$#errors)
{
print $_," element of the array using foreach is : " , $errors[$_],"\n";
}


#until
print "\n\nDisplaying the array values using until loop\n"; 

$loop = 0;
$count = 1;


until ($loop >= $size_of_array)
{

print $count," element of the array is : " , $errors[$loop],"\n";
$count = $count + 1;
$loop = $loop + 1;
 } 

print "\nSize of array is ",$count-1;

#while and matching elements
$loop = 0;
$count = 0;
while ($loop < $size_of_array)
{

if ($errors[$loop] =~ /_/)
{
$count = $count + 1;
}
$loop = $loop + 1;
 } 
 
print "\n\nCount of the worlds which contains the symbol '_' is $count";