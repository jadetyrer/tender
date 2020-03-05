class AddAdditionalInformationToPosition < ActiveRecord::Migration[6.0]
  def change
    add_column :positions, :additional_information, :text
  end
end
