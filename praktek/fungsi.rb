#fungsi dan parmeter


def salam(nama,umur)

 puts "Selamat Siang #{nama}"
 puts "Umur anda #{umur} "
end

print "Masukkan nama: "
nama = gets.chomp
print "Masukkan Umur: "
umur = gets.chomp

salam(nama,umur)
