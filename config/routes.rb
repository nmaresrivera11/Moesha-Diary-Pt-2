Rails.application.routes.draw do
  get '/blogs' => 'home#index'
  post '/blogs' => 'home#create'
  get 'blogs/new' => 'home#new', as: 'new_form'
  get 'blogs/:id' => 'home#show', as: 'blog'
  get '/blogs/:id/edit' => 'home#edit', as: 'edit'
  patch '/blogs/:id' => 'home#update'
  delete '/blogs/:id' => 'home#destroy', as: 'delete_blog'

  root 'home#index'
end
