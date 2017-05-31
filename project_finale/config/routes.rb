Rails.application.routes.draw do
  devise_for :users
  get '/' => "home#index"
  root :to => "home#index"
  get '/aboutus' => "about#index"
  get '/contactus' => "contact#index"
  get '/property_finder' => "property_finder#index"
  # post "/property_finder" => "property_finder#index"
  # post "/property_finder"=> "property_finder#create"
  # match '/property_finder' => 'property_finder#create'

  # post "/property_finder/search" => "property_finder#search"
  # post "/property_finder" => "property_finder#search, as: :search"
  resources :property_finder
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
