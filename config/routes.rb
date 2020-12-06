Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'

  get 'add_new_book' => 'books#new', as: 'add_book'
  get 'search_for_book' => 'books#search', as: 'search_book'

  resources :books do
  	resources :reviews
  end
  resources :searches
  resources :patrons
end
