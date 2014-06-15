require_relative 'sms'

class Order
	include Sms

	attr_reader :total

	def initialize
		@total = 0
	end

	def prices
		@prices ||= []
	end

	def place_order dish, quantity
		prices << dish.price * quantity
		calculate_total
	end

	def calculate_total
		@total = prices.inject(:+)
	end

	def current_time
		Time.now
	end

	def checkout input
		if input == total
			time = current_time + (60*60)
			message = "Thank you. The total of you order is £#{@total}, and it will be delivered around #{time.hour}:#{time.min}"
			puts message
			send_text(message)
		else
			return "The total is incorrect, please try again"
		end
	end
end