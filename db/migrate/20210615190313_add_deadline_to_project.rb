class AddDeadlineToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects , :deadline , :datetime
  end
end
