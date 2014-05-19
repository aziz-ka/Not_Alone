class AddAddressToHelpers < ActiveRecord::Migration
  def change
    add_column :helpers, :address, :string
  end
end
