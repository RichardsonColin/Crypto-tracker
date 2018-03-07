Rails.application.routes.draw do
  get 'main/index'

  resources :portfolios
  resources :cryptos

  root 'main#index'
end
