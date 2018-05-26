Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

namespace :v1 do
	post 'user/login' => 'user_token#create'
	
	#User Route
	get 'user/index', to: 'users#index'
	post 'user/signup', to: 'users#create'
	get 'user/', to: 'users#show'
	put 'user/edit/', to: 'users#update'
	delete 'user/delete/', to: 'users#delete'

	#Film Route

	get 'film/index', to: 'films#index'
	post 'film/add', to: 'films#add'

end


end


# {
# 	"auth":{
# 		"email": "qwerty@gmail.com",
# 		"password": "123456"
# 	}
# }
