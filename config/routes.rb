Rails.application.routes.draw do
  root 'static#home'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :comments
  resources :festivals do
    resources :comments, only: [:show, :index]
  end

  resources :users, except: [:new] do
    resources :comments, only: [:show, :index]
  end

  resources :users, except: [:new] do
    resources :festivals, only: [:show, :index]
  end
end

# Prefix Verb   URI Pattern                                                                                       Controller#Action
#                                     root GET    /                                                                                                 static#home
#                                   signup GET    /signup(.:format)                                                                                 users#new
#                                    login GET    /login(.:format)                                                                                  sessions#new
#                                          POST   /login(.:format)                                                                                  sessions#create
#                                   logout DELETE /logout(.:format)                                                                                 sessions#destroy
#                                 comments GET    /comments(.:format)                                                                               comments#index
#                                          POST   /comments(.:format)                                                                               comments#create
#                              new_comment GET    /comments/new(.:format)                                                                           comments#new
#                             edit_comment GET    /comments/:id/edit(.:format)                                                                      comments#edit
#                                  comment GET    /comments/:id(.:format)                                                                           comments#show
#                                          PATCH  /comments/:id(.:format)                                                                           comments#update
#                                          PUT    /comments/:id(.:format)                                                                           comments#update
#                                          DELETE /comments/:id(.:format)                                                                           comments#destroy
#                        festival_comments GET    /festivals/:festival_id/comments(.:format)                                                        comments#index
#                         festival_comment GET    /festivals/:festival_id/comments/:id(.:format)                                                    comments#show
#                                festivals GET    /festivals(.:format)                                                                              festivals#index
#                                          POST   /festivals(.:format)                                                                              festivals#create
#                             new_festival GET    /festivals/new(.:format)                                                                          festivals#new
#                            edit_festival GET    /festivals/:id/edit(.:format)                                                                     festivals#edit
#                                 festival GET    /festivals/:id(.:format)                                                                          festivals#show
#                                          PATCH  /festivals/:id(.:format)                                                                          festivals#update
#                                          PUT    /festivals/:id(.:format)                                                                          festivals#update
#                                          DELETE /festivals/:id(.:format)                                                                          festivals#destroy
#                            user_comments GET    /users/:user_id/comments(.:format)                                                                comments#index
#                             user_comment GET    /users/:user_id/comments/:id(.:format)                                                            comments#show
#                                    users GET    /users(.:format)                                                                                  users#index
#                                          POST   /users(.:format)                                                                                  users#create
#                                edit_user GET    /users/:id/edit(.:format)                                                                         users#edit
#                                     user GET    /users/:id(.:format)                                                                              users#show
#                                          PATCH  /users/:id(.:format)                                                                              users#update
#                                          PUT    /users/:id(.:format)                                                                              users#update
#                                          DELETE /users/:id(.:format)                                                                              users#destroy
#                           user_festivals GET    /users/:user_id/festivals(.:format)                                                               festivals#index
#                            user_festival GET    /users/:user_id/festivals/:id(.:format)                                                           festivals#show
#                                          GET    /users(.:format)                                                                                  users#index
#                                          POST   /users(.:format)                                                                                  users#create
#                                          GET    /users/:id/edit(.:format)                                                                         users#edit
#                                          GET    /users/:id(.:format)                                                                              users#show
#                                          PATCH  /users/:id(.:format)                                                                              users#update
#                                          PUT    /users/:id(.:format)                                                                              users#update
#                                          DELETE /users/:id(.:format)                                                                              users#destroy