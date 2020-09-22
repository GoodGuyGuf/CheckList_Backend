Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create, :destroy]
  resources :users, only: [:create, :update, :destroy] do
    resources :check_lists, only: [:index, :create, :update, :destroy] do
      resources :tasks, only: [:index, :create, :update, :destroy]
    end
  end
end
