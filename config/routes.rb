Rails.application.routes.draw do

get "/one_actor", controller: "actors", action: "get_one_actor"
end
