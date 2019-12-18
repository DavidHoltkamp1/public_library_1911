class Library
attr_reader :name,
            :books,
            :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
  end

  def add_book(book)
    @books << book
  end

  def publication_time_frame_for(author)
    all_books = books.find_all do |book|
      require "pry"; binding.pry
      book.author_last_name == author.author_last_name
    end
    all_books
    #F if i know. way off today. 
  end
end
