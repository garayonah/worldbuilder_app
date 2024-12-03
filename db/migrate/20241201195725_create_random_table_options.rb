class CreateRandomTableOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :random_table_options do |t|
      t.references :random_table, null: false, foreign_key: true
      t.string :text, null: false
      t.integer :option_start, null: false
      t.integer :option_end

      t.timestamps
    end
  end
end
