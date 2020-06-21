# This is the controller for the CLI

class TopRatedBeers::CLI



  def call
    # puts "Welcome to Top Rated Beers!"
    list_beers
    # binding.pry
  end

  def list_beers
    variable = TopRatedBeers::Beers.all.each.with_index(1) { |beer|
      puts "#{index}. #{beer.name}"
    }
    binding.pry
  end

  def close_app
    "Thank you for checking out the app! Have a great day!"
  end


end
