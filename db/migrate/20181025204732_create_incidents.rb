class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.string :description
      t.references :client_event, foreign_key: true

      t.timestamps
    end
  end
end
