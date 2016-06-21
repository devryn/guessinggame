class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Game
  def welcome
    puts
    puts "Welcome to the Guessing Game."
    puts
  end

  def prompt(msg)
    print msg
    return gets.chomp
  end

  def start
    welcome

    name = prompt("What is your name? >")

    @player   = Player.new(name)
    @computer = Player.new("Unbeatable Computer")
  end


  def random_number
    if player_number.value > computer_number.value
      puts "Too high, too high!!"
      exit
    elsif @player.number.value < @computer.number.value
      puts "Eh, try bumping your guess up a little."
      exit
    elsif @player.number.value == @computer.number.value
      puts "Correctomundo."
      exit
    else
      puts "Are you feeling all right?"
    end
  end
end

Game.new.start
