class CreateEyedrops < ActiveRecord::Migration[6.1]
  def change
    create_table :eyedrops do |t|
      t.string  :name, null: false
      t.text  :effect, null: false  
      t.text  :having, null: false
      t.text  :email, null: false, unique: true 
      t.timestamps
    end
  end
end
