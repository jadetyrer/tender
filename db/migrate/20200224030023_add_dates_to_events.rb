class AddDatesToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :date_from, :date
    add_column :events, :date_to, :date
  end
end
