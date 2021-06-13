Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "newsfeeds#show"
  resources :posts, only: %i[show create edit update destroy]
end
