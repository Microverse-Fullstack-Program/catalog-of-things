module ListAuthors
  def list_authors(authors)
    if authors.empty?
      puts 'Authors list is empty'
      puts 'Press enter to continue'
      gets
      return
    end

    puts
    authors.each_with_index do |author, index|
      print "Author #{index + 1}, "
      puts "Full name: #{author.first_name} #{author.last_name}"
    end
    puts
    puts 'Press any key to continue'
    gets
  end
end
