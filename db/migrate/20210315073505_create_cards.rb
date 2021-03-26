class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name,          null: false
      t.text :memo
      t.integer :position
      t.references :list,      null: false, foreign_key: true

      t.timestamps
    end
  end
end
