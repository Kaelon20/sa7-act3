

puts "Welcome to the Adventure Game!"
puts "You have 0 points."

total_score = 0

choice = gets

while choice != 'exit' 

    puts "Choose a room (1-3) to enter or 'exit' to end the game:"

    choice = gets

    case choice
    when '1', '2', '3'      

        room_number = choice
        points = case room_number
               when 1
                 5
               when 2
                 10
               when 3
                 15
               end
        total_score += points
        puts "You entered Room #{room_number} and earned #{points} points."
      when 'exit'
        break
    else
      puts "Invalid choice! Please enter a valid room number or 'exit' to end the game."
    end
    

    puts "Total score: #{total_score}"
  end
  
  puts "Game over! You collected a total of #{total_score} points."



end