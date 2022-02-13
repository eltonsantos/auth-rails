class AddApprovedToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :approved, :boolean
  end
end
