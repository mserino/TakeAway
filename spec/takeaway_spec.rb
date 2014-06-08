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

	it 'checks if the total amount is correct' do
		expect(takeaway.check_total).to eq takeaway.total
	end

	# it 'raises an error if the total amount is incorrect' do
	# 	price_list = [25]
	# 	total = [20]
	# 	expect(takeaway.check_total).to raise_error RuntimeError
	# 	end

	it 'sends a text message when the order is sent' do
		allow(takeaway).to receive(:send_order) { "Thank you. The order has been send." }
		expect(takeaway.send_order).to eq "Thank you. The order has been send."
	end

end