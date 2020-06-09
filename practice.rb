require 'pry'
require_relative "author"
require_relative "book"
require_relative "genre"

jrr_tolkein = Author.new("J.R.R Tolkein", 137)
frank_herbert = Author.new("Frank Herbert", 135)


the_hobbit = Book.new("The Hobbit", "Middle Earth", 304)
the_two_towers = Book.new("The Two Towers", "Middle Earth", 255)
dune = Book.new("Dune", "Arrakis", 402)


fantasy = Genre.new("Fantasy")
science_fiction = Genre.new("Science Fiction")

# jrr_tolkein.add_book(the_hobbit)
the_hobbit.author = jrr_tolkein
the_hobbit.genre = fantasy

the_two_towers.author = jrr_tolkein
the_two_towers.genre = fantasy

dune.author = frank_herbert
dune.genre = science_fiction

fantasy.authors

jrr_tolkein.genres