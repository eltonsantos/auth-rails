class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :admin, default: false
      t.boolean :supervisor, default: false
      t.boolean :collaborator, default: true

      t.timestamps
    end
  end
end
