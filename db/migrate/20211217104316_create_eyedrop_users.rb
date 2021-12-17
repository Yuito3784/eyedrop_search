class CreateEyedropUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :eyedrop_users do |t|
      t.references :eyedrop, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
