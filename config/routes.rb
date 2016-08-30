Rails.application.routes.draw do
  devise_for :users

  resources :conversations

  root to: 'conversations#index'
end
