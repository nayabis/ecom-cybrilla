# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :items, only: [:index]
      resources :carts, only: [:show]
    end
  end
end
