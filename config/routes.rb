Rails.application.routes.draw do
  resources :entries
  resources :foots
  resources :logins
  root to: 'foots#index'

end
