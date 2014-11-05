require_relative 'grandparent'

class Parent < Grandparent
  @@children = 0
	def initialize(name, age, sex)
		super(name, age, sex)
		@@children +=1
	end
  def self.children
    @@children
  end

end



