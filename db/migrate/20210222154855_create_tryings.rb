class CreateTryings < ActiveRecord::Migration[6.0]
  def change
    create_table :tryings do |t|
      t.integer :one
      t.string :two
      t.boolean :three

      t.timestamps
    end
  end
end
