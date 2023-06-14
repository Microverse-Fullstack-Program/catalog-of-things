module ListAuthors
  def list_authors(authors)
    return puts 'Authors list is empty' if authors.empty?

    authors.each_with_index do |author, index|
      puts
      puts "author #{index + 1}:"
      puts "first name: #{author.first_name}"
      puts "last name: #{author.last_name}"
    end
  end
end
