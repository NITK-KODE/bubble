class Modify < ActiveRecord::Migration[6.1]
  def change
    
   drop_table :project_members
    create_table :project_members do |t|
      t.belongs_to :member , foreign_key:true
      t.belongs_to :project , foreign_key:true
      t.timestamps
    end
  end
  
end
