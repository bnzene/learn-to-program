# baby dragon
class Dragon
  def initialize name
    puts "What do you want to call your baby dragon?"
    name = gets.chomp
    puts "#{name} is born."
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "What do you want to do now? Feed, walk, toss, rock or put to bed?"
    instructions = gets.chomp
    command instructions
  end

  def feed
    puts "You feed #{name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{name} to bed."
    @asleep = true
    3.times do
      if @asleep
          passage_of_time
      end
      if @asleep
        puts "#{name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{name} up into the air."
    puts "She giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{name} gently."
    @asleep = true
    puts "She briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

private

  def hungry?
    @stuff_in_belly.to_i <= 2
  end

  def poopy?
    @stuff_in_intestine.to_i >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0

      @stuff_in_belly =  @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
    if @asleep
      @asleep = false
      puts "#{name} wakes up suddenly!"
    end
    puts "#{name} is starving! In desperation, #{@name} ate YOU!"
    exit
    end

    if @stuff_in_intestine.to_i >= 10
      @stuff_in_intestine.to_i = 0
      puts "Whoops! #{name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "#{name} wakes up suddenly!"
      end
      puts "#{name}'s stomach grumbles...'"
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "#{name} wakes up suddenly!"
      end
      puts "#{name} does the potty dance..."
    end
  end

def command command
    if command == 'exit'
      exit
    elsif command == 'feed'
      pet.feed
    elsif command == 'walk'
      pet.walk
    elsif command == 'toss'
      pet.toss
    elsif command == 'rock'
      pet.rock
    elsif command == 'put to bed'
      pet.put_to_bed
    else
      puts "Huh? How about a real command?"
    end
  end
end
pet = Dragon.new 'name'
