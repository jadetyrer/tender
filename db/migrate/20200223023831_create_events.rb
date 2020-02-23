class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :external_link
      t.string :contact_email
      t.text :description

      t.timestamps
    end
  end
end
