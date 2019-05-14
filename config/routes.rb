Rails.application.routes.draw do
 

  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "login" => "users#login_form" 
  post "login" => "users#login"
  get "users/index" => "users#index"   
  get "signup" => "users#new"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"  
  get "users/:id/likes" => "users#likes"
  post "users/create" => "users#create"
  post "users/:id/update" => "users#update"
  
  post "logout" => "users#logout"
  
  get "/" => "home#top"
  get "about" => "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
