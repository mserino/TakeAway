require 'order'

describe Order do
	let(:order) { Order.new }
	let(:burger) { Dish.new('Burger', 5.0) }
	let(:chicken) { Dish.new('Chicken', 4.0) }

	it 'is empty when initialized' do
		expect(order.prices).to eq []
	end

	it 'can place a new order' do
		order.place_order(burger, 2)
		expect(order.prices).to eq [10.0]
	end

	it 'when a new item is added, the price list is updated' do
		order.place_order(burger, 2)
		order.place_order(chicken, 1)
		expect(order.prices).to eq [10.0, 4.0]
	end

	it 'the total amount is 0 when initialized' do
		expect(order.total).to eq 0
	end

	it 'should be able to calculate the total amount' do
		order.place_order(burger, 2)
		order.place_order(chicken, 1)
		expect(order.calculate_total).to eq 14
	end
	
end