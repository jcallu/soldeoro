SolDeOro::Application.routes.draw do
  resources :sessions, only: [ :create, :destroy, :new ]
  get '/:action', controller: :pages
  root to: 'pages#index'
  resources :contacts, only: [:new, :create]
end
