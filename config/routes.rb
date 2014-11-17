Rails.application.routes.draw do
  resources :sessions, only: [ :create, :destroy, :new ]
  resources :contacts, only: [:new, :create]
  get '/:action', controller: :pages
  root to: 'pages#index'
end
