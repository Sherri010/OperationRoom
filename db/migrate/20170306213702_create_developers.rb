class CreateDevelopers < ActiveRecord::Migration[5.0]
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :years_experience

      t.timestamps
    end
  end
end
