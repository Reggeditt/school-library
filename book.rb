class Book
    attr_accessor :title, :author
  
    def initialize(title, author)
      @title = title
      @author = author
      @rentals = [] # We'll store the rentals in an array
    end
  
    def add_rental(rental)
      @rentals << rental
    end
  
    def rentals
      @rentals
    end
  end
  