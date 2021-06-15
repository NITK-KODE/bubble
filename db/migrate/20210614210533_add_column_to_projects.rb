class AddColumnToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects , :project_type , :integer , default:0
  end
end
