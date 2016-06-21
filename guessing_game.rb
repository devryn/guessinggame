puts "Guess a number, any number, so long as it's between 1-100."

player_answer = gets.chomp.to_i
comp_answer = (1..100).to_a.sample
puts comp_answer

loop do
  if player_answer == comp_answer
    puts "Winner winner chicken dinner"
    exit
  elsif player_answer > comp_answer
    puts "Too high, too high!"
    player_answer = gets.chomp.to_i
  elsif player_answer < comp_answer
    puts "Eh, try bumping it up a little."
    player_answer = gets.chomp.to_i
  else
    puts "Are you feeling okay?"
    player_answer = gets.chomp.to_i
  end
end
