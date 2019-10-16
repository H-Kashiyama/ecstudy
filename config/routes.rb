Rails.application.routes.draw do
  root to: 'classifyings#index'
  resources :classifyings
  resources :esentences
end
