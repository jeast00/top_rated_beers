# This is the controller for the CLI

class TopRatedBeers::CLI



  def call
    puts "Welcome to Top Rated Beers!"
    list_beers
  end

  def list_beers
    TopRatedBeers::Scraper.scrape_beer_names.each.with_index(1) { |beer, index|
      puts "#{index}. #{beer}"
    }
  end


end
