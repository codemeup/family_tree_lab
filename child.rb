require_relative 'grandparent'
require_relative 'parent'

class Child < Parent
  attr_accessor :name, :age, :sex, :favColor 
  @@colors = ["pink", "magenta", "lilac", "pistachio", "baby blue", "turquoise"]
  def initialize(name, age, sex)
    super(name, age, sex)
    @@favColor = @@colors.sample
    @@children += 1
    @@grandchildren +=1
  end

  def self.growUp
    @age +=1
    p self #p prints out the inspect version of the element so all the details of that element
  end

  def talk(text=nil)
    if @age > 2
      puts "#{text} @favColors"
    else 
      print "Wahhh!"
      "Wahhh!"
    end
  end


  def self.colors
    @@colors
  end

  # def self.show_fave_colors
  #   fave_colors = []
  #   @@favColors.each do |value|
  #   colors = {
  #     favColors: value.favColors
  #    }
  #   fave_colors << colors
  # end
  # fave_colors
  # end


end

child = Child.new("ruby",1,"female")
puts child
p child



