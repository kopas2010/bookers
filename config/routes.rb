Rails.application.routes.draw do
  root :to => 'homes#top'
  get 'books/new'
  post 'books' => 'books#create'

  get 'books' => 'books#index'
  get 'books/:id' => 'books#show' , as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_list'
  delete 'books/:id' => 'books#destroy' , as: 'destroy_book'


  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  get 'index' => 'books#index'
  get 'show' => 'books#show'
  get 'edit' => 'books#edit'

end
