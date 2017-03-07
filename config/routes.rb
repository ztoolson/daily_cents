Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'static_pages#home'

  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'

  authenticate :user do
    resources :institutions, only: [:index]
    resource :connect_widget_url, only: [:show]
    resources :accounts, only: [:index]
  end
end
