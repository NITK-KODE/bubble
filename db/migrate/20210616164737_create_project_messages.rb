class CreateProjectMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :project_messages do |t|
      t.belongs_to :project , foreign_key: true
      t.belongs_to :message , foreign_key: true
      t.timestamps
    end
  end
end
