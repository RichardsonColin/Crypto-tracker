Rails.application.routes.draw do
  get 'main/index'

  resources :cryptos

  root 'main#index'
end
