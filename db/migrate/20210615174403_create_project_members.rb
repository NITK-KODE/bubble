class CreateProjectMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :project_members do |t|
      t.belongs_to :members , foreign_key:true
      t.belongs_to :projects , foreign_key:true
      t.timestamps
    end
  end
end
