
#require gems
require 'open-uri'
require 'nokogiri'
require 'pry'
require 'colorize'

#require_relative files
require_relative "./top_rated_beers/version"
require_relative "./top_rated_beers/scraper"
require_relative "./top_rated_beers/beers"
require_relative "./top_rated_beers/cli"




module TopRatedBeers
  class Error < StandardError; end
  # Your code goes here...
end
