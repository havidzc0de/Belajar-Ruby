#!/bin/ruby
require "uri"
require "twitter-text"

print "Masukkan Username Anda : "
nama = gets.chomp

system(" wget -O result.txt https://instagram.com/#{nama}")

result = File.read('result.txt') 
url = URI.extract(result)
system("echo #{url} > result.temp")

puts File.readlines('result.temp')


