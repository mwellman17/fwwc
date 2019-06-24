Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :brackets, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :brackets, only: [:create]
    end
  end

end
