class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.text :name
      t.text :desc
      t.text :url
      t.date :deadline

      t.timestamps
    end
  end
end
