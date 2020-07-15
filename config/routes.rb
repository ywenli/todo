Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root 'top#index'

  resources :list, only: %i(new create edit updte destroy) do
    resources :card, only: %i(new create show edit update destroy)
  end

  resources :users, only: :show
end
