#! /usr/bin/perl
 
#MAP function will be usefull to eveluate a expression in each element of an array and return an aarray of hash
# syntax map{expression} @arrayname
# ex: array{1,2,3,4,5} to get the square roots we can use map function result {1,3,9,16,25}
 
 
#GREP function will evaluates a block of expression and returns an array of having elements which are eveluated as true
# syntax: grep{expression}@array
#ex: {1,2,3,4,5} to get the numbers > 3 , result {4,5}
 
@array = ("JAVA", "SQL","GIT","JENKINS","ANSIBLE","PERL");
# i would like to add _skill at the end of the each element in this array using map function
 
print "Before mapping @array\n";
@aarray = map {$_ . "_Skill"} @array;
print "After mapping @aarray\n";
 
#another usefull way is we can convert the array into hash by using map
 
%hash = map {$_  => 4} @array;
print "After converting into hash", %hash, "\n";
 
#we can alos remove the dupliates by using map using following logic
 @array = ("JAVA", "SQL","GIT","JENKINS","ANSIBLE","PERL","JAVA", "SQL"); # array with dupliates
%hash = map {$_  => 4} @array; # converting into hash
print "unique values are\n";
print keys %hash,"\n";

  
#grep example
  
# to pring only elements which are starting with the letter J
@result = grep{/^J/} @array;
print "Starting with J @result\n";
 
 
 $result = grep{/^J/} @array;
print "Count of words which starting with J $result\n";


@result = grep{!/^J/} @array;
print "Not starting with J @result\n";

$result = grep{!/^J/} @array;
print "Count of words which not starting with J  $result\n";
 
@result = grep{ /N/ } @array;
print "Contains N @result\n";

$result = grep{ /N/ } @array;
print "Count of words which contains N $result\n";
 
#combination of map and gerp
# i would like the convett the aray to hash and assing value as 4 for the elements which are sterted with J/

%hash = map {$_  => 4}  grep{/^J/} @array;
print %hash