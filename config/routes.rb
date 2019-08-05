Rails.application.routes.draw do
  devise_for :users
  root to: 'dashboards#show'

  resources :items
end
