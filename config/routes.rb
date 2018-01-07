Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :details do 
  	member do 
  		get 'layout3'
  		get 'layout1'
      get 'showprint' 		
  	end
  end
  root "details#index"

  devise_for :users, :controllers => { registrations: 'registrations' }
end
