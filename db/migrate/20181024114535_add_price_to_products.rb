class AddPriceToProducts < ActiveRecord::Migration[5.2]
  def up
    unless column_exists? :products, :price
      add_column :products, :price, :integer
    end
  end
  def down
    remove_column :products, :price, :integer
  end
end
