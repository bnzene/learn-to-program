class OrangeTree
  def initialize name
    @name = name
    @age = 0
    @height = 1
    @orange_count = 0
    puts "You planted an orange sapling!"
  end

  def one_year_passes
    if @age > 14
      puts "#{@name}, withered with age and bent under the weight of the world, snuffs it."
      exit
    end
    @age = @age + 1
    @height = @height + 1
    puts "One year passes."
  end

  def how_old
    puts "#{@name} is #{@age} years old."
    one_year_passes
  end

  def how_tall
    puts "#{@name} is #{@height}m tall."
    one_year_passes
  end

  def pick_an_orange
    if @age > 3
      @orange_count = @age * 3 - (@age + 7)
      puts "You pick and eat one of #{@name}'s juicy children. #{@name} remains impassive."
      @orange_count = @orange_count - 1
    else
      @orange_count = 0
      puts "#{@name} hasn't got any oranges yet. Come back in a few years."
    end
  end

end

m = OrangeTree.new 'Steve'
m.how_old
m.how_tall
m.pick_an_orange
m.how_tall
m.how_old
m.pick_an_orange
m.pick_an_orange
m.how_tall
m.how_old
m.pick_an_orange
m.how_old
m.pick_an_orange
m.pick_an_orange
m.how_tall
m.how_old
m.pick_an_orange
m.how_tall
m.how_old
m.pick_an_orange
m.pick_an_orange
m.how_tall
m.how_old
m.how_tall
m.how_old
m.pick_an_orange
m.pick_an_orange
m.how_tall
m.how_old
