Rails.application.routes.draw do
  devise_for :users
  get 'main/index'

  resources :portfolios do
    resources :cryptos
  end

  root 'main#index'
end
