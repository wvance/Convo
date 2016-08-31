Rails.application.routes.draw do
  devise_for :users

  resources :conversations do
    resource :conversation_users
    resources :messages
  end

  root to: 'conversations#index'
end
