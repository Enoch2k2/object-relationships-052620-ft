class Author
  attr_accessor :name, :age, :books

  @@all = []

  def initialize(name, age)
    self.name = name
    self.age = age
    self.books = []
    @@all << self
  end

  def add_book(book_object)
    self.books << book_object
    book_object.author = self
  end

  def genres
    self.books.map { |book| book.genre }.uniq
  end

  def self.all
    @@all
  end
end