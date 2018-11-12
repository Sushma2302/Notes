#! /usr/bin/perl
 
#Hashes

%nameexp = (SQL => 4, Git => 2 , Ansible => 3, Jenkins => 2);
#Here nameexp is hash and SQL is called key and 2 is values

#to display tne perticular key

print "First Key and value is",  $nameexp{"SQL"},"\n";

#to print all teh key values and assing them into a array
@keys = keys %nameexp; # insert all the keys into a array names @keys
@values = values %nameexp; # inserting all the values into a array names @values

print "Keys: @keys\n and values @values\n";

#to check whether a key is exists or not 
if (exists ($nameexp{java}))
{
print "Java exists in the hash\n";
}
else
{
print "Java does not exists in hash\n";
}

#to check whether a key is exists or not 
if (exists ($nameexp{SQL}))
{
print "SQL exists in the hash\n";
}
else
{
print "SQL does not exists in hash\n";
}

#to add new key set to the hash
$nameexp{"PERL"} = 1;
print "Newly added value is PERL: ", $nameexp{"PERL"},"\n";

