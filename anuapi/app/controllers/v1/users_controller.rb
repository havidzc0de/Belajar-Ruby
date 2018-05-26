class V1::UsersController < ApplicationController 
 
 #sebelum akses method dia harus bawa token/authenticted
 before_action :authenticate_user, only: [ :show, :update, :delete, :index ]
 # except[ :index ]  buat pengecualian

 before_action :set_user, only: [ :show, :update ]

	def index
		@users = User.all
		render json: { users: @users }, status: :ok
	end
	

	def create
		@user = User.create(user_param)

		if @user.save
			render json: { result: true, user: @user }, status: :created
		else
			render json: { result: false, error: @user.errors }, status: :unprocessable_entity
		end
	end
	
	def show
		# @user = User.find(params[:id])
		render json: { user: { id: @user.id,username: @user.username,email: @user.email } }, status: :ok		
	end

	def update
		@user = User.find(params[:id])
		if @user.update(update_param)
			render json: { user: @user }
		else
			render json: { user: @user.errors }
		end
	end

	def delete
		# @user = User.find(params[:id]) karena pake current_user
		@user.destroy
		head 204
	end

	private

	def user_param
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
 	
 	def update_param
 		params.require(:user).permit(:username)
 	end
 	
 	def set_user
 		@user = current_user #kalau model admin berarti current_admin, ini dari knock
 	end
end

# {
# 	"user": {
# 		"username": "kanda",
# 		"email": "kanda@gmail.com",
# 		"password": "123456",
# 		"password_confirmation": "123456"
# 	}
# }