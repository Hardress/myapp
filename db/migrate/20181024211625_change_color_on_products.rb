class ChangeColorOnProducts < ActiveRecord::Migration[5.2]
  def change
    unless column_exists? :products, :color
      add_column :products, :color, :string
    end
  end
end
