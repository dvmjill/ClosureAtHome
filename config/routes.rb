Rails.application.routes.draw do
  # resources :vet_users
  resources :clients
  resources :rdvms
  resources :pets


  root 'vet_users#index'

  get     'vet_users/new' =>          'vet_users#new', as: 'new_vet_user'

  get     'vet_users' =>              'vet_users#index', as: 'vet_users'

  post    'vet_users' =>              'vet_users#create'

  get     'vet_users/:id' =>          'vet_users#show', as: 'vet_user'

  delete  'vet_users/:id' =>          'vet_users#destroy'

  patch   'vet_users/:id' =>          'vet_users#update'

  get     'vet_users/:id/edit' =>     'vet_users#edit', as: 'edit_vet_user'

  # get     'login' =>               'vet_users#new', as: 'vet_login'
  #
  # get     'vet_users/new' =>          'vet_users#new', as: 'new_vet'
  #
  # get     'vets' =>              'vet_users#index', as: 'vets'
  #
  # post    'vet_users' =>              'vet_users#create'
  #
  # get     'vet_users/:id' =>          'vet_users#show', as: 'vet'
  #
  # delete  'vet_users/:id' =>          'vet_users#destroy'
  #
  # patch   'vet_users/:id' =>          'vet_users#update'
  #
  # get     'vet_users/:id/edit' =>     'vet_users#edit', as: 'edit_vet'




  end
