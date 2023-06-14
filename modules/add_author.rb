require_relative '../classes/author'
module AddAuthor
  def add_author(authors)
    puts 'Add a new author:'
    puts 'First name: '
    first_name = gets.chomp
    puts 'Last name:'
    last_name = gets.chomp
    author = Author.new(first_name, last_name)
    authors << author
    puts 'Author created succesfully'
  end
end
