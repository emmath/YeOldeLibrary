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
