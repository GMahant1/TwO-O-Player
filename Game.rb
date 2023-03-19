class Game 
  attr_accessor :player1, :player2, :turn

  def initialize
    @player1 = 3
    @player2 = 3
    @turn = 1
  end

  def start 
    puts "Player 1: #{player1}/3 lives  |  Player 2: #{player2}/3 lives."
    question = Question.new(turn)
    if !question.start
      current_lives(turn)
    end
    update_turn(turn)
  end
  
  def end_game
    puts "Player 1: #{player1}/3 lives  |  Player 2: #{player2}/3 lives."
    puts "-- Game Over --"
    puts "Good bye!"
    exit(0)
  end 
  
  def current_lives(turn)
    if turn == 1
      @player1 -= 1
    else
      @player2 -= 1
    end
    if @player1 == 0 || @player2 == 0
      end_game
    end
  end
  
  def update_turn(turn)
    if turn == 1
      @turn = 2
    else 
      @turn = 1
    end
    start
  end
  
end  
