class Die
  def initialize # called automatically when new is used to create a new instance of the class - new must come first
    roll
  end
  def cheat n
    if n > 0 && n < 7
      @number_showing = n
    else
      @number_showing = roll
    end
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end

puts Die.new.cheat 7 # new is a class method
puts Die.new.showing
# new has to be a class method; can't call it on an object until object has been created
# initialize has to be an instance method, as you are intializing that object
# you need access to the instance variables - can't do that from a class method as
# wouldn't know which instance to get the instance variables from
# you define the instance method initialize, and you call the class method new, and not the other way around.
