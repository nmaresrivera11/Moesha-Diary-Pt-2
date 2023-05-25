Rails.application.routes.draw do
  get 'blogs' => 'home#index'
  post 'blogs' => 'home#create'
  get 'blogs/new' => 'home#new', as: 'new_form'
  get 'blogs/:id' => 'home#show', as: 'blog'
  delete '/blogs/:id' => 'home#destroy', as: 'delete_blog'
  root 'home#index'
end
