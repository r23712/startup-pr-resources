StartupPrResources::Application.routes.draw do
  resources :posts

  root :to => 'posts#index'

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to:redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

end
