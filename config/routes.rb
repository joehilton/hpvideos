Hpvideos::Application.routes.draw do

	devise_for :users
	root to: "images#index"
	resources :users, :only => [:index, :update]
	resources :categories, :only => [:show]
	resources :images

end
