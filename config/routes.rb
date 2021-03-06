Rails.application.routes.draw do
  root 'static#index'

  resources :locations, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  resources :locations, only: [:show] do
    resources :listings, only: [:index, :show]
  end


  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, only: [:show]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
