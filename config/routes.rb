Rails.application.routes.draw do
  resources :rooms do
    resources :messages, only: [:new, :create]
  end
end
