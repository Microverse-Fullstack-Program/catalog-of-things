require_relative '../classes/author'
module AddAuthor
  def add_author(authors)
    puts 'Add a new author:'
    print 'First name: '
    first_name = gets.chomp
    print 'Last name: '
    last_name = gets.chomp
    author = Author.new(first_name, last_name)
    authors << author
    puts 'Author created succesfully'
    puts
    puts 'Press any key to continue'
    gets
  end
end
