# $@	The location of latest error
# $_	The string last read by gets
# $.	The line number last read by interpreter
# $&	The string last matched by regexp
# $~	The last regexp match, as an array of subexpressions
# $n	The nth subexpression in the last match (same as $~[n])
# $=	The case-insensitivity flag
# $/	The input record separator
# $\	The output record separator
# $0	The name of the ruby script file currently executing
# $*	The command line arguments used to invoke the script
# $$	The Ruby interpreter's process ID
# $?	The exit status of last executed child process

for i in 1..5
print "Masukkan Kata : " 
kata = gets.chomp
end

puts kata
puts "Kata terakhir yg diinputkan #{$_}"
puts "Jumlah input #{$.}"
puts "Proses ID #{$$}"
