Rails.application.routes.draw do
  devise_for :users
  # resources :vet_users
  resources :clients
  resources :rdvms
  resources :pets

 root 'pets#index'

#  Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:format)               devise/registrations#create
#                  clients GET    /clients(.:format)             clients#index
#                          POST   /clients(.:format)             clients#create
#               new_client GET    /clients/new(.:format)         clients#new
#              edit_client GET    /clients/:id/edit(.:format)    clients#edit
#                   client GET    /clients/:id(.:format)         clients#show
#                          PATCH  /clients/:id(.:format)         clients#update
#                          PUT    /clients/:id(.:format)         clients#update
#                          DELETE /clients/:id(.:format)         clients#destroy
#                    rdvms GET    /rdvms(.:format)               rdvms#index
#                          POST   /rdvms(.:format)               rdvms#create
#                 new_rdvm GET    /rdvms/new(.:format)           rdvms#new
#                edit_rdvm GET    /rdvms/:id/edit(.:format)      rdvms#edit
#                     rdvm GET    /rdvms/:id(.:format)           rdvms#show
#                          PATCH  /rdvms/:id(.:format)           rdvms#update
#                          PUT    /rdvms/:id(.:format)           rdvms#update
#                          DELETE /rdvms/:id(.:format)           rdvms#destroy
#                     pets GET    /pets(.:format)                pets#index
#                          POST   /pets(.:format)                pets#create
#                  new_pet GET    /pets/new(.:format)            pets#new
#                 edit_pet GET    /pets/:id/edit(.:format)       pets#edit
#                      pet GET    /pets/:id(.:format)            pets#show
#                          PATCH  /pets/:id(.:format)            pets#update
#                          PUT    /pets/:id(.:format)            pets#update
#                          DELETE /pets/:id(.:format)            pets#destroy
#                     root GET    /                              pets#index



  end
