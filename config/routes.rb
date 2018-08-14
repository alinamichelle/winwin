Rails.application.routes.draw do

  resources :users do
    resources :messages, only: [ :new, :create]
    resources :saves, only: [ :create]
    resources :meetings
    resources :feedbacks, only: [ :new, :create]
  end

  devise_for :users, controllers: { registrations: "registrations" }, :path => 'accounts'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
