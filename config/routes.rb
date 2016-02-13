Rails.application.routes.draw do

  resources :news
  resources :public, only: :index
  root 'public#index'
end
