class AddRelationshipStatusToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :relationship_status, :integer
  end
end
