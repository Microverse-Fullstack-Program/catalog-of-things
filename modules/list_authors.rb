module ListAuthors
  def list_authors(authors)
    return puts 'Authors list is empty' if authors.empty?

    authors.each do |author, index|
      puts
      puts "author #{index + 1}:"
      puts "first nam: #{author.first_name},  last name: #{author.last_name}"
    end
  end
end
