require 'dish'

describe Dish do
	let(:dish) { Dish.new }

	it 'has a name' do
		dish = Dish.new('Burger', 5.0)
		expect(dish.name).to eq 'Burger'
	end

	it 'has a price' do
		dish = Dish.new('Burger', 5.0)
		expect(dish.price).to eq 5.0
	end

	it 'can show the name and the price' do
		dish = Dish.new('Burger', 5.0)
		expect(dish.show_dish).to eq 'Burger, 5.0'
	end
end