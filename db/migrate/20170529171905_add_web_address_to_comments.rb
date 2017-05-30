class AddWebAddressToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :web_address, :string
  end
end
