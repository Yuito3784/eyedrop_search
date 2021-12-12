class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :age, null: false
      t.string :sex, null: false
      t.float :screentime, null: false
      t.string :contact, null: false
      t.text :symptom, null: false
      t.text :point, null: false

      t.timestamps
    end
  end
end
