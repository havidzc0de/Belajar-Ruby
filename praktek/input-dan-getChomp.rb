# gets untuk hasil input + baris baru
# gets.chomp untuk hasil input baris sama

print "Masukkan Umur : "
umur = gets.chomp
print "Kakinya berapa: "
kaki = gets.chomp

puts "Jadi umur anda #{umur} Kakinya ada #{kaki} ditambahkan jadinya #{umur.to_i+kaki.to_i}"
puts "Kalau ditambahkan sebagai strings #{umur+kaki}"

