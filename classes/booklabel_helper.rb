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
        '3 - Add new book', '4 - Quit'
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
      list_all_books
    when 2
      list_all_labels
    when 3
      add_book
    when 4
      puts 'Go to the main page'
      exit
    else
      puts 'Invalid Option'
    end
  end

  def save
    save_books
    save_labels
  end

  def load
    load_books
    load_labels
  end
end
