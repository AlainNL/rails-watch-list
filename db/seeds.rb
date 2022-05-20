require 'uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.destroy_all

url = "http://tmdb.lewagon.com/movie/top_rated"
serialized_movie = URI.open(url).read
movies = JSON.parse(serialized_movie)

movies["results"].each do |movie|
  movieTitle = movie["title"]
  movieOverview = movie["overview"]
  poster_url = "https://image.tmdb.org/t/p/original/#{movie['poster_path']}"

Movie.create(title: movieTitle, post_url: poster_url, overview: movieOverview)
end
