class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :content
      t.string :image
      t.integer :page_id

      t.timestamps
    end
  end
end
