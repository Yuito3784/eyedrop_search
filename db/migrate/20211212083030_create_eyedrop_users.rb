class CreateEyedropUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :eyedrop_users do |t|
      t.references :eyedrops, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
