Rails.application.routes.draw do
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
  root "homes#index"
  devise_for :users
  resources :users
  resources :rooms do
    resources :messages, only: [:new, :create]
  end
end
