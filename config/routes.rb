Rails.application.routes.draw do
  resources :gifts
  resources :users 
  resources :sessions, except: :new

  root to: 'users#index'
  get '/sign_in', to: 'sessions#new', as: 'sign_in'
  delete '/sessions', to: 'sessions#destroy', as: 'sign_out'
end

#       Prefix Verb   URI Pattern                  Controller#Action
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PATCH  /sessions/:id(.:format)      sessions#update
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy
#         root GET    /                            users#index
#      sign_in GET    /sign_in(.:format)           sessions#new
#              DELETE /sessions(.:format)          sessions#destroy