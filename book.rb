class Book
  attr_accessor :title, :series, :pages
  attr_reader :author, :genre

  @@all = []

  def initialize(title, series, pages)
    self.title = title
    self.series = series
    self.pages = pages
    @@all << self
  end

  def author=(author)
    @author = author unless @author
    author.add_book(self) unless author.books.include?(self)
  end

  def genre=(genre)
    @genre = genre unless @genre
    genre.add_book(self) unless genre.books.include?(self)
  end

  def self.all
    @@all
  end
end