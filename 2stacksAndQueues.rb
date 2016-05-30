# Stacks & Queues: Explain the difference between a stack and a queue. Write a Ruby class called Stack and another Ruby class called Queue. Each class should have two instance methods `add` and `remove` to add an element to the stack or queue or to remove an element from the stack or queue. Make sure that each class behaves properly as per definitions of stacks and queues


class Stack

  def initialize(array)
     @array = array
  end

  def add #Adds to the top of the stack
    puts "What would you like to add ontop of the stack?"
    @array << gets.chomp
    puts "This is your stack: #{@array}"
  end

  def remove #Takes from the top of the stack
    puts "You have removed #{@array.pop} and you have #{@array} left in your stack and #{@array[-1]} will be removed next."
  end

end

class Queue

  def initialize(array)
    @array = array
  end

  def add #Add to the top of the stack(last in queue)
    puts "What would you like to add to the queue?"
    @array << gets.chomp
    puts "This is your queue: #{@array}"
  end

  def remove #Removed from the bottom of the stack (first in queue)
    puts "You have removed #{@array.shift} and you have #{@array} left in your queue and #{@array[0]} will be removed next."
  end

end
