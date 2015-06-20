Rails.application.routes.draw do

  resources :users 
  resources :session, except: :new

  root to: "users#index"
  get "/sign_in", to: "sessions#new", as: "sign_in"
end

#        Prefix Verb   URI Pattern                 Controller#Action
#         users GET    /users(.:format)            users#index
#               POST   /users(.:format)            users#create
#      new_user GET    /users/new(.:format)        users#new
#     edit_user GET    /users/:id/edit(.:format)   users#edit
#          user GET    /users/:id(.:format)        users#show
#               PATCH  /users/:id(.:format)        users#update
#               PUT    /users/:id(.:format)        users#update
#               DELETE /users/:id(.:format)        users#destroy
# session_index GET    /session(.:format)          session#index
#               POST   /session(.:format)          session#create
#  edit_session GET    /session/:id/edit(.:format) session#edit
#       session GET    /session/:id(.:format)      session#show
#               PATCH  /session/:id(.:format)      session#update
#               PUT    /session/:id(.:format)      session#update
#               DELETE /session/:id(.:format)      session#destroy
#       sign_in GET    /sign_in(.:format)          sessions#new