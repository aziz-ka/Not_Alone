class AddEmailToSeniors < ActiveRecord::Migration
  def change
    add_column :seniors, :email, :string
  end
end
