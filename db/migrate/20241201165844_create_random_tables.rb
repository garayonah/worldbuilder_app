class CreateRandomTables < ActiveRecord::Migration[8.0]
  def change
    create_table :random_tables do |t|
      t.string :name, null: false
      t.string :description
      t.integer :die

      t.timestamps
    end
  end
end
