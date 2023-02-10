Rails.application.routes.draw do
  get'books/new'
  get'/books'=>'books#index'
  get'books/129477'=>'books#show'
  post'books'=>'books#show'
  get 'books/129477/edit'=>'books#edit'
  get'/'=>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
