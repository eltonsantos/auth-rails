class AddJustifyToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :justify, :string, default: ""
  end
end
