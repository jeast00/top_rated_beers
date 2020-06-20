# Create a class that passes the beer names and beer details to the CLI class


class TopRatedBeers::Beers

  attr_accessor :beer_names, :company, :style, :abv, :ibu,
                :rating, :summary, :url, :availability


  def self.get_beer_names
    TopRatedBeers::Scraper.scrape_beer_names
  end

end
