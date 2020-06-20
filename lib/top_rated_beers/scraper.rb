#This will scrape the information from the website used.
#Using untapped.com to scrape Top Rated Beers section of the website

class TopRatedBeers::Scraper


  def get_response_body
    uri = URI.parse("https://untappd.com/beer/top_rated")
    response = Net::HTTP.get_response(uri)
    response.body
  end



  def self.scrape_beer_names
    get_response_body.css("div.beer-details").map { |beer| beer.css("p.name").text }
  end

end
