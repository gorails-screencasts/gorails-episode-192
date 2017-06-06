json.movies do
  json.array!(@movies) do |movie|
    json.name movie.name
    json.url movie_path(movie)
  end
end

json.directors do
  json.array!(@directors) do |director|
    json.name director.name
    json.url director_path(director)
  end
end
