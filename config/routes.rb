# frozen_string_literal: true

Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      resources :dashboards
      resources :reviews
      resources :book_reviews
      resources :interactions_reviews

      namespace :public do
        resources :customers
      end
      end
    end
  end
