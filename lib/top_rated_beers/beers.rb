# Create a class to get the names and details for each beer and send them to the CLI class

class TopRatedBeers::Beers

  #class variables and methods
  @@all = []

  def self.all
    @@all
  end

  def self.find(id)
    @@all[id.to_i - 1]
  end

  def self.print_beers
    self.all.each.with_index(1) { |beer, index|
      puts "#{index}. #{beer.name}".colorize(:yellow)
    }
  end

  def self.print_beer_details(index)
    beer_details = self.find(index)
    puts ""
    puts "----------------------------------"
    puts "| Beer Name:".colorize(:yellow) + " #{beer_details.name}"
    puts "| Company:".colorize(:yellow) + " #{beer_details.company}"
    puts "| Style:".colorize(:yellow) + " #{beer_details.style}"
    puts "| Alcohol by Volume:".colorize(:yellow) + " #{beer_details.abv}"
    puts "| International Bitterness Units:".colorize(:yellow) + " #{beer_details.ibu}"
    puts "| Rating:".colorize(:yellow) + " #{beer_details.rating}"
    puts "----------------------------------"
    puts "| Summary:".colorize(:yellow) + " #{beer_details.summary}"
  end


  #attributes
  attr_accessor :name, :company, :style, :abv, :ibu, :rating, :summary

   #instance methods
   def initialize(name, company, style, abv, ibu, rating, summary)
     @name, @company, @style, @abv, @ibu, @rating, @summary = name, company, style, abv, ibu, rating, summary
     save
   end

   def save
     @@all << self
   end

end
