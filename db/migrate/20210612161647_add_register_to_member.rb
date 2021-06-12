class AddRegisterToMember < ActiveRecord::Migration[6.1]
  def change
    add_column :members , :email , :string 
    add_column :members , :registered , :boolean , default: false
  end
end
