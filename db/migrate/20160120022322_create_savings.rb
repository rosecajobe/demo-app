class CreateSavings < ActiveRecord::Migration
  def change
    create_table :savings do |t|
      t.string :name
      t.integer :value

      t.timestamps null: false
    end
  end
end
