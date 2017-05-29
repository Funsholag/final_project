Rails.application.routes.draw do
  devise_for :users
  get '/' => "home#index"
  root :to => "home#index"
  get "/property_finder" => "property_finder#index"
  post "/property_finder"=> "property_finder#create"
  match '/search' => 'search#search', via: [ :get, :post ], as: :search
  root to: 'search#search'
  # post "/property_finder/search" => "property_finder#search"
  # post "/property_finder" => "property_finder#search, as: :search"
  # resources :property_finder
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
