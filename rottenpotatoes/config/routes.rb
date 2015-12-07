Rottenpotatoes::Application.routes.draw do
  #get 'movies/similar/', to: 'movies#similar'
  get 'movies/similar/' => 'movies#similar' 
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  # root "movies#index"
end
