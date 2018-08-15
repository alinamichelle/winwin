Rails.application.routes.draw do

  get 'wishes/new'
  resources :users do
    resources :messages, only: [:index, :show, :new, :create]

    resources :saves, only: [ :create]
    resources :meetings
    resources :feedbacks, only: [ :index, :new, :create]
  end

  devise_for :users, controllers: { registrations: "registrations" }, :path => 'accounts'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
