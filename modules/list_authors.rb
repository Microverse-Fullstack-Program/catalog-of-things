module ListAuthors
  def list_authors(authors)
    return puts 'Authors list is empty' if authors.empty?

    authors.each do |author, index|
      puts if (index % 3).zero?
      print "author #{index + 1}: #{author}   "
    end
  end
end
