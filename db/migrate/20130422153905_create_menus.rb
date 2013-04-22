class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name

      t.timestamps
    end
    create_table :menus_pages, :id => false do |t|
    	t.integer :menu_id
    	t.integer :page_id
    end
  end
end
