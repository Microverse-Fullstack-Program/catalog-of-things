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

  def call_action(option)
    case option
    when 1
      # To do: call Book catalog menu here
    when 2
      # To do: call MusicAlbum menu here
    when 3
      # To do: call Game menu here
    when 4
      puts 'Thank You for using this app!'
      exit 0
    end
  end
end

app = App.new
app.main_menu