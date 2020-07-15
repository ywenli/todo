Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'top#index'
  resources :list, only: %i(new create edit updte destroy) do
    resources :card, only: %i(new create show edit update destroy)
  end
end
