# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/privacy', to: 'static_pages#privacy'
  get '/aktualny_czas', to: 'static_pages#current_time'
end
