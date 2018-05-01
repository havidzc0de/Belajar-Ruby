#!/bin/ruby

def test
	yield 

	puts "Welcome #{$nama}, enjoy with Ruby!"
end

def ukuran
	yield 75
	yield 175
	
end

print "Masukkan Nama Anda : "
$nama = gets.chomp

test{$nama}
puts

ukuran{|i| puts "Ukuran Badan #{i}"}
