class Grandparent
	attr_accessor :name, :age, :sex
	@@grandchildren = 0
	@@family = []

	def initialize(name, age, sex)
		@name = name
		@age = age
		@sex = sex
		@@grandchildren +=1
		@@family << self
	end

	def self.family
		@@family
	end

	def self.grandchildren
		@@grandchildren
	end

	def self.show_family
		fam_arr = []
		@@family.each do |value|
		fam_member = {
		 	relation: value.class.name,
		 	name: value.name,
		 	age: value.age
		 }
		fam_arr << fam_member
	end
	fam_arr

	end

end

