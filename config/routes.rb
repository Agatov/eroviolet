Eromassage::Application.routes.draw do


  root to: 'application#index'

  resources :orders, only: :create

  resource :mailers, only: :index do
    post :thirty_minutes, on: :collection
  end

  resources :girls, only: [:index, :show] do
    resources :comments, only: :create, controller: 'girls/comments'
  end

  namespace :admin do
    resources :girls do
      resources :photos, only: [:create, :destroy]
      resources :comments, only: [:index, :show, :edit, :update, :destroy], controller: 'girls/comments'
    end

    resources :rooms do
      resources :photos, only: [:create, :destroy]
    end

    resources :programs
    resources :extras
  end
end
