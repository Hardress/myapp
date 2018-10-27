class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    unless table_exists? :products
      create_table :products do |t|
        t.string :name
        t.text :description
        t.string :image_url
        t.timestamps
      end
    end
  end
end
