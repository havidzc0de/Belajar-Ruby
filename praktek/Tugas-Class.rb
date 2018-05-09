#!/bin/ruby

class Hewan
	#constructor method
	def initialize(kaki,alatNafas)

			@kaki,@alatNafas = kaki,alatNafas	
	end
  #accessor method
	def getKaki
			@kaki
	end

	def getAlatNafas
			@alatNafas
	end
	#setter method
	def setKaki=(value)
	 		@kaki=value
	end

	def setAlatNafas=(value)
			@alatNafas=value
	end
	
end


class Kucing < Hewan
end

class Ayam < Hewan
end

class Ikan < Hewan
end

kucing = Kucing.new(2,"Insang")
kucing.setKaki = 4
kucing.setAlatNafas = "Paru-Paru"
x = kucing.getKaki()
y = kucing.getAlatNafas()


puts "Kucing Memiliki #{x} Kaki Dan Bernafas Menggunakan #{y}"
puts

ayam = Ayam.new(3,"Insang")
ayam.setKaki = 2
ayam.setAlatNafas = "Paru-Paru"
x = ayam.getKaki()
y = ayam.getAlatNafas()
puts "Ayam Memiliki #{x} Kaki Dan Bernafas Menggunakan #{y}"
puts

ikan = Ikan.new(3,"Paru-Paru")
ikan.setKaki = 0
ikan.setAlatNafas = "Insang"
x = ikan.getKaki()
y = ikan.getAlatNafas()

puts "Ikan Memiliki #{x} Kaki Dan Bernafas Menggunakan #{y}"
puts 
