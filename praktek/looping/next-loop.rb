#!/bin/ruby

for i in 0..10 do
 if i<5 then
  next
 end
 puts "Value of local variable is #{i}"
end
