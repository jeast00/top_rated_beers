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
    puts ""
    puts "What would you like to do?"
    puts ""
    puts "Type " + "'list'".colorize(:yellow) + " to see the list of beers."
    puts "Type " + "'exit'".colorize(:yellow) + " if you are done."
    puts ""
  end

  def menu
    input = ""
    while input != 'exit'
      input = gets.strip.downcase
      if input.to_i.between?(1, TopRatedBeers::Beers.all.length)
        beer_selection = TopRatedBeers::Beers.all[input.to_i - 1]
        puts "| Beer Name:".colorize(:yellow) + " #{beer_selection.name}"
        puts "| Company:".colorize(:yellow) + " #{beer_selection.company}"
        puts "| Style:".colorize(:yellow) + " #{beer_selection.style}"
        puts "| Alcohol by Volume:".colorize(:yellow) + " #{beer_selection.abv}"
        puts "| International Bitterness Units:".colorize(:yellow) + " #{beer_selection.ibu}"
        puts "| Rating:".colorize(:yellow) + " #{beer_selection.rating}"
        puts "----------------------------------"
        puts "| Summary:".colorize(:yellow) + " #{beer_selection.summary}"
        puts "----------------------------------"
        puts ""
        puts "Type another number and press the " + "'enter'".colorize(:yellow) + " key"
        puts "Type " + "'list'".colorize(:yellow)
        puts "Type " + "'exit'".colorize(:yellow) + " if you are done."
      end
      if input == 'list'
        puts "Thank you!"
        sleep(2)
        puts "Please wait..."
        puts ""
        sleep(3)
        list_beers
        puts ""
        puts "Type a number " + "(1-50)".colorize(:yellow) + " to select a beer and view the details."
        puts "Type " + "'exit'".colorize(:yellow) + " if you are done."
      elsif input == 'exit'
        puts "Thank you!"
        sleep(2)
        puts "Please wait..."
        puts ""
        sleep(3)
        close_app
      else
        puts "I did not understand your input.".colorize(:yellow)
        puts "Type 'list' and press the 'enter' key to see the list of beers or type 'exit' if you are done".colorize(:yellow)
      end
    end
  end


  def list_beers
    TopRatedBeers::Beers.all.each.with_index(1) { |beer, index|
      puts "#{index}. #{beer.name}".colorize(:yellow)
    }
    # binding.pry
  end

  # def show_beer_info
  #
  # end

  def close_app
    puts "-----------------------------------------------------"
    puts "Thank you for checking out the app! Have a great day!".colorize(:yellow)
    puts "-----------------------------------------------------"
  end


end
