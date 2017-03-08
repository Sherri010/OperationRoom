class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|

      t.timestamps
      t.belongs_to :developer
      t.belongs_to :project
    end
  end
end
