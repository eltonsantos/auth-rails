class AddNoteToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :note, :string
  end
end
