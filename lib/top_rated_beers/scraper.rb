#This will scrape the information from the website used.
#Using untapped.com to scrape Top Rated Beers section of the website

class TopRatedBeers::Scraper


  def self.get_beer_page
    @doc = Nokogiri::HTML(open("https://untappd.com/beer/top_rated"))
  end

  def self.get_beer_details
    self.get_beer_page.css(".beer-details")
  end


end
