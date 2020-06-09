class Genre
  attr_accessor :name, :books

  def initialize(name)
    self.name = name
    self.books = []
  end

  def add_book(book_object)
    self.books << book_object
    book_object.genre = self
  end

  def authors
    self.books.map { |book| book.author }.uniq
  end

end