Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shifts
  resources :workers, only: [:index, :show, :edit, :update, :new, :create]

  root to: 'workers#index'
end
