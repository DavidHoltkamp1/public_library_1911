require 'minitest/pride'
require 'minitest/autorun'
require './lib/book'

class BookTest < Minitest::Test
  def test_it_exists
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_instance_of Book, book
  end

  def test_it_initializes
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_equal "To Kill a Mockingbird", book.title
    assert_equal "Harper Lee", book.author
    assert_equal "1960", book.publication_year
  end
end
