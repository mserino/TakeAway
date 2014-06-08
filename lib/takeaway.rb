class TakeAway

	def initialize
		@menu = {burger: 5, coke: 4, pizza: 2}
		@price_list ||= []
		@total = 0
	end

	def menu
		@menu
	end

	def price_list
		@price_list
	end

	def place_order(dish, quantity)
		price_list << menu[dish] * quantity
		total
	end

	def dish
		@dish
	end

	def quantity
		@quantity
	end

	def total
		@total = price_list.inject(:+)
	end

end