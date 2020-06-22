#This will scrape the information from the website used.
#Using untapped.com to scrape Top Rated Beers section of the website

class TopRatedBeers::Scraper


  def self.get_beer_page
    @doc = Nokogiri::HTML(open("https://untappd.com/beer/top_rated"))
  end

  def self.get_beer_details
    self.get_beer_page.css(".beer-item")
    # binding.pry
  end

  def self.make_beers
    self.get_beer_details.each { |beer|
      # beer_info = TopRatedBeers::Beers.new(name, company, style, abv, ibu, rating, summary)
      name = beer.css("p.name").text
      company = beer.css("p.style")[0].text
      style = beer.css("p.style")[1].text
      abv = beer.css(".details p.abv").text.gsub("\n","")
      ibu = beer.css(".details p.ibu").text.gsub("\n","")
      rating = beer.css(".details .num").children.text
      summary = beer.css(".desc")[1].text.gsub("Read Less", "")
      # binding.pry
      beer_info = TopRatedBeers::Beers.new(name, company, style, abv, ibu, rating, summary)
      # binding.pry
    }
  end


end
