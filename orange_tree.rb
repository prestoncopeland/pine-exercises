# Preston Copeland
# July 5, 2013
# Tealeaf course 1
# Pine's 'How to Program', ch. 13

# Orange tree. Make an OrangeTree class that has a height method that returns its height and a one_year_passes method that,
# when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in
# a year), and after some number of years (again, your call) the tree should die. For the first few years, it should not
# produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees...whatever
# you think makes the most sense. And, of course, you should be able to count_the_oranges (which returns the number of oranges
# on the tree) and pick_an_orange (which reduces the @orange_count by 1 and returns a string telling you how delicious the
# orange was, or else it just tells you that there are no more oranges to pick this year). Make sure any oranges you don’t
# pick one year fall off before the next year.

class OrangeTree

  @@trees_in_grove = 0

  attr_accessor :height, :alive, :age, :number_of_oranges, :diseased

  def initialize
    @height = 0
    @alive = true
    @age = 0
    @number_of_oranges = 0
    @diseased = false

    @@trees_in_grove +=1

  end

  def one_year_passes
    if(alive)
      @height +=2 if(@age.between?(1,5))
      @height += 1 if @age > 5
      @age += 1
      @number_of_oranges = 5 if(@age.between?(3,7) && !@diseased)
      @number_of_oranges = 10 if(@age >7 && !@diseased)
      @alive = false if(@age>25)
      @diseased = true if( (rand(30)+1)%27 == 0 )
    end
  end

  def pick_an_orange
    if(@number_of_oranges>0 && !@diseased)
      @number_of_oranges -= 1
      puts "That orange was delicious!"
    else
      puts "No oranges to be had, I'm afraid!"
    end
  end

end


