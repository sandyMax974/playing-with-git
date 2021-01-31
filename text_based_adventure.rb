# tell the user starting position
# tell the user their direction choices
# ask for user's direction choice
# if user chose 'right' output 'There is a goblin! You're dead...'
# if user chose 'left' output 'There is a werewolf! You're dead...'
# repeat

puts "Welcome adventurer!"
sleep(1)
puts "Choose which direction to step in. You can go right, left or forward"

steps = 0

while true do 

  user_choice = gets.chomp

  if user_choice =='right' 
      
      puts "There is a goblin! You're dead..."
      break

   elsif user_choice == 'left'	
      
      puts "There is a werewolf! You're dead..."
      break

   elsif user_choice == 'forward' 
      
      puts "Good job! You're still alive!"
      steps += 1
        
        if steps == 2
          puts "Congratulation! You've exited the dungeon in one piece!" 
          break
        else
          puts "Take another step"
        end

    else
      puts "Choose which direction to step in. You can go right, left or forward"
  
  end

end 


