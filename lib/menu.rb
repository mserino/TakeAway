class Menu

	def items
		@items ||= []
	end

	def add dish
		items << {name: dish.name, price: dish.price}
	end

	def display_menu
		items.map.with_index do |item, index|
			"#{index+1}. #{item[:name]}, £#{item[:price]}\n"
		end.join
	end
end