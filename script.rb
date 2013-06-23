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
def shelf=(newShelf) #changes shelf
    @shelf = newShelf
end
def where
    puts "Looking for this? #{@title} is on #{@shelf}!"
end
def self.number_of_books
puts "So many books! Ye Olde Library has #{@@book_count} of 'em!" 
end
end
    book1 = Book.new("Churnin' Butter","Edith Olde", "shelf 1")
    book2 = Book.new("Fallow Field", "Ezra Timey", "shelf 2")
    book3 = Book.new("Do I Have Dysentary?", "Charles Doctor", "shelf 3")
    book4 = Book.new("Blankets for Friends", "Emily Native","shelf 3")
    
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

def self.report_books #list of all items, hopefully!
    puts "Ye Olde Library has all the best books. They are:"
    @@array
end 
def book
    @book
end
def where
    puts "Looking for this? #{@book} is on #{@shelf}!"
end
end

item1 = Library.new("Churnin' Butter", "shelf 1")
item2 = Library.new("Fallow Field", "shelf 2")
item3 = Library.new("Do I Have Dysentary?", "shelf 3")
item4 = Library.new("Blankets from Friends", "shelf 3")

class Shelf
books = {
    "Churnin' Butter" => "Edith Olde",
    "Fallow Field" => "Ezra Timey",
    "Do I Have Dysentary?" => "Charles Doctor",
    "Blankets from Friends" => "Emily Native"
}
def initialize(shelf)
    @shelf = shelf
end
def where
    puts "You will find that on #{@shelf}!"
end
def report_books
    puts book_hash.each { |title,author| puts "#{title} by #{author}"}
    #reports all books in the library
end
end


cooking = Shelf.new("shelf 1")
farming = Shelf.new("shelf 2")
health = Shelf.new("shelf 3")
society = Shelf.new("shelf 4")
