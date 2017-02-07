Refinery::Admin::PagesController.prepend(
	Module.new do
		def permitted_page_params
			super << :page_colour
		end
	end
)
