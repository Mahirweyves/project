require 'sidekiq/web'

Rails.application.routes.draw do
  
  
  resources :items
  resources :videos
  #get "/messages" => "messages#index", as: :messages
  #get "/conversations/index" => "conversations#index", as: :conversations

  post "/trade/message" => "trades#email_trade", as: :email_trade
  resources :trades

  resources :conversations do
    resources :messages
 end
  get '/search' => 'trades#search', :as => 'search_trade' 
  devise_for :users
  root to: 'trades#index'
  
   devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end 
  resources :categories
  resources :things
end

