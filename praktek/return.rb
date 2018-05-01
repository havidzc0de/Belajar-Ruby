#return


def jumlah(num1,num2)
 num = num1.to_i+num2.to_i
 print "Sedang menjumlahkan"
 for i in 0..10
  sleep(1)
  print "."
 end
 return num 
end

print "Masukkan angka 1 : "
num1 = gets.chomp
print "Masukkan angka 2 : "
num2 = gets.chomp

num =  jumlah(num1,num2)

puts 
puts "Hasilnya #{num}"

