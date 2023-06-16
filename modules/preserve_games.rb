module PreserveGamesAndAuthors
  require_relative '../classes/game'
  require_relative '../classes/author'
  def read_games_file
    file = './data/games.json'
    json_data = File.read(file)
    parsed_data = JSON.parse(json_data)
    parsed_data.map do |data|
      Game.new(data['multiplayer'], data['last_played_at'], data['publish_date'], data['archived'], id: data['id'])
    end
  rescue Errno::ENOENT
    []
  end

  def read_author_file
    file = './data/authors.json'
    json_data = File.read(file)
    parsed_data = JSON.parse(json_data)
    parsed_data.map do |data|
      Author.new(data['first_name'], data['last_name'])
    end
  rescue Errno::ENOENT
    []
  end

  def write_games(games)
    games_hashes = games.map do |game|
      { 'multiplayer' => game.multiplayer, 'last_played_at' => game.last_played_at,
        'publish_date' => game.publish_date, 'archived' => game.archived }
    end
    serialized_data = JSON.pretty_generate(games_hashes)
    file = File.open('./data/games.json', 'w+')
    File.write(file, serialized_data)
  end

  def write_authors(authors)
    authors_hashes = authors.map do |author|
      { 'first_name' => author.first_name, 'last_name' => author.last_name }
    end
    serialized_data = JSON.pretty_generate(authors_hashes)
    file = File.open('./data/authors.json', 'w+')
    File.write(file, serialized_data)
  end
end
