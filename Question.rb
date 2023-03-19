class Question
  attr_accessor :turn

  def initialize(turn)
    @turn = turn
  end
  
  def start
    num1 = rand(1...20)
    num2 = rand(1...20)

    puts "New Turn"
    puts "Player #{turn}: What is #{num1} plus #{num2}?"
    print "|-->"

    answer = $stdin.gets.chomp.to_i

    if answer == num1 + num2
      puts "-- Correct --"
      true
    else
      puts "-- Wrong --"
      false
    end 
  end
  
end  