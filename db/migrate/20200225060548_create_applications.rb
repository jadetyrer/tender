class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.references :worker, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
