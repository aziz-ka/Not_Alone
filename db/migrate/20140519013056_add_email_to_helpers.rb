class AddEmailToHelpers < ActiveRecord::Migration
  def change
    add_column :helpers, :email, :string
  end
end
