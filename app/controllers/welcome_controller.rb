class WelcomeController < ApplicationController

	layout "welcome"

	#https://launchschool.com/blog/handling-emails-in-rails
	def contact_form
		@contact = ContactForm.new(contact_form_params)
		if @contact.save!
			flash[:success] = "Thanks for contactigng Us. We riching to you shortly"
			redirect_to contact_path
		else
			render "new"
		end	
	end

	private

	def contact_form_params
		params.permit(:name, :email, :subject, :contact_number, :message)	
	end
end
