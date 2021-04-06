class CreateOutputs < ActiveRecord::Migration[6.0]
  def change
    create_table :outputs do |t|
      t.text :title,             null: false
      t.text :description,       null: false
      t.references :user,        null: false, foreign_key: true

      t.timestamps
    end
  end
end
