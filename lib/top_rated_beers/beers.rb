# Create a class to get the names and details for each beer and send them to the CLI class

class TopRatedBeers::Beers

  #class variables and methods
  @@all = []

  def self.all
    @@all
  end

  #attributes
  attr_accessor :beer_names, :company, :style, :abv, :abv, :ibu,
                :rating, :summary, :url, :availability

   #instance methods
   def initialize
     @@all << self
   end


end
