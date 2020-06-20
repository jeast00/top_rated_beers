#This will scrape the information from the website used.
#Using untapped.com to scrape Top Rated Beers section of the website

class TopRatedBeers::Scraper

  @doc = Nokogiri::HTML( open("https://untappd.com/beer/top_rated") )

  



  def self.scrape_beer_names
    @doc.css( "div.beer-details").map { |beer| beer.css("p.name").text }
  end


end
