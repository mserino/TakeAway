require 'twilio-ruby'

class TakeAway

	TWILIO_ACCOUNT_SID = `echo $TWILIO_ACCOUNT_SID`
	TWILIO_AUTH_TOKEN = `echo $TWILIO_AUTH_TOKEN`
	TWILIO_FROM = `echo $TWILIO_FROM`
	TWILIO_TO = `echo $TWILIO_TO`

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

	def check_total
		price_list.inject(:+)
	end

	def current_time
		Time.now
	end

	def send_order
		time = current_time + (60*60)
		message = "Thank you. The total of you order is £#{@total}, and it will be delivered around #{time.hour}:#{time.min}"
		puts message
		send_text(message)
	end

	def send_text(message)
		account_sid = TWILIO_ACCOUNT_SID
		auth_token = TWILIO_AUTH_TOKEN 

		@client = Twilio::REST::Client.new account_sid, auth_token 

		@client.account.messages.create({
			:from => TWILIO_FROM,  
			:to => TWILIO_TO,
			:body => message
		})
	end

end