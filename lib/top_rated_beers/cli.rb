# This is the controller for the CLI

class TopRatedBeers::CLI



  def call
    puts "Welcome to Top Rated Beers!"
    # binding.pry
  end

  def menu_instructions
    puts ""
    puts "What would you like to do? Type 'list' to see the list of beers or 'exit' if you are done."
    puts ""
  end

  def get_beer_choice
    input = gets.strip.downcase
    choices = ["list", "exit"]
    return input if choices.include?(input)
    (1..TopRatedBeers::Beers.all.length).include(input.to_i) ? input.to_i - 1 : puts "Sorry... I do not understand your input."
  end

  def list_beers
    TopRatedBeers::Scraper.make_beers
    TopRatedBeers::Beers.all.each.with_index(1) { |beer, index|
      puts "#{index}. #{beer.name}"
    }
    # binding.pry
  end

  def close_app
    puts ""
    puts "Thank you for checking out the app! Have a great day!"
    puts ""
  end


end
