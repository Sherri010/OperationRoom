class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.text :first_name
      t.text :last_name

      t.timestamps
    end
  end
end
