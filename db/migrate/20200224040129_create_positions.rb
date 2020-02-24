class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :position_type
      t.float :rate
      t.text :requirements
      t.string :hours
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
