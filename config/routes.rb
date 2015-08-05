Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  root 'restaurants#index'
  resources :restaurants
  resources :reservations
end  
