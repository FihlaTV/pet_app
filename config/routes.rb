Rails.application.routes.draw do
  devise_for :users
   namespace :api do 
    resources :business_units
    resources :cities
  end
end
