Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#show'
  get :pages, controller: :pages_controller, action: :show
  get 'session/new', as: :sign_in
  delete 'session', action: :destroy, controller: 'session', as: :sign_out
  get '/auth/github/callback', action: :create, controller: 'session'
end
