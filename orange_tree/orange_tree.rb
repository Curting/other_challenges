=begin

Objective:

Make an OrangeTree class. It should have a height method which returns its height, and a 
oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows 
taller (however much you think an orange tree should grow in a year), and after some number 
of years (again, your call) the tree should die.

For the first few years, it should not produce fruit, but after a while it should, and I 
guess that older trees produce more each year than younger trees... whatever you think makes 
most sense. And, of course, you should be able to countTheOranges (which returns the number 
of oranges on the tree), and pickAnOrange (which reduces the @orangecount by one and returns 
a string telling you how delicious the orange was, or else it just tells you that there are 
no more oranges to pick this year).

Make sure that any oranges you don't pick one year fall off before the next year.

Source: https://pine.fm/LearnToProgram/chap_09.html	

=end

class OrangeTree
  attr_reader :height
  attr_reader :age
  attr_reader :orangeCount
  
  def initialize(height=0, age=0, orangeCount=0)
    @height = height
    @age = age
    @orangeCount = orangeCount
    puts "A new Orange Tree has been born."
  end
  
  def height
    puts "I'm #{@height}cm tall!"
  end
  
  def oneYearPasses
    puts "One year passes..."
    @age += 1
    @height += 10
    @orangeCount = 0

    if @age > 2
    	@orangeCount = @age * 5
    elsif @age > 6
    	puts "Your tree is dead. Sorry!"
    	
    else
    	@orangeCount = 0
    end
  end
  
  def countTheOranges
    puts "Your orange tree has #{@orangeCount} oranges!"
  end
  
  def pickAnOrange
    puts "How many oranges would you like to pick?"
    amount = gets.chomp!.to_i
    
    if amount == 1 && amount <= @orangeCount
      puts "You picked an orange and it tasted like heaven!"
      @orangeCount -= amount
      puts "Your tree has #{@orangeCount} oranges left."
    elsif amount > 1 && amount <= @orangeCount
      puts "You picked #{amount} oranges and they tasted heavenly!"
      @orangeCount -= amount
      puts "Your tree has #{@orangeCount} oranges left."
    elsif amount > @orangeCount
      puts "Your orange tree doesn't have that many oranges :-("
    end
  end
end

littleOrangeTree = OrangeTree.new
