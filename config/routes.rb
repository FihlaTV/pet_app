Rails.application.routes.draw do
  devise_for :users
   namespace :api do 
    resources :business_units
    resources :cities
    resources :users, only: [:show, :create, :update, :destroy]
     resources :sessions, :only => [:create, :destroy]
  end
end
