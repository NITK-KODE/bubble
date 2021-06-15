class DeleteForeignKey < ActiveRecord::Migration[6.1]
  def change
    remove_reference :members, :project, foreign_key: true
  end
end
