Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shifts, only: [:index, :edit, :update, :new, :create, :destroy]
  resources :workers, only: [:index, :edit, :update, :new, :create]

  root to: 'shifts#index'
end
