Rails.application.routes.draw do
  resources :vet_users
  resources :clients
  resources :rdvms
  resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
