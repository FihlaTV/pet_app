Rails.application.routes.draw do
   namespace :api do 
    resources :business_units
    resources :cities
  end
end
