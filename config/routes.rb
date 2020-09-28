Rails.application.routes.draw do
  root  'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # For Pages
  get "/category/:access_keyword" => 'pages#show', as: 'show_category'
  
  # For Interests
  post "/category/:access_keyword/create/:symbol" => 'interests#create', as: 'create_interest'

    # For Purchases
  post "/category/:access_keyword/create/:symbol" => 'purchases#create', as: 'create_purchase'
end
