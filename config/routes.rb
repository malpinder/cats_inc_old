CatsInc::Application.routes.draw do

  resources :purchases, only: [:new, :create, :show]

  resources :items, only: [:index]

  root 'items#index'
end
