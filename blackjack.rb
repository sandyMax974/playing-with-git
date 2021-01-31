def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
         "eight", "nine", "ten",
         "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

def move
  user_move = ""
  until user_move.include?("stick") do
    puts "hit or stick"
    user_move = gets.chomp
    if user_move == "stick" || user_move == "hit" # latest change
      return user_move
    end
  end
end

def score(player_hand) # => result as integer
  table = {
    "two" =>  2,
    "three" =>  3,
    "four" =>  4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9,
    "ten" => 10,
    "jack" => 10,
    "queen" => 10,
    "king" => 10,
    "ace" => 11,
  }
  result = player_hand.map { |card| table[card] }.sum
  return result
end

def run_game
  player_hand = []
  while true
    if move == "hit"
      player_hand.push(random_card)
      puts "Score so far: #{score(player_hand)}"
    else
      break
    end
  end

  final_score = score(player_hand)
  if final_score <= 21
    puts "You scored: #{final_score}"
  else
    puts "You busted with: #{final_score}"
  end
end

run_game
