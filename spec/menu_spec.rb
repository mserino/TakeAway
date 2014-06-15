require 'menu'

describe Menu do
	let(:menu) { Menu.new }
	let(:burger) { Dish.new }

	it 'is empty when initialized' do
		expect(menu.items).to eq []
	end

	it 'can add a dish' do
		burger = Dish.new('Burger', 5.0)
		menu.add(burger)
		expect(menu.items).to eq [{name: 'Burger', price: 5.0}]
	end

	it 'can display menu' do
		burger = Dish.new('Burger', 5.0)
		chicken = Dish.new('Chicken', 3.0)
		menu.add(burger)
		menu.add(chicken)
		expect(menu.display_menu).to eq "1. Burger, £5.0\n2. Chicken, £3.0\n"
	end

end