Rails.application.routes.draw do
  devise_for :users
  # resources :vet_users
  resources :clients
  resources :rdvms
  resources :pets


  



  end
