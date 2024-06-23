# frozen_string_literal: true

Rails.application.routes.draw do
  resource :business
  resources :categories
  resources :offers

  devise_for :users

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'businesses#show'
end
