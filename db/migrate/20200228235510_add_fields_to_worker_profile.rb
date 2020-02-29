class AddFieldsToWorkerProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :worker_profiles, :city, :string
    add_column :worker_profiles, :country, :string
    add_column :worker_profiles, :number, :integer
  end
end
