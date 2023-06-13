require 'json'

module PreserveGenres
  def write_genre(genres)
    file = File.open('./data/genre.json', 'w+')

    genre_hash = {}
    genres.each_with_index do |genre, index|
      genre_hash[(index + 1).to_s] = { 'id' => genre.id, 'name' => genre.name, 'items' => genre.items }
    end
    file.write(JSON.pretty_generate(genre_hash))
  end

end
