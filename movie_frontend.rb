require "http"

response = HTTP.get("http://localhost:3000/all_movies")

pp movies = response.parse(:json)