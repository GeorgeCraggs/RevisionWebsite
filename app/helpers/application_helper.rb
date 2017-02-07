module ApplicationHelper
	def descendants_nav
		presenter = Refinery::Pages::MenuPresenter.new(descendants_pages, self)
		presenter.dom_id = 'topic_menu'
		presenter.to_html
	end

	def descendants_pages
		Refinery::Menu.new @page.descendants
	end
end
