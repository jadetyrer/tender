class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :external_link
      t.string :contact_email
      t.text :description
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
  end
end
