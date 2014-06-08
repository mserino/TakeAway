require 'takeaway'

describe TakeAway do

	let(:takeaway) { TakeAway.new }

	it 'has a menu on initialization' do
		menu = {burger: 5, coke: 4, pizza: 2}
		expect(takeaway.menu).to eq menu
	end

	it 'can place orders' do
		takeaway.place_order(:burger, 5)
		expect(takeaway.price_list).to eq [25]
	end

	it 'when a new item is added, the price list is updated' do
		takeaway.place_order(:burger, 2)
		expect(takeaway.price_list).to eq [10]
		takeaway.place_order(:pizza, 3)
		expect(takeaway.price_list).to eq [10, 6]
	end

	it 'should be able to calculate the total amount' do
		takeaway.place_order(:burger, 2)
		takeaway.place_order(:coke, 2)
		takeaway.total
		expect(takeaway.total).to eq 18
	end

	it 'when a new item is added, the total is updated' do
		takeaway.place_order(:burger, 2)
		expect(takeaway.total).to eq 10
		takeaway.place_order(:pizza, 2)
		expect(takeaway.total).to eq 14
	end

end