class Book
@@book_count = 0

def initialize(title, author, shelf)
    @title = title
    @author = author
    @shelf = shelf
    @@book_count += 1
end
def title
    @title
end
def author
    @author
end
def shelf
    @shelf
end
def shelf=(newShelf) #"enshelf" and "unshelf": changes shelf to the best that I could figure out!
    @shelf = newShelf
end
def where #typing in book instance name returns which shelf it is on
    puts "Looking for this? #{@title} is on #{@shelf}!"
end
def self.number_of_books #returns the number of shelves in the library
    puts "So many books! Ye Olde Library has #{@@book_count} of 'em!" 
end
end
    book1 = Book.new("Churnin' Butter","Edith Olde", "shelf 1")
    book2 = Book.new("Fallow Field", "Ezra Timey", "shelf 2")
    book3 = Book.new("Do I Have Dysentary?", "Charles Doctor", "shelf 3")
    book4 = Book.new("Blankets for Friends", "Emily Native","shelf 4")
    
class Library
@@shelf_count = 0
@@array = Array.new

def initialize(book, shelf)
    @book = book
    @shelf = shelf
    @@shelf_count += 1
    @@array << self
end

def self.number_of_shelves #count of shelves in library
    puts "Don't get lost! Ye Olde Library has #{@@shelf_count} shelves!"
end

def self.report_books #list(array) of all books in the library!
    puts "Ye Olde Library has all the best books. They are:"
    @@array
end 
def book
    @book
end
def where #returns where to find which item
    puts "Looking for this? #{@book} is on #{@shelf}!"
end
end

item1 = Library.new("Churnin' Butter", "shelf 1")
item2 = Library.new("Fallow Field", "shelf 2")
item3 = Library.new("Do I Have Dysentary?", "shelf 3")
item4 = Library.new("Blankets from Friends", "shelf 4")

class Shelf
@@array = Array.new
books = { 
    "Churnin' Butter" => "Edith Olde",
    "Fallow Field" => "Ezra Timey",
    "Do I Have Dysentary?" => "Charles Doctor",
    "Blankets from Friends" => "Emily Native"
} #not sure a hash is possible inside a class--suspect it isn't, but thought I would try!
def initialize(shelf, book)
    @shelf = shelf
    @book = book
    @@array << self
end
def where #returns on which shelf to find a book on a specific subject
    puts "You will find that on #{@shelf}!"
end
def self.report_books #shelf knows and reports all books
    puts "Wondering what books are on all these shelves?"
    @@array
end
def self.all_books #I wish this would work to report all books!
    books.each { |title,author| puts "#{title} by #{author}"}
    #reports all books in the library
end
end


cooking = Shelf.new("shelf 1","Churnin' Butter")
farming = Shelf.new("shelf 2", "Fallow Field")
health = Shelf.new("shelf 3", "Do I Have Dysentary?")
society = Shelf.new("shelf 4", "Blankets from Friends")

puts "Welcome to Ye Olde Library!" #a little intro to be welcoming!
puts "Like to count?" 
puts "type 'Book.number_of_books' to find out how many books we have!"
puts "Looking for something?" 
puts "type 'Classname.where' to find out where it is!"
puts "Want to be a librarian's worst nightmare and move a book?"
puts "type 'book1-4.shelf = shelf1-4' to put it on to a new shelf!"
puts "Want to know what books are in the library?" 
puts "type 'Library.report_books' to see them!"
