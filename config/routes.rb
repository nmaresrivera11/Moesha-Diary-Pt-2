Rails.application.routes.draw do
  get '/blogs' => 'home#index'
  get 'blogs/:id' => 'home#show', as:'blog'
  root 'home#index'
end
