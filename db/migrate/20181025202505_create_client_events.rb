class CreateClientEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :client_events do |t|
      t.references :event, foreign_key: true
      t.references :client, foreign_key: true
      t.references :payment_method, foreign_key: true
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
