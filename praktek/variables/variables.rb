#!/bin/ruby

# $ adalah global variable
# @ adalah instance variable
# [a-z= or _ adalah local variable ]
# [A-Z] adalah constanta 
# @@ adalah class variable

x = 10
print "variable x adalah : " 
puts defined? x

$x = 10
print "varibale $x adalah : " 
puts defined? $x

@x = 10
print "variable @x adalah : " 
puts defined? @x


