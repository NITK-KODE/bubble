class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    drop_table :messages
    create_table :messages do |t|
      t.references :member, null: false, foreign_key: true
      t.string :body , null: false
      t.timestamps
    end
  end
end
