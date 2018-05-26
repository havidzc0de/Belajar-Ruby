#!/bin/ruby

hewan = ["kodok","katak","sapi"]


class Polindrome

	def initialize(hewan)
		@hewan = hewan
	end

	def cek()
		(0...@hewan.length).each do |i|
			if @hewan[i] === @hewan[i].reverse then
				puts "#{@hewan[i]} adalah Polindrome"
			elsif @hewan[i] === @hewan[i]
				puts "#{@hewan[i]} Bukan Polindrome"
			end
		end	
	end
end


objek_polindrome = Polindrome.new(hewan)
objek_polindrome.cek()








