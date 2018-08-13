Rails.application.routes.draw do
  resources :users do
    resources :messages, only: [:new, :create] #
  devise_for :users
  root to: 'pages#home'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
