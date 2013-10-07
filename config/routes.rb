Hpvideos::Application.routes.draw do

	devise_for :users
	root to: "images#index"
	resources :users
	
	resources :images

end
