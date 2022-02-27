class AddVisibleToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :visible, :boolean, default: false
  end
end
