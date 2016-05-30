# Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.

module Testing
  def greetings
    puts 'hello'
  end
end

class In
  include Testing
end

In.new.greetings #=> Returns 'hello'
In.greetings #=> NoMethodError: undefined method 'greetings' for In:Class

#For "include, the module and its method is avaiable at an instance of a class or to a specific object in the class. Thus, when I initiated a .new, I was able to apply the module on the class.
class Ex
  extend Testing
end

Ex.new.greetings #=> NoMethodError: undefined method 'greetings' for
Ex.greetings #=> Returns 'hello'

#For extend, the module and its method is available at the class level and cannot be applied to specific instance of the class.
