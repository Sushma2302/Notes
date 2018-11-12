#! usr/bin/perl
# 
##declaring a array
@names = ("JAVA", "SQL","GIT","JENKINS","ANSIBLE","PERL");
@exp = ("4", "4","4","3","2","1");

@sort = sort(@names);
print "Sortd array is: @sort\n";

print "After merging the two arrays (@names,@exp)\n"
