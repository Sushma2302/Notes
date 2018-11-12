#! usr/bin/perl

##declaring a array
@names = ("JAVA", "SQL","GIT","JENKINS","ANSIBLE","PERL");

##accessing the elemets of array

print "@names\n";
print "\nfirst element is : $names[0]";
print "\nlast element is : $names[-1]";
print "\nfirst three elements are : @names[0..2]";
print "\nlast but one element is : $names[-2]";
print "\nelements from 3 to last index : @names[2..$#names]";
print "\nlastindex is $#names\n";


print "Size of array in first way :", scalar @names, "\n";
print "Size of the array in second way:", $#names +1, "\n";

#to add the element at the end of the array

push(@names,"NEXUS");
print "After adding last element is $names[-1]\n";

#to add the element at the biggining of the array

unshift(@names,"PL/SQL");
print "after ading first element is $names[0]\n";

#to ermove teh last element in the array

$popped = pop(@names);
print "popped element is $popped\n", "and the array is @names\n";

#to detete the last element in the array

$shifted = shift(@names);
print "deleted element is $shifted\nand the array is @names\n";

#splice function is used to replace/remove teh elementes of an array at any podition(bigginins/middle/emding)
 
splice(@names,2,3,Suppor,Developer,DevOps);
print "After adding elemetns at the middle of the array : @names\n";
   
splice(@names,2,3);
print "After adding elemetns at the middle of the array : @names\n";
