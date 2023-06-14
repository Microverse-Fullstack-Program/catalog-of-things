require 'json'
require_relative 'item'
require_relative 'label'
require_relative 'book'
require_relative '../modules/book_module'
require_relative '../modules/label_module'
require_relative '../modules/label_storage'
require_relative '../modules/book_storage'
require 'date'


class BookLabelHelper
  include BookModule
  include LabelModule
  include LabelStorage
  include BookStorage
 

  attr_reader :books

  def initialize 
    @labels = []
    @books = []

  end
  def books_and_labels_menu()
    puts
    puts 'Welcome to books catalog, Please select an Option: '

    loop do
      options = [
        '1 - List all books', '2 - List all labels',
        '3 - Add new book', '4 - Add new Label', '5 - Back to Main Menu',
        '6 - Quit'
      ]

      puts '------------------------'
      puts options
      puts '------------------------'
      print 'option: '
      choice = gets.chomp.to_i

      if choice == 5
        puts 'You Are Back to Main Menu'
        break
      end
      perform_action(choice)
    end
  end
  def perform_action(option)
    case option
    when 1
      list_all_books()
    when 2
      list_all_labels()
    when 3
      add_book
    when 4

    when 6
      exit
    else
      puts 'Invalid Option'
    end
  end

 public
 
  def save
    save_labels
    save_books
  end

  def load
    load_labels
    load_books
  end
end