class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_reference :members, :project, foreign_key: true

  end
end
