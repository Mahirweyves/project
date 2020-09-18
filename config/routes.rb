require 'sidekiq/web'

Rails.application.routes.draw do
  #get 'messages/index'
  #get 'conversations/index'
  resources :trades

  resources :conversations do
    resources :messages
  end
  devise_for :users
  root to: 'trades#index'
  
   devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
