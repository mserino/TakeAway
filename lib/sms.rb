require 'twilio-ruby'
require 'bundler/setup'

module Sms

	TWILIO_ACCOUNT_SID = `echo $TWILIO_ACCOUNT_SID`
	TWILIO_AUTH_TOKEN = `echo $TWILIO_AUTH_TOKEN`
	TWILIO_FROM = `echo $TWILIO_FROM`
	TWILIO_TO = `echo $TWILIO_TO`

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