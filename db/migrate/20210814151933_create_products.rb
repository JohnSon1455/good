class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :money
      t.text :content
      t.boolean :is_online

      t.timestamps
    end
  end
end
