IJURY::Application.routes.draw do
  root to: 'pages#main'
  resources :user
end
