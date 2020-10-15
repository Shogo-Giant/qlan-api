require 'devise_token_auth'

Rails.application.routes.draw do

  scope :api do
    mount_devise_token_auth_for 'Account', at: 'accounts', skip: [:registrations]

    devise_scope :account do
      post '/accounts/login', to: 'devise_token_auth/sessions#create'
      post '/accounts/sign_up', to: 'devise_token_auth/registrations#create'
      put '/accounts', to: 'devise_token_auth/registrations#update'
      delete '/accounts', to: 'devise_token_auth/registrations#destroy'
    end
  end
  get 'test', to: 'test#show'
end
