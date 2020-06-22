# This is the controller for the CLI

class TopRatedBeers::CLI

  def call
    TopRatedBeers::Scraper.make_beers
    menu_instructions
    # binding.pry
    menu
  end

  def menu_instructions
    puts ""
    puts "Welcome to Top Rated Beers!".colorize(:yellow)
    puts ""
    sleep(2)
    puts "To begin, type " + "'list'".colorize(:yellow) + " and press the " + "'enter'".colorize(:yellow) + " key."
    puts ""
    # puts "Type " + "'list'".colorize(:yellow) + " to see the list of beers."
    # puts "Type " + "'exit'".colorize(:yellow) + " if you are done."
    # puts ""
  end

  def menu
    input = ""
    while input != 'exit'
      input = gets.strip.downcase
      if input.to_i.between?(1, TopRatedBeers::Beers.all.length)
        TopRatedBeers::Beers.print_beer_details(input)
        puts ""
        puts ""
        puts "Type another number and press the " + "'enter'".colorize(:yellow) + " key"
        puts "Type " + "'list'".colorize(:yellow) + " to see the list again."
        puts "Type " + "'exit'".colorize(:yellow) + " if you are done."
      elsif input == 'list'
        puts ""
        puts "Please wait..."
        puts ""
        sleep(2)
        TopRatedBeers::Beers.print_beers
        puts ""
        puts "Type a number " + "(1-50)".colorize(:yellow) + " to select a beer and view the details."
        puts "Type " + "'exit'".colorize(:yellow) + " if you are done."
      elsif input == 'exit'
        puts ""
        puts "Please wait..."
        puts ""
        sleep(2)
        close_app
      else
        puts "I did not understand your input.".colorize(:yellow)
        puts "Type 'list' and press the 'enter' key to see the list of beers or type 'exit' if you are done".colorize(:yellow)
      end
    end
  end

  def close_app
    puts "-----------------------------------------------------"
    puts "Thank you for checking out the app! Have a great day!".colorize(:yellow)
    puts "-----------------------------------------------------"
  end

end
