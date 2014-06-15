class Dish

	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def show_dish
		"#{name}, #{price.to_f}"
	end

end