Rails.application.routes.draw do

  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  #「resources :lists」この記述必要ないかも。最初に間違えて作ったやつの名残説
  resources :books
  get 'lits/:id' => 'list#show'
end
