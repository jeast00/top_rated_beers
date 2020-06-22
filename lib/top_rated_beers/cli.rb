# This is the controller for the CLI

class TopRatedBeers::CLI



  def call
    TopRatedBeers::Scraper.make_beers
    menu_instructions
    menu
    # binding.pry
  end

  def menu_instructions
    puts ""
    puts "Welcome to Top Rated Beers!"
    puts "Here is a list of the top rated beers across the world!"
    puts ""
    sleep(2)
    list_beers
    sleep(2)
    puts ""
    puts "What would you like to do?"
    puts "Type a number (1-50) to see details about that beer."
    puts "Type 'list' to see the list of beers again."
    puts "Type 'exit' if you are done."
    puts ""
  end

  def menu
    input = nil
    while input != 'exit'
      input = gets.strip.downcase
      if input.to_i.between?(1, TopRatedBeers::Beers.all.length)
        beer_selection = TopRatedBeers::Beers.all[input.to_i - 1]
        <<-DETAILS
        Beer Name: #{beer_selection.name}
        Company: #{beer_selection.company}
        Style: #{beer_selection.style}
        DETAILS
      elsif input == 'list'
        list_beers
        puts ""
        puts "Type a number (1-50) to select a beer and see the details."
        puts "Type 'exit' if you are done."
      else
        "I did not understand your input. Type 'list' and press the 'enter' key\n
        end to see the list of beers or type 'exit' if you are done"
      end
    end
    close_app
  end


  def list_beers
    TopRatedBeers::Beers.all.each.with_index(1) { |beer, index|
      puts "#{index}. #{beer.name}"
    }
    # binding.pry
  end

  # def show_beer_info
  #
  # end

  def close_app
    puts ""
    puts "Thank you for checking out the app! Have a great day!"
    puts ""
  end


end
