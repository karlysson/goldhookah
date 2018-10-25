class AddFieldsToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :birth, :string
    add_column :clients, :blocked, :string
  end
end
