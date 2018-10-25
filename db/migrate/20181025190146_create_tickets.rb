class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :description
      t.string :value

      t.timestamps
    end
  end
end
