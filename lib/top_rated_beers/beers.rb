# Create a class to get the names and details for each beer and send them to the CLI class

class TopRatedBeers::Beers

  #class variables and methods
  @@all = []

  def self.all
    @@all
  end


  #attributes
  attr_accessor :name, :company, :style, :abv, :ibu, :rating, :summary

   #instance methods
   def initialize(name)#, company, style, abv, ibu, rating, summary)
     @name = name#, @company, @style, @abv, @ibu, @rating, @summary = name, company, style, abv, ibu, rating, summary
     save
   end

   def save
     @@all << self
   end

   # binding.pry


end
