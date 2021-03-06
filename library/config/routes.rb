Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get '/books' => "books#index", as: 'books' # books_path
   get '/books/new' =>"books#new", as: 'new_book'
   get '/book/:id/edit' => 'books#edit', as: 'edit_book'
   get '/books/:id' => "books#show", as: 'book' # book_path(book)
   post '/books' => "books#create"
   patch '/books/:id' => "books#update"
   delete '/books/:id' => "books#destroy"

   get '/movies' => "movies#index", as: 'movies'
   get '/movies/new' => "movies#new", as: 'new_movie'
   get '/movie/:id/edit' => 'movies#edit', as: 'edit_movie'
   get '/movies/:id' => "movies#show", as: 'movie' 
   post '/movies' => "movies#create"
   patch '/movies/:id' => "movies#update"
   delete '/movies/:id' => "movies#destroy"
end
