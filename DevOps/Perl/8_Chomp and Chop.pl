 #! /usr/bin/perl
 
 #chomp will remove the new line exists at the end of the line
 #chop function will remove the last charactor, what even it is, that might be a new line or any other charactor
 print "Enter a name";
 $scalar = <STDIN>;  # to read the input form the keyboard
 @array = ("JAVA_\n", "SQL_\n","GIT_\n","JENKINS_\n","ANSIBLE_\n","PERL_");
 %hashes = (SQL => "4-\n", Git => "2-\n" , Ansible => "3-\n", Jenkins => "2-");
 
 print "Scalar value before applying functions", $scalar;
 chomp($scalar);
 print "Scalar value after chomping ", $scalar;
 chop($scalar);
 print "Scalar value after choping ", $scalar;
 
 
 print "Array values before applying functions", @array;
 chomp(@array);
 print "Array values after chomping ", @array;
  chop(@array);
 print "Array values after choping ", @array;
 
 
 print "Hashes values before applying functions", @hashes;
 chomp(%hashes);
 print "Hashes values after chomping ", @hashes; 
 chop(%hashes);
 print "Hashes values after choping ", @hashes; 
 
 