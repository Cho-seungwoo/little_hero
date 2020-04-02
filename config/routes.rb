Rails.application.routes.draw do
 

  
  root 'products#index'

  get '/ranks/grads'
  get '/ranks/index' 
  get '/ranks/sales'
  get '/ranks/votes'

  get '/categories/new_first' 
  post '/categories/create_first' 
  get '/categories/new_second' 
  post '/categories/create_second'
  get '/categories/new_third'
  post '/categories/create_third'
  
  resources :categories

  resources :products do
    resources :reviews 
  end
     
  devise_for :users
  devise_for :kid_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
