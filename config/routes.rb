# frozen_string_literal: true

Rails.application.routes.draw do
  resources :product, only: [:show, :index] do 
    # resources :review, only: [:show, :index]
    get "/reviews", controller: "review", action: "index"
    get "/review/:id", controller: "review", action: "show"
  end
  
end
