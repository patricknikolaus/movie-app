Rails.application.routes.draw do

get "/one_actor", controller: "actors", action: "get_one_actor"
get "/one_movie", controller: "movies", action: "get_one_movie"
get "/all_movies", controller: "movies", action: "get_all_movies"
end
