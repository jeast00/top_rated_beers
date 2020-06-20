#This will scrape the information from the website used.
#Using untapped.com to scrape Top Rated Beers section of the website

class TopRatedBeers::Scraper


  def self.get_beer_page
    @doc = Nokogiri::HTML(open("https://untappd.com/beer/top_rated"))
  end

  def self.get_beer_details
    self.get_beer_page.css(".beer-details")
  end

  def self.make_beers
    self.get_beer_details.each { |beer|
      beer_info = TopRatedBeers::Beers.new
      beer_info.name = beer.css("p.name").text
      binding.pry
    }
  end


end
