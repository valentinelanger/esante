Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shifts, only: [:index, :show, :edit, :update, :new, :create]
  resources :workers

  root to: 'workers#index'
end
