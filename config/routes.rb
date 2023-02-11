Rails.application.routes.draw do
  resources:books

  #get'books'=>'books#index'
  #post'books'=>'books#create'
  #get'books/new'=>'books#new'
  #get'books/:id/edit'=>'books#edit'
  #get'books/:id'=>'books#show'
  #patch'books/:id'=>'books#update'
  #put'books/:id'=>'books#update'
  #delete'books/:id'=>'books#destroy'
  get'/'=>'homes#top'
  #get'books/:id'=>'books#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
