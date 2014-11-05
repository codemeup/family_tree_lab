require_relative 'grandparent'
require_relative 'parent'

class Child < Parent
  @@favColors = []
  def initialize(name, age, sex)
    super(name, age, sex)
    @@favColors.sample
  end

  def self.growUp
    @age +=1
  end

  def talk(text=nil)
    if @age > 2
      puts "#{text} @favColors"
    else 
      puts "Wahhh!"
    end
  end


  # def self.favColors
  #   @@favColors
  # end

  def self.show_fave_colors
    fave_colors = []
    @@favColors.each do |value|
    colors = {
      favColors: value.favColors
     }
    fave_colors << colors
  end
  fave_colors
  end


end






