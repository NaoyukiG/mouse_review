Rails.application.routes.draw do
  devise_for :users
  root to: 'mouses#index'
  resources :mouses, only: [:index]

  namespace :admin do
    resources :mouses, only: [:new, :create]
  end
end
