Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  
  get 'about', to: 'pages#About'
  get 'contact', to: 'pages#Contact'

  resources :blogs do 
  	member do
  		get :toggle_status
  	end	
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#Home'

end