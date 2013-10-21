Hpvideos::Application.routes.draw do

	devise_for :users
	root to: "attachments#index"
	resources :users, :only => [:index, :update]
	resources :categories, :only => [:show]
	resources :attachments

end
