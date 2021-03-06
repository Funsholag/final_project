Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get '/' => "home#index"
  root :to => "home#index"
  get '/aboutus' => "about#index"
  get '/contactus' => "contact#index"
  get '/property_finder' => "property_finder#index"
  resources :property_finder
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
