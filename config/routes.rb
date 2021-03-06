RecipeTodo::Application.routes.draw do
  



  resources :user_sessions

  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout

  resources :users  # give us our some normal resource routes for users
  resource :user, :as => 'account'  # a convenience route

  match 'signup' => 'users#new', :as => :signup

  resources :site
  root :to => 'site#index'

   resources :appetizers  do
     collection do
       post :selected_items
     end
   end
  
end
