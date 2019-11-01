Rails.application.routes.draw do
  root to: 'classifyings#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :classifyings
  resources :esentences
  resources :account_activations, only: [:edit]
end
