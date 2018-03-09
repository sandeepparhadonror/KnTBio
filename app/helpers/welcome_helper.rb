module WelcomeHelper

	def active_class(link_path)
		current_page?(link_path) ? "active" : ""
	end

	def headline_text
		if current_page?(about_path)
			'About Us'
		elsif current_page?(services_path)
			'Services'
		elsif current_page?(portfolio_path)
			'Portfolio'
		else	
			'Contact Us'
		end	
	end

	
end
