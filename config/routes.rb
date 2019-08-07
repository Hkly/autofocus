Rails.application.routes.draw do
  devise_for :users
  root to: 'dashboards#show'

  resources :items do
    member do
      post 'focus' => 'focuses#create'
      delete 'unfocus' => 'focuses#destroy'
    end
  end
end
