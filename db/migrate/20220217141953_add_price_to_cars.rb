class AddPriceToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :price, :decimal, precision: 8, scale: 2
  end
end
