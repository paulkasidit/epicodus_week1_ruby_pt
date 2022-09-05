#Business Logic
class Game 
  
  attr_reader(:chances)
  attr_accessor(:player1,:player2,:player1_log,:player2_log, :player1_points,:player2_points) 

  def initialize(player1, player2) 
    @player1 = player1  
    @player2 = player2 
    @player1_log = [] 
    @player2_log = [] 
    @player1_points = 0 
    @player2_points = 0 
    @chances = 3 
  end

  def intializeGame() 

    while @chances > 0
      puts "\n"
      puts "---#{chances} TURNS LEFT---"
      puts "\n"
      puts "#{player1}, choose your object:" 
      player1_object = gets.chomp 
      push_player_array(player1_object, player1_log)
      puts "\n"
      puts "#{player2}, choose your object:" 
      player2_object = gets.chomp
      push_player_array(player2_object, player2_log) 
      compare_choices(player1_log, player2_log) 
      @player1_log.pop()
      @player2_log.pop()
      puts "\n"
      puts "\n"
      puts "--Current Summary--"
      puts "#{player1}: #{player1_points} points"
      puts "#{player2}: #{player2_points} points"
      puts "Chances left:#{chances}"
      puts "--END SUMMARY--"
      puts "\n"
      puts "\n"
    end 

    if @player1_points > @player2_points 
        puts "\n"
        puts "\n"
        puts "\n"
        puts "--RESULTS-"
        puts "\n"
        puts "#{player1} you win!" 
        puts "\n"
      elsif @player1_points < @player2_points
        puts "\n"
        puts "\n"
        puts "\n"
        puts "--RESULTS-"
        puts "\n"
        puts "#{player2} you win!" 
        puts "\n"
      else 
        puts "\n"
        puts "\n"
        puts "\n"
        puts "--RESULTS-"
        puts "\n"
        puts "It's a tie today!"
        puts "\n"
    end

  end    

  def push_player_array(game_object, player_log) 
    #possible game_object(s) "Rock" "Paper" "Scissors" 
    if game_object == "Rock" ||  game_object == "Paper" || game_object == "Scissor"
      player_log.push(game_object)
    else
      puts "Invalid Entry"
    end
  end

  def compare_choices(player_array_1,player_array_2) 

    if player_array_1.include?("Paper") && player_array_2.include?("Rock")
      @player1_points += 1 
    elsif player_array_1.include?("Rock") && player_array_2.include?("Scissor")
      @player1_points += 1  
    elsif player_array_1.include?("Scissor") && player_array_2.include?("Rock")
      @player1_points += 1  
    elsif player_array_1.include?("Scissor") && player_array_2.include?("Paper")
      @player1_points += 1  
    elsif player_array_1 == player_array_2  
      @player1_points += 0 
      @player2_points += 0 
    else
      @player2_points += 1 
    end
    @chances -= 1  
  end


  def decrement_chances() 
    @chances - 1
  end 

  def increment_points(player_points) 
    player_points += 1  
  end 


end

#UI Logic
puts "Welcome please enter your name on the prompt" 
puts "\n"
puts "Please type in exactly \"Rock\" \"Paper\" or  \"Scissor\" on the prompt "
puts "\n"
puts "--Your turn will be VOIDED if you do not format your input correctly.--"
puts "\n"
puts "Enter name for player 1:"  
name1 = gets.chomp
puts "\n"
puts "Enter name for player 2:"
name2 = gets.chomp

game1 = Game.new(name1,name2) 
game1.intializeGame()


