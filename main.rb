class App
  def initialize
    # To do: inialize the Book, MusicAlbum and Game classes here
  end

  def main_menu
    puts 'Welcome to our catalog, Please select an Option: '
    options = [
      '1 - Books Catalog',
      '2 - Musics Album Catalog',
      '3 - Games Catalog',
      '4 - Quit'
    ]

    loop do
      puts
      puts '------------------------'
      puts options
      puts '------------------------'
      print 'option: '
      option = gets.chomp.to_i
      puts 'Invalid Option' unless [1, 2, 3, 4].include?(option)

      call_action(option)
    end
  end
end

app = App.new
app.main_menu
