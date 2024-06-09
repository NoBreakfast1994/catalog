# frozen_string_literal: true

Rails.application.routes.draw do
  resources :businesses

  devise_for :users

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'businesses#index'
end
