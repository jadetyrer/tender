class CreateWorkerProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :worker_profiles do |t|
      t.references :worker, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.text :bio

      t.timestamps
    end
  end
end
