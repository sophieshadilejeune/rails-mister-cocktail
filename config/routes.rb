Rails.application.routes.draw do
  # get 'ingredients/show'
  # get 'ingredients/new'
  # get 'ingredients/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
      resources :doses, only: [:show, :new, :create]
    end
    resources :doses, only: [:destroy]
  end

