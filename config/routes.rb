Rails.application.routes.draw do
  get 'main/index'

  resources :portfolios

  root 'main#index'
end
