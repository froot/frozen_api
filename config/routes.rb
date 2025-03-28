Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show]
  resources :authors, only: [:index, :show] do
    resources :books, only: [:index]
  end
end
