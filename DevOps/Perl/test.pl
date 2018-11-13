my @errors = ("401 - UNAUTHORIZED - Error","400 - BAD_REQUEST - Error","403 - FORBIDDEN - Error","404 - NOT_FOUND - Error","500 - INTERNAL_SERVER_ERROR - Error");

my $size_of_array = scalar @errors;

my $loop = 0;
my $count = 1;

print "Displaying the array values using while loop\n";

while ($loop < $size_of_array)
{

# assing the splitted valus to variables 
my ($errorcode, $msg, $msg1) = split("-",$errors[$loop]);
print "Errorcode = $errorcode, msg is $msg and msg1 is $msg1\n";

# print "\n$errors[$loop]";
# inserting the splitted values into array
my (@description) = split("-",$errors[$loop]);
print "Errordescription is @description\n";

$count = $count + 1;
$loop = $loop + 1;
 } 
 