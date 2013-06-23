 class Shelf
 @@array = Array.new
 attr_accessor :name
 
 def self.total_instances
    @@array
 
end
def initialize(name)
    @name = name
    @@array << self
end
end

shelf1 = Shelf.new(:"Cooking")
shelf2 = Shelf.new(:"Farming")
shelf3 = Shelf.new(:"Health")
 
 class Book
  @@array = Array.new
  attr_accessor :title, :author

  def self.all_instances
    @@array
  end

  def initialize(title, author)
    @title = title
    @author = author
    @@array << self
  end
 
  
end

book1 = Book.new(:"Churnin' Butter",:"Edith Olde")
book2 = Book.new(:"Fallow Field", :"Ezra Timey")
book3 = Book.new(:"Do I Have Dysentary?", :"Charles Doctor")
book4 = Book.new(:"Blankets for Friends", :"Emily Native")


Book.all_instances

Shelf.total_instances

books = {
    "Churnin' Butter" => "Edith Olde",
    "Fallow Field" => "Ezra Timey",
    "Do I Have Dysentary?" => "Charles Doctor",
    "Blankets from Friends" => "Emily Native"
}

shelves = {
    "Shelf 1" => "Cooking",
    "Shelf 2" => "Farming",
    "Shelf 3" => "Health"
}

books_on_shelves = {
    {"Shelf 1" => "Cooking"} => {"Churnin' Butter" => "Edith Olde"},
    {"Shelf 2" => "Farming"} => {"Fallow Field" => "Ezra Timey"},
    {"Shelf 3" => "Health"} => {"Do I Have Dysentary?" => "Charles Doctor"}
}
organize_the_books = {
    "Churnin' Butter" => "Shelf 1",
    "Fallow Field" => "Shelf 2",
    "Do I Have Dysentary?" => "Shelf 3",
    "Blankets from Friends" => "Shelf 3"
}
class Library
attr_reader :shelves, :books
def initialize(shelves, books)
    @shelves = shelves
    @books = books
end
def report_books
    return book_hash.each { |title,author| puts "#{title} by #{author}"}
    #reports all books in the library
end
def report_shelves
    return shelf_hash.each { |shelf,category| puts "On #{shelf} you can find books on #{category}"}
    #tells the shelves in the library
    else
    return "So organized! #{@books} is on the #{shelves} shelf!"
    #hopefully one of these works...
end
end

shelf1 = Library.new("Cooking", "Churnin' Butter")
shelf2 = Library.new("Farming", "Fallow Field")
shelf3 = Library.new("Health", "Do I Have Dysentary?")
    
class Book
@@book_count = 0
attr_reader :title, :author
@@instance_collector = []
def initialize(title, author)
    @title = title
    @author = author
    @@book_count += 1
end
 def description
    puts "You got a book: #{@title} by #{@author}!"
    end
  def self.all_offspring
    @@instance_collector
end
def self.number_of_books
return @@book_count
end
def unshelf
    title = gets.chomp
    #puts book somewhere new
    books_on_shelves[title.to_sym] = shelf.to_i
def enshelf
#returns book to original shelf
end

book1 = Book.new("Churnin' Butter","Edith Olde")
book2 = Book.new("Fallow Field", "Ezra Timey")
book3 = Book.new("Do I Have Dysentary?", "Charles Doctor")
book4 = Book.new("Blankets for Friends", "Emily Native")

Book.all_offspring

class Shelf
def initialize(shelf)
    @shelf = shelf
end
def organize_it
    return organize_the_books.each { |name, shelf| puts " #{name} is on #{shelf}!"}
end

shelf_hash = {
    "Shelf 1" => "Cooking",
    "Shelf 2" => "Farming",
    "Shelf 3" => "Health"
}

organize_the_books = {
    "Churnin' Butter" => "Shelf 1",
    "Fallow Field" => "Shelf 2",
    "Do I Have Dysentary?" => "Shelf 3",
    "Blankets from Friends" => "Shelf 3"
}

organize_the_books.each { |name, shelf| puts " #{name} is on #{shelf}!"}

puts "Welcome to Ye Olde Library!"
puts "take a look around!"

shelf_hash.each { |shelf,category| puts "On #{shelf} you can find books on #{category}"}

puts "Interested in a specific book?"
puts "Ye Olde Library currently stocks the following:"

book_hash.each { |title,author| puts "#{title} by #{author}"}
