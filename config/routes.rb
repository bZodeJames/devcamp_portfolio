Rails.application.routes.draw do
  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

   
  get 'about', to: 'pages#About'
  get 'contact', to: 'pages#Contact'
  get 'utahjazz', to: 'pages#utahjazz'

  resources :blogs do 
  	member do
  		get :toggle_status
  	end	
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#Home'

end