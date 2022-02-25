class CreatePolyActions < ActiveRecord::Migration[6.1]
  def change
    create_table :poly_actions do |t|
      t.references :resourceable, polymorphic: true, null: false
      t.string :observation
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
