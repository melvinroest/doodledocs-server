Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  get 'settings', to: 'settings#index'
  # put 'settings', to: 'settings#update'
  put 'settings/:id', to: 'settings#update'
end
