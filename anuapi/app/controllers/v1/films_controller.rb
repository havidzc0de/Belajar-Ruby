class V1::FilmsController < ApplicationController

 before_action :authenticate_user, only: [ :create, :show, :update, :delete, :index ]
 before_action :set_film, only: [:tampil, :update, :delete]

	# GET /lukisan
	def index
		@films = Film.all
		render json: { film: @films }
	end

	def show
		render json: @film
	end

	def create
		@films = Film.new(parameter)

		if @films.save
			render json: @films, status: :created
		else
			render json: @films.errors, status: :unprocessable_entity
		end
	end

	def delete
		@films = Film.destroy
	end




	private
		def parameter
			params.require(:film).permit(:title,:genre,:rating,:description)
		end

		 def set_user
 			@user = current_user #kalau model admin berarti current_admin, ini dari knock
 		end
	
end