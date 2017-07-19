=begin
Write a program so that you can interact with your baby dragon. You should be able to enter commands like  
feed and walk, and have those methods be called on your dragon. Of course, since what you are inputting are 
just strings, you will have to have some sort of method dispatch, where your program checks which string was 
entered, and then calls the appropriate method.

Source: https://pine.fm/LearnToProgram/chap_09.html
=end

class BabyDragon
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def interact
    puts "Dragon: Would you like to feed or walk me?"
    input = gets.chomp!
    case input.downcase
      when "feed" then feed
      when "walk" then walk
      else 
        puts "Dragon: I don't understand that?"
        interact
    end
  end
  
  private
  def feed
    puts "Dragon: Yay! Food time!"
    puts "Dragon: I'm fed up now. No more food, thanks."
  end
  
  def walk
    puts "Dragon: What about running instead? *Runs away*"
    puts "You hear a voice in the distance: 'Walking are for humaaaans...'"
  end
end

charlie = BabyDragon.new("Charlie")