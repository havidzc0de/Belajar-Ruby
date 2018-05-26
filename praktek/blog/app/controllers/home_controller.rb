class HomeController < ApplicationController 
	def index
		@langs = ['Ruby','Python','PHP','Javascript','Go'] 
	end

	def halo
		render 'halo'
	end

	def sapa
		render 'selamat'
	end
end