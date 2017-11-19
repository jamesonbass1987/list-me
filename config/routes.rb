Rails.application.routes.draw do
  root 'static#index'

  resources :locations, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  resources :locations, only: [:show] do
    resources :listings, only: [:index, :show]
  end

  resources :users, only: [:show, :edit, :update]
  
  devise_for :users
  get '/auth/facebook/callback' => 'sessions#create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
