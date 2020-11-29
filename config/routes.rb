Rails.application.routes.draw do
  resources :product, only: [:show, :index]
  #get 'product/index,'
  #get 'product/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
