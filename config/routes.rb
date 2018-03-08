Rails.application.routes.draw do
  get 'main/index'

  resources :portfolios do
    resources :cryptos
  end

  root 'main#index'
end
