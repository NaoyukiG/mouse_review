Rails.application.routes.draw do
  devise_for :users
  root to: 'mouses#index'
  resources :mouses, only: [:index, :show]

  namespace :admin do
    resources :mouse, only: [:new, :create, :edit, :update, :destroy]
  end
end
