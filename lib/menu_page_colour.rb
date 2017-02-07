module Refinery
	class MenuItem
		attr_accessor :page_colour
	end

	Refinery::Page.class_eval do
		def to_refinery_menu_item
			{
				:id => id,
				:lft => lft,
				:depth => depth,
				:menu_match => menu_match,
				:parent_id => parent_id,
				:rgt => rgt,
				:title => menu_title.presence || title.presence,
				:type => self.class.name,
				:url => url,
				:page_colour => page_colour
			}
		end
	end
end
