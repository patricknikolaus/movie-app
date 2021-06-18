Rails.application.routes.draw do
get "/one_movie", controller: "movies", action: "get_one_movie"
get "/all_movies", controller: "movies", action: "get_all_movies"
post "/pick_an_actor", controller: "movies", action: "choose_an_actor"

get "/actor", controller: "actors", action: "show"
get "/actor/:id", controller: "actors", action: "show"
end
