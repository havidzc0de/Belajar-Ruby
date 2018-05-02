#!/bin/ruby

hewan = ["kodok","katak","sapi"]


def polindrome(hewan)
	(0..hewan.length-1).each do |i|
		if hewan[i] === hewan[i].reverse then
			puts "#{hewan[i]} adalah Polindrome"
		elsif hewan[i] === hewan[i]
			puts "#{hewan[i]} Bukan Polindrome"
		end
	end	

end

polindrome(hewan)



