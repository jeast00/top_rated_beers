
#require gems
require 'open-uri'
require 'nokogiri'
require 'pry'

#require_relative files
require_relative "./top_rated_beers/version"
require_relative "./top_rated_beers/cli"
require_relative "./top_rated_beers/scraper"


module TopRatedBeers
  class Error < StandardError; end
  # Your code goes here...
end
