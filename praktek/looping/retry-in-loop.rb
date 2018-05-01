#!/bin/ruby

#begin
#for x in 0..5
# raise if x > 2
# puts "Value of local variable is #{x}"
# #raise if x > 2
#end
#rescue
# retry
#end

begin
animals = %w(dog cat horse goat snake frog)
count = 0

for i in animals
 puts "Nama hewan : #{i}"
 break if count == 10
 count += 1
 raise if i == "horse"
end

rescue 
 retry
end
