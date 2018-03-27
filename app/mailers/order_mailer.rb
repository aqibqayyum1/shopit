class OrderMailer < ApplicationMailer
  default from: 'aqib.qayyum@gems.techverx.com'

 	def confirmation_email(user, subject)
	  	@email = user.email
  		mail(from: 'aqib.qayyum@gems.techverx.com',
         to: @email,
         subject: subject)
  end
end