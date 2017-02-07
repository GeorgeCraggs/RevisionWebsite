class AddColourToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :page_colour, :string
  end
end
