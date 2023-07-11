Rails.application.routes.draw do
  get 'series/index'
  get 'series/create'
  get 'series/new'
  get 'movies/index'
  get 'movies/create'
  get 'movies/new'
  get 'documentary_films/index'
  get 'documentary_films/create'
  get 'documentary_films/new'
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#Rutas Post
  post "movies" => "movies#create"
  post "series" => "series#create"
  post "documentary_films" => "documentary_films#create"
  # Defines the root path route ("/")
   root "movies#new"
  
end
